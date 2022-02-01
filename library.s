.data
	.global conversion_string

conversion_string: .string "0000000000",0

.text
	.global read_character
	.global output_character
	.global output_string
	.global read_string
	.global uart_init
	.global gpio_init
	.global interrupt_init
	.global timer_init
	.global read_from_push_btn
	.global illuminate_RGB_LED
	.global num_digits
	.global int2str
	.global str2int
	.global ptr_to_string

ptr_to_string: .word conversion_string
U0FR:  .equ 0x18			; UART0 Flag Register

;character received in r0
read_character:
	STMFD SP!,{lr, r4-r11}	; Store register lr on stack
	MOV r1, #0xC000			; Store lower half of UART
	MOVT r1, #0x4000			; Store upper half of UART
	LDRB r0, [r1]			; r0 is output register, r1 is data register of UART
	AND r0, r0, #0xFF		; Anding for data in first 8 bits
 	LDMFD sp!, {lr, r4-r11}
	mov pc, lr

;output memory address location in r0
output_character:
	STMFD SP!,{lr, r4-r11}	; Store register lr on stack
transmitter_check:
	MOV r1, #0xC000
	MOVT r1, #0x4000
	LDR r2, [r1, #U0FR]	; stores value that is in the flag register.
	MOV r3, #0x20			; TxFF bit is the 5th one
	AND r4, r2, r3			; isolate TxFF bit
	CMP r4, #0				; 1=transmitter is full, 0=transmitter is not full
	BNE transmitter_check
	STRB r0, [r1]			; store back onto the "register" in memory
 	LDMFD sp!, {lr, r4-r11}
	mov pc, lr

; Parameter r0 is address location of string to output
output_string:
	STMFD SP!,{lr, r4-r11}	; Store register lr on stack
	STMFD SP!,{r0}
	MOV r5, r0		; Save string pointer to r5, since it calls output_character
output_str_loop:
	LDRB r0, [r5]	; load a character
	CMP r0, #0			; if null character, exit loop
	BEQ output_str_fin
	BL output_character	; print character
	ADD r5, r5, #1
	B output_str_loop
output_str_fin:
	LDMFD sp!, {r0}
 	LDMFD sp!, {lr, r4-r11}
	mov pc, lr



;Input string address is in r0
read_string:
    STMFD SP!,{lr, r4-r11}    ; Store register lr on stack
    MOV r1, r0

read_string_loop:
    STMFD SP!,{r1}    ; Stores that pushes value to stack
    BL read_character        ; Get first character from input and puts it into r0
    LDMFD sp!, {r1}            ; Pop off memory location to r1
    STRB r0, [r1]            ; Stores first character
    ADD r1, r1, #1            ; Increment memory location
    CMP r0, #13                ; 13 is the enter key
    BNE read_string_loop    ; if not enter, get next character
                            ; else, program finishes
    SUB r1, r1, #1    ; After loop stops, mem location r1 is going to be after the string
                    ; and the last character will be ENTER, so I have to backtrack and
                    ; overwrite the enter with a null terminator
    MOV r0, #0        ; Put '\0' into r0
    STRB r0, [r1]    ; Save null terminator as last character

    ; might need to decrement memory space for backspace (8 in dec)
     LDMFD sp!, {lr, r4-r11}
    mov pc, lr

uart_init:
	STMFD SP!,{lr, r4-r11}	; Store register lr on stack

	; Provide clock to UART0
	MOV r0, #0xE618
	MOVT r0, #0x400F	; make r0 = 0x400FE618
	ldr r1, [r0]
	ORR r1, r1, #0x1
	str r1, [r0]

	; Enable clock to PortA
	MOV r0, #0xE608
	MOVT r0, #0x400F	; make r0 = 0x400FE608
	ldr r1, [r0]
	ORR r1, r1, #0x1
	str r1, [r0]

	; Disable UART0 Control
	MOV r0, #0xC030
	MOVT r0, #0x4000	; make r0 = 0x4000C030
	ldr r1, [r0]
	MOV r2, #0			; r2 = 0 - 2 = 0b11111...0
	SUB r2, r2, #2
	AND r1, r1, r2
	;ORR r1, r1, #0x0		; Weird serial_init uses | 0x0, may need to change
	str r1, [r0]

	;Set UART0_IBRD_R for 115,200 baud
	MOV r0, #0xC024
	MOVT r0, #0x4000	; make r0 = 0x4000C024
	ldr r1, [r0]
	ORR r1, r1, #0x8
	str r1, [r0]

	;Set UART0_FBRD_R for 115,200 baud
	MOV r0, #0xC028
	MOVT r0, #0x4000	; make r0 = 0x4000C028
	ldr r1, [r0]
	ORR r1, r1, #44
	str r1, [r0]

	;Use System Clock
	MOV r0, #0xCFC8
	MOVT r0, #0x4000	; make r0 = 0x4000CFC8
	ldr r1, [r0]		; get value at r0
	;pg903 There are 4 bits for modes and 0x0 = System clock
	;ORR r1, r1, #0

	MOV r2, #0			; r2 = 0 - 16 = 0b11111...0000
	SUB r2, r2, #16
	AND r1, r1, r2		; r1 & 11111...0000
	str r1, [r0]

	;Use 8-bit word length, 1 stop bit, no parity
	MOV r0, #0xC02C
	MOVT r0, #0x4000	; make r0 = 0x4000C02C
	ldr r1, [r0]
	ORR r1, r1, #0x60
	str r1, [r0]

	;Enable UART0 Control
	MOV r0, #0xC030
	MOVT r0, #0x4000	; make r0 = 0x4000C030
	ldr r1, [r0]
	ORR r1, r1, #0x300
	ORR r1, r1, #0x001
	str r1, [r0]

	;Make PA0 and PA1 as Digital Ports
	MOV r0, #0x451C
	MOVT r0, #0x4000	; make r0 = 0x4000451C
	ldr r1, [r0]
	ORR r1, r1, #0x03
	str r1, [r0]

	;Change PA0, PA1 to Use an Alternate Function
	MOV r0, #0x4420
	MOVT r0, #0x4000	; make r0 = 0x4000451C
	ldr r1, [r0]
	ORR r1, r1, #0x03
	str r1, [r0]

	;Configure PA0 and PA1 for UART
	MOV r0, #0x452C
	MOVT r0, #0x4000	; make r0 = 0x4000452C
	ldr r1, [r0]
	ORR r1, r1, #0x11
	str r1, [r0]


 	LDMFD sp!, {lr, r4-r11}
	mov pc, lr

gpio_init:
	STMFD SP!,{lr, r4-r11}

	;GPIO run mode clock gating control RCGCGPIO (pg.340)
	MOV r0, #0xE608
	MOVT r0, #0x400F
	LDR r1, [r0]
	ORR r1, r1, #0x20 ; set 1 to bit 5 to turn on clock for port F
	STR r1, [r0]

	;APB base GPIODIR (pg 663)
	MOV r0, #0x5000
	MOVT r0, #0x4002
	LDR r1, [r0, #0x400]
	MVN r2, #0x10; set 111...101111
	AND r1, r1, r2 ; set 0 to bit 4 to set as input
	STR r1, [r0, #0x400]

	LDRB r1, [r0, #0x400]
	ORR r1, #0xE	; RBG -> 1110b -> 0xE
	STRB r1, [r0, #0x400]

	;GPIO alternate function select GPIOAFSEL (pg.672)
	MOV r0, #0x5000
	MOVT r0, #0x4002
	LDR r1, [r0, #0x420]
	MVN r2, #0x10; set 111...101111
	AND r1, r1, r2 ; set 0 to bit 4 to set GPIO function
	STR r1, [r0, #0x420]

	;pg673-675 is GPIO drive-select, which I have no idea what mA to set and class notes ignore so I'm assuming
	;default 2mA is okay

	;GPIO Pull-up Select (GPIOPUR) (pg. 678)
	MOV r0, #0x5000
	MOVT r0, #0x4002
	LDR r1, [r0, #0x510]
	ORR r1, r1, #0x10 ; set 1 to bit 4 to enable pull-up resistor for pin 4
	STR r1, [r0, #0x510]

	;GPIO Digital Enable (GPIODEN) (pg. 683)
	MOV r0, #0x5000
	MOVT r0, #0x4002
	LDR r1, [r0, #0x51C]
	ORR r1, r1, #0x10 ; set 1 to bit 4 to enable digital functions
	STR r1, [r0, #0x51C]

	LDRB r1, [r0, #0x51C]
	ORR r1, #0xE	; RBG -> 1110b -> 0xE
	STRB r1, [r0, #0x51C]

	LDMFD sp!, {lr, r4-r11}
	MOV pc, lr

interrupt_init:
	STMFD SP!, {r0-r12,lr}		; save lr on stack

	; Set the Receive Interrupt Mask (RXIM) bit in the UART Interrupt Mask Register
	MOV r0, #0xC038
	movt r0, #0x4000
	ldr r1, [r0]
	ORR r1, r1, #0x10
	str r1, [r0]

	; Configure Processor to allow UART and GPIO Port F Pin 4 (SW1) to Interrupt Processor
	; Interrupt 0-31 Set Enable Register (EN0)
	MOV r0, #0xE100
	MOVT r0, #0xE000
	ldr r1, [r0]
	MOV r2, #0x0020
	MOVT r2, #0x4008	; ORing with this value will set the 30th (GPIOF) and 5th (UART0) interrupts at once
	ORR r1, r1, r2
	str r1, [r0]

	MVN r1, #0x10		; We set bit 4 to 0 for the next two steps

	; Configure Interrupt for GPIO to be edge-sensitive
	; Uses GPIOIS Register (Offset 0x404)
	MOV r0, #0x5404
	MOVT r0, #0x4002
	ldr r2, [r0]
	AND r2, r2, r1		; sets bit 4 to 0 (edge-sensitive)
	str r2, [r0]

	; Configure GPIO Interrupt Both Edges to be disabled for Pin 4
	; When disabled, GPIOIEV decides whether to interrupt on rising/falling edge
	MOV r0, #0x5408
	MOVT r0, #0x4002
	ldr r2, [r0]
	AND r2, r2, r1		; sets bit 4 to 0 (GPIOEV controls edge-sensitivity)
	str r2, [r0]

	; Configure GPIO Interrupt Event Register to only trigger on button release
	MOV r0, #0x540C
	MOVT r0, #0x4002
	ldr r2, [r0]
	ORR r2, #0x10		; sets bit 4 to 1 (rising edge/button release)
	str r2, [r0]

	; Set the Receive Interrupt Mask for GPIO Port F Pin 4 (SW1) to 1 through GPIOIM Register
	; Offset for GPIOIM is 0x410
	MOV r0, #0x5410
	MOVT r0, #0x4002
	ldr r1, [r0]
	ORR r1, r1, #0x10	; sets bit 4 to 1 (Pin 4)
	str r1, [r0]

	LDMFD SP!, {r0-r12,lr}
	MOV pc, lr

timer_init:
	STMFD SP!, {r0-r12,lr}		; save lr on stack

	MOV r0, #0xE604
	movt r0, #0x400F
	ldr r1, [r0]
	ORR r1, r1, #1
	str r1, [r0]

	MOV r0, #0x000C
	movt r0, #0x4003
	ldr r1, [r0]
	BIC r1, r1, #1
	str r1, [r0]

	MOV r0, #0x0000
	movt r0, #0x4003
	ldr r1, [r0]
	BIC r1, r1, #7
	str r1, [r0]

	MOV r0, #0x0004
	MOVT r0, #0x4003
	ldr r1, [r0]
	BIC r1, r1, #1
	ORR r1, r1, #2
	str r1, [r0]

	MOV r0, #0x0028
	movt r0, #0x4003
	MOV r1, #0x2400
	movt r1, #0xF4
	str r1, [r0]

	MOV r0, #0x0018
	movt r0, #0x4003
	ldr r1, [r0]
	ORR r1, r1, #1
	str r1, [r0]

	MOV r0, #0x000C
	movt r0, #0x4003
	ldr r1, [r0]
	ORR r1, r1, #1
	str r1, [r0]

	LDMFD SP!, {r0-r12,lr}
	MOV pc, lr

read_from_push_btn:
    STMFD SP!,{lr, r4-r11}    ; Store register lr on stack
    MOV r0, #0x5000
    MOVT r0, #0x4002
    LDR r1, [r0, #0x3FC] ; class notes say this is the right offset for data
    AND r1, r1, #0x10 ; We only want the number in pin 4
    MOV r0, #0    ;by default, not pressed is 0
    cmp r1, #0x0
    BNE not_pressed
    MOV r0, #1 ; if it is pressed, the data returned will be 0 and r0 should be 1
not_pressed:
    LDMFD sp!, {lr, r4-r11}
    MOV pc, lr



; Input parameter is r0 with the mapping below
illuminate_RGB_LED:
	; its actually GBR
	; (001) 1=red
	; (010) 2=blue
	; (011) 3=purple
	; (100) 4=green
	; (101) 5=yellow
	; (110) 6=cyan
	; (111) 7=white
	STMFD SP!,{lr, r4-r11}	; Store register lr on stack
	LSL r0, r0, #1
	MOV r1, #0x53FC
	MOVT r1, #0x4002
	MOV r3, #0
	STRB r3, [r1]
	STRB r0, [r1]
	LDMFD sp!, {lr, r4-r11}
	MOV pc, lr


; Parameter is r0 and return register is r0
; Finds the number of digits in the integer stored in r0
num_digits:
	STMFD r13!, {r14, r4-r11}
	MOV r2, #0				; Load initial number_of_digits
	MOV r1, #10				; Load 10 for division
num_digits_not_zero:		; Set label for looping
	SDIV r0, r0, r1			; r0 = r0 / r1
	ADD r2, r2, #1			; r2 = number_of_digits++
	CMP r0, #0
	BNE num_digits_not_zero	; if r0 != 0, loop
	MOV r0, r2				; return register r0 = number_of_digits
	LDMFD r13!, {r14, r4-r11}
	MOV pc, lr


; Parameter is r0 for integer, r1 for pointer to string, r2 for digit length
; Result is string stored in ptr_to_string
; Takes an input integer, a memory location, and the integer digit length and
; puts the value into the memory location as an ASCII string
int2str:
	STMFD r13!, {r14, r4-r11}
	ADD r1, r1, r2			; Add number of digits to pointer
	MOV r3, #0				; add NULL value to register
	STRB r3, [r1]			; Store NULL to r1
int2str_loop:				; I moved this back 1 from the flowchart for easier understanding and simpler code
	SUB r1, r1, #1			; Subtract 1 from pointer, r1= r1 - 1
	MOV r3, #10				; move 10 to register
	SDIV r4, r0, r3			; quotient r4 = integer i / 10
	MUL r5, r4, r3			; product r5 = r4 * 10
	SUB r6, r0, r5			; digit = i - p, current digit = integer - product (essentially find remainder at 1's place)
	ADD r7, r6, #0x30		; ascii digit = digit + 0x30
	STRB r7, [r1]			; stores ascii digit to r1
	MOV r0, r4				; integer i = quotient, r0 = r4
	CMP r0, #0				; i==0?
	BNE int2str_loop
	LDMFD r13!, {r14, r4-r11}
	MOV pc, lr



; Parameter is ptr_to_string passed through r0 and return register is r0
; Finds the value of the integer represented by the string
str2int:
	STMFD r13!, {r14, r4-r11}
	MOV r1, r0
	MOV r0, #0				; Load initial i
next_char:
	LDRB r2, [r1]			; load first byte from r1 address into r2 as char
	CMP r2, #0				; Is char equal to 0?
	BEQ str2int_fin		; if char == 0, go to end
	MOV r3, #10				; load 10 into r3 so I can multiply i*10
	MUL r0, r0, r3			; multiply i = i*10
	SUB r2, r2, #0x30		; char = char - 48 (ascii) aka '0'
	ADD r0, r0, r2			; Add digit to integer
	ADD r1, r1, #1			; r1 = r1 + 1 increment pointer by 1
	B next_char				; branch without condition
str2int_fin:
	LDMFD r13!, {r14, r4-r11}
	MOV pc, lr

	.end
