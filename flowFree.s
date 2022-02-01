	.data

timer:	.string "Time: 0000",0
newpage: .string 12,0
newline: .string 10,13,0

ptr_to_ptr: .string 0,0,0,0 ; terrible name. Saves the address location of the pointer of whichever board we randomize to use
board:  .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x06,0x01,0x20,0x01,0x20,0x02,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x05,0x06,0x02,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x03,0x20,0x20,0x20,0x04,0xFF,10,13
        .string 0xFF,0x20,0x20,0x07,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x03,0x20,0x04,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x05,0x20,0x07,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board0: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x05,0x01,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x07,0x04,0x20,0x04,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x02,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x06,0x03,0x20,0x02,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x03,0x06,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x07,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x05,0x01,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board1: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x06,0x01,0x20,0x01,0x20,0x02,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x05,0x06,0x02,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x03,0x20,0x20,0x20,0x04,0xFF,10,13
        .string 0xFF,0x20,0x20,0x07,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x03,0x20,0x04,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x05,0x20,0x07,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board2: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x02,0x20,0x06,0xFF,10,13
        .string 0xFF,0x20,0x06,0x20,0x20,0x20,0x20,0x07,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x03,0x01,0x20,0x20,0x01,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x04,0x20,0x20,0x04,0xFF,10,13
        .string 0xFF,0x20,0x07,0x03,0x05,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x02,0x05,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board3: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x04,0x05,0x06,0x20,0x20,0x01,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x04,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x07,0x20,0x06,0x03,0x20,0x20,0xFF,10,13
        .string 0xFF,0x05,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x03,0x02,0x20,0x02,0x07,0x01,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board4: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x01,0x20,0xFF,10,13
        .string 0xFF,0x02,0x01,0x07,0x02,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x06,0x05,0x20,0x20,0x20,0x20,0x03,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x03,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x04,0x20,0xFF,10,13
        .string 0xFF,0x06,0x05,0x04,0x20,0x20,0x20,0x07,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board5: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x01,0xFF,10,13
        .string 0xFF,0x20,0x05,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x04,0x20,0x20,0x05,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x07,0x03,0x20,0x04,0x07,0x20,0xFF,10,13
        .string 0xFF,0x20,0x06,0x20,0x20,0x20,0x01,0x20,0xFF,10,13
        .string 0xFF,0x20,0x02,0x20,0x20,0x20,0x03,0x02,0xFF,10,13
        .string 0xFF,0x20,0x20,0x06,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board6: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x02,0x20,0x20,0x20,0x03,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x03,0x20,0x20,0x04,0x01,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x05,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x07,0x06,0xFF,10,13
        .string 0xFF,0x05,0x01,0x02,0x04,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x07,0x06,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

board7: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x01,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x02,0x01,0x04,0x05,0x20,0xFF,10,13
        .string 0xFF,0x02,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x04,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x06,0x07,0xFF,10,13
        .string 0xFF,0x05,0x06,0x03,0x20,0x20,0x03,0x20,0xFF,10,13
        .string 0xFF,0x07,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

        ;l28
board8: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x05,0x20,0x02,0x20,0x20,0x04,0x20,0xFF,10,13
        .string 0xFF,0x03,0x20,0x20,0x05,0x20,0x01,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x03,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x01,0x02,0x20,0x20,0xFF,10,13
        .string 0xFF,0x06,0x07,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x06,0x20,0xFF,10,13
        .string 0xFF,0x07,0x04,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

		;l30
board9: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x07,0x20,0x02,0x20,0x02,0x04,0x20,0xFF,10,13
        .string 0xFF,0x03,0x20,0x05,0x20,0x20,0x06,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x05,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x06,0x20,0x04,0xFF,10,13
        .string 0xFF,0x07,0x01,0x03,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x01,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

		;l121
boardA: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x06,0x20,0x20,0x20,0x05,0x07,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x01,0x20,0x20,0x05,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x04,0x20,0xFF,10,13
        .string 0xFF,0x06,0x03,0x20,0x01,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x04,0x20,0x20,0x03,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x02,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x02,0x07,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

        ;l125
boardB: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x05,0x07,0x02,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x06,0x20,0x01,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x06,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x01,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x03,0x20,0x07,0x03,0x04,0x02,0xFF,10,13
        .string 0xFF,0x05,0x20,0x20,0x20,0x20,0x20,0x04,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

        ;l128
boardC: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x07,0x20,0x07,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x06,0x05,0x01,0x04,0x20,0xFF,10,13
        .string 0xFF,0x02,0x04,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x06,0x20,0x20,0x05,0x03,0x20,0x20,0xFF,10,13
        .string 0xFF,0x03,0x20,0x20,0x20,0x20,0x01,0x02,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

        ;l135
boardD: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x01,0x20,0x01,0x07,0x04,0x06,0x02,0xFF,10,13
        .string 0xFF,0x05,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x03,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x04,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x20,0x07,0x06,0x20,0x05,0x20,0xFF,10,13
        .string 0xFF,0x03,0x20,0x20,0x20,0x20,0x20,0x02,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

        ;l143
boardE: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x03,0x02,0x20,0x20,0x20,0x20,0x02,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x01,0xFF,10,13
        .string 0xFF,0x05,0x03,0x20,0x20,0x20,0x20,0x07,0xFF,10,13
        .string 0xFF,0x20,0x06,0x20,0x07,0x20,0x20,0x01,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x20,0x05,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x06,0x20,0x20,0x04,0xFF,10,13
        .string 0xFF,0x20,0x20,0x20,0x20,0x20,0x04,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

        ;l119
boardF: .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13
        .string 0xFF,0x20,0x04,0x20,0x20,0x20,0x20,0x03,0xFF,10,13
        .string 0xFF,0x20,0x02,0x03,0x20,0x20,0x20,0x05,0xFF,10,13
        .string 0xFF,0x20,0x20,0x02,0x20,0x20,0x04,0x01,0xFF,10,13
        .string 0xFF,0x20,0x20,0x05,0x20,0x20,0x06,0x20,0xFF,10,13
        .string 0xFF,0x07,0x20,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x20,0x06,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0x07,0x01,0x20,0x20,0x20,0x20,0x20,0xFF,10,13
        .string 0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,10,13,0

; 01 0010
;     ^^^ Color
; ^^      Symbol

; Symbol Table:
; 00=O
; 01=-
; 10=+
; 11=|

; Color Table:
;
; 000=black
; 001=red
; 010=green
; 011=yellow
; 100=blue
; 101=magenta
; 110=cyan
; 111=orange(white?)


; 1111 1111 (0xFF)= X
; 0010 0000 (0x20)= Space

start_menu: .string "Press the 'f' key to start:",0
game_started: .byte 0				; 0 - not started, 1 - started

pause_menu: .string "Pause",10,13
			.string "X Resume",10,13
			.string "X Restart Current Puzzle",10,13
			.string "X New Puzzle",10,13,0
pause_flag:	.string 1,0	; 0 - unpaused; 1 - paused
pause2_flag:.string 0,0
current_option:	.string 1,0	;	1 - option1, 2 - option2, 3 - option3
cursor_option1: .string 27,"[2;1H",0
cursor_option2: .string 27,"[3;1H",0
cursor_option3: .string 27,"[4;1H",0

cursor_up: .string 27,"[1A",0
cursor_down: .string 27,"[1B",0
cursor_right: .string 27,"[1C",0
cursor_left: .string 27,"[1D",0

hide_cursor: .string 27,"[?25l",0
show_cursor: .string 27,"[?25h",0

color: .string 27,"[3"                ; stores the color to be printed.
num_to_edit: .string "0m",0            ; output_board edits the first character here to the required number.
black:    .string 27,"[30m",0

start_O_pos: .string 0,0

direction: .string 4,0
; 000b - right
; 001b - down
; 010b - left
; 011b - up
; 1xxb - no movement (when player presses space on O)

current_pos: .string 27,"[07;5H",0 ;add 2 to the lines for lines completed and timer
; stores current cursor position

colors_completed_string: .string "Complete: 0/7",10,13,0
colors_completed: .string 0
; single byte where each bit represents a color that is either complete or incomplete
; bit 0=red
; bit 1=green
; bit 2=yellow
; bit 3=blue
; bit 4=magenta
; bit 5=cyan
; bit 6=white

current_color: .string 0,0

	.text
	.global read_character
	.global output_character
	.global output_string
	.global read_string
	.global uart_init
	.global gpio_init
	.global timer_init
	.global read_from_push_btn
	.global illuminate_RGB_LED
	.global num_digits
	.global int2str
	.global str2int
	.global ptr_to_string
	.global UART0_Handler
	.global Switch_Handler
	.global Timer_Handler
	.global interrupt_init
	.global flowFree

ptr_to_ptr_to_ptr: .word ptr_to_ptr
ptr_to_board: .word  board
ptr_to_board0: .word board0
ptr_to_board1: .word board1
ptr_to_board2: .word board2
ptr_to_board3: .word board3
ptr_to_board4: .word board4
ptr_to_board5: .word board5
ptr_to_board6: .word board6
ptr_to_board7: .word board7
ptr_to_board8: .word board8
ptr_to_board9: .word board9
ptr_to_boardA: .word boardA
ptr_to_boardB: .word boardB
ptr_to_boardC: .word boardC
ptr_to_boardD: .word boardD
ptr_to_boardE: .word boardE
ptr_to_boardF: .word boardF
ptr_to_direction: .word direction
ptr_to_cursor_up: .word cursor_up
ptr_to_cursor_down: .word cursor_down
ptr_to_cursor_right: .word cursor_right
ptr_to_cursor_left: .word cursor_left
ptr_to_show_cursor: .word show_cursor
ptr_to_hide_cursor: .word hide_cursor
ptr_to_timer: .word timer
ptr_to_newline: .word newline
ptr_to_newpage: .word newpage
ptr_to_black:     .word black
ptr_to_num: .word num_to_edit
ptr_to_color: .word color
ptr_to_current_pos: .word current_pos
ptr_to_current_color: .word current_color
ptr_to_colors_completed: .word colors_completed
ptr_to_colors_completed_string: .word colors_completed_string
ptr_to_start_menu: .word start_menu
ptr_to_game_started: .word game_started
ptr_to_pause_menu: .word pause_menu
ptr_to_pause_flag: .word pause_flag
ptr_to_pause2_flag: .word pause2_flag
ptr_to_cursor_option1: .word cursor_option1
ptr_to_cursor_option2: .word cursor_option2
ptr_to_cursor_option3: .word cursor_option3
ptr_to_current_option: .word current_option
ptr_to_start_O_pos: .word start_O_pos

flowFree:
    STMFD SP!, {r0-r12,lr}        ; save lr on stack

	;initialize all the handlers and interrupts
    BL uart_init
    BL gpio_init
    BL interrupt_init
    BL timer_init

	;print out start page for time randomization
	ldr r0, ptr_to_black
	bl output_string
	ldr r0, ptr_to_newpage
	bl output_string
	ldr r0, ptr_to_start_menu
	bl output_string


	; Loop at start menu until key is pressed an game_started flag is set
start_game_loop:
	ldr r0, ptr_to_game_started
	ldrb r1, [r0]
	cmp r1, #0
	beq start_game_loop

	; once game starts, clear screen
	ldr r0, ptr_to_newpage
	bl output_string

	; ensure the game pause flag is not set
	ldr r0, ptr_to_pause_flag
	mov r1, #0
	strb r1, [r0]

	bl randomizer

	; main game loop
	; almost all the logic is implemented in handlers or subroutines
loop:
    B loop

    LDMFD SP!, {r0-r12,lr}
    MOV pc, lr

; uart handler deals with all actions concerning the keyboard and PUTTY.
; This includes starting the game, pause menu operations, and normal game operations caused by keyboard input.
UART0_Handler:
    STMFD SP!, {r0-r12,lr}        ; save lr on stack

    MOV r0, #0xC044
    MOVT r0, #0x4000        ; address of UARTICR (Interrupt Clear Register) for UART0

    LDR r2, [r0]        ; Load current value
    ORR r2, #0x10       ; Sets bit 4 to 0
    STR r2, [r0]        ; Store back onto memory

 ; get character entered and store onto memory
    BL read_character
    STRB r0, [r4]

    ldr r2, ptr_to_game_started    ; check the flag to see if the game as started yet
    ldrb r1, [r2]
    cmp r1, #0    ; if game hasn't started, go to check_start_game
    beq check_start_game
    b uart_handler_game_started    ; else, allow keyboard operations other than 'f'

check_start_game:
    cmp r0, #0x66 ; if 'f' is pressed, start game
    ittt eq
    ldreq r2, ptr_to_game_started
    moveq r1, #1
    strbeq r1, [r2]    ; set game started flag to true
    b uart_end

uart_handler_game_started:
    ldr r2, ptr_to_pause_flag    ; check the pause flag to see if game is paused
    ldrb r1, [r2]
    cmp r1, #0        ; if unpaused, skip to normal operation
    beq uart0_handler_normal_operation

	; else the code continues, which means game is paused and pause menu is displayed right now
	; Can only move up, down, select, or resume game in start menu
	; Resume game from pushbutton is handled in switch_handler

	cmp r0, #0x20	; if spacebar pressed
	BEQ select_current_option

	cmp r0, #0x77	; if w (up) was entered
	beq move_up_option
	cmp r0, #0x73	; if s (down) was entered
	beq move_down_option

	; this is a safeguard in case uart is triggered but pass all the above conditions
	; pretty sure that just means someone hits a key that's doesn't do anything in pause menu
	b uart_end

; If the spacebar is pressed, whatever option the cursor is currently on should be selected
; Option 1 - unpause the game, same thing as hitting the pushbutton again
; Option 2 - Restart the current game
; Option 3 - Start a new game with a new random board
select_current_option:

	; Get the current option that the cursor is on from memory - corresponds to cursor position
	ldr r0, ptr_to_current_option
	ldrb r4, [r0]	; 1 - resume, 2 - restart current puzzle, 3 - new puzzle

	; all options will unpause in the end, so this just skips to the unpausing part
	cmp r4, #1
	beq select_current_option_end

	; option 2
	; The game that is played on has a different location in memory than the other 16
	; playable board starting positions.
	; We load the initial starting board that we selected in randomizer into r0 and then
	; use subroutine mem_copy to copy byte by byte into the playing board.
	cmp r4, #2
	itttt eq
	ldreq r1, ptr_to_ptr_to_ptr	; pointer to address of the board type currently being played
	ldreq r0, [r1]
	bleq mem_copy	; mem_copy copies the board at r0 into the current playing board, effectively clearing/restarting the game
	bleq reset_timer; resets the timer so the game can start fresh

	;option 3
	; The game is restarted entirely with a newly randomly selected board.
	; Use randomizer to select new board and copy it to the playing board.
	cmp r4, #3
	itt eq
	bleq randomizer ; no input. Selects a new board based on time and copies it into playable board memory
	bleq reset_timer ; resets the timer so the game can start fresh

	ldr r0, ptr_to_colors_completed ; clears any connected colored lines since the board has been reset
	mov r1, #0
	str r1, [r0]

select_current_option_end:
	ldr r0, ptr_to_pause_flag
	mov r1, #0
	strb r1, [r0]	; make pause flag 0, which means the game is not paused
	b uart_end

; Resets the timer number to 0
reset_timer:
	stmfd sp!, {r0-r12,lr}
	ldr r0, ptr_to_timer
	add r1, r0, #6		; Add 6 offset to the timer for the number part of memory
	mov r0, #0			; 0 will be the int since we are resetting the timer
	push{r0,r1}
	bl num_digits		; r0 now has num_digits
	mov r2, r0
	pop{r0,r1}
    ;r0 has int, r1 has pointer to string, r2 has num_digits
    bl int2str
    ldmfd sp!, {r0-r12,lr}
    mov pc, lr

; Game is paused, and 'w' key has been pressed. The cursor will either move up 1 option
; or it will remain in the same place if it's already at option 1, which is the top option.
move_up_option:
	ldr r0, ptr_to_current_option
	ldrb r1, [r0]
	cmp r1, #1	;if option 1, don't move
	itt eq
	ldreq r0, ptr_to_cursor_option1
	beq uart_end

	sub r1, r1, #1	; decrease option by 1 (move up)
	; depending on the option, sets r0 = the command to move the cursor to the corresponding option
	cmp r1, #1
	it eq
	ldreq r0, ptr_to_cursor_option1
	cmp r1, #2
	it eq
	ldreq r0, ptr_to_cursor_option2
	cmp r1, #3	; unnecessary but whatever
	it eq
	ldreq r0, ptr_to_cursor_option3

move_up_option_end:
	push{r1}	;r1 gets overwritten by output_string, so we want to preserve the option number
	bl output_string	;output the new cursor position
	pop{r1}
	ldr r0, ptr_to_current_option ; save new option number into memory to match new cursor position
	strb r1, [r0]

	b uart_end

; Game is puased, and 's' key has been pressed. The cursor will either move down 1 option
; or it will remain in the same place if it's already at option 3, which is the bottom option.
move_down_option:
	ldr r0, ptr_to_current_option
	ldrb r1, [r0]
	cmp r1, #3	; if option 3, don't move
	itt eq
	ldreq r0, ptr_to_cursor_option3
	bleq output_string
	beq uart_end

	add r1, r1, #1	; increase option by 1 (move down), then output cursor to corresponding option
	; depending on the option,  sets r0 = the command to move the cursor to the corresponding option
	cmp r1, #1 ; unnecessary but whatever
	it eq
	ldreq r0, ptr_to_cursor_option1
	cmp r1, #2
	it eq
	ldreq r0, ptr_to_cursor_option2
	cmp r1, #3
	it eq
	ldreq r0, ptr_to_cursor_option3

move_down_option_end:
	push{r1}	;r1 gets overwritten by output_string, so we want to preserve the option number
	bl output_string	;output the new cursor position
	pop{r1}
	ldr r0, ptr_to_current_option ; save new option number into memory to match new cursor position
	strb r1, [r0]

	b uart_end

; The uart_handler jumps here if the game is unpaused.
; There is a subroutine for each valid button press. If the input is invalid,
; skip to the end of the handler and don't do anything.
uart0_handler_normal_operation:
    ; check if spacebar was entered
    CMP r0, #0x20
    BEQ spacebar
    ; check if w (up) was entered
    CMP r0, #0x77
    BEQ move_up
    ;check if s (down) was entered
    cmp r0, #0x73
    beq move_down
    ;check if d (right) was entered
    cmp r0, #0x64
    beq move_right
    ;check if a (left) was entered
    cmp r0, #0x61
    beq move_left

	b uart_end

spacebar:

    BL get_position
    MOV r1, r0
    ldr r0, ptr_to_board
    ADD r0, r0, r1		; get to current position
    LDRB r0, [r0]		; store current character at r0

    AND r1, r0, #110000b	; get bits 4-5
    LSR r1, #4				; set em as LSB
    CMP r1, #0				; check if is an O
    BEQ check_O				; store color

    MOV r1, #0
    LDR r0, ptr_to_current_color	; if its not an O, remove the current color
    STRB r1, [r0]					; stores a 0 at color

    BL output_RGB					; turns off LED
    B uart_end

check_O:

; r0 stores current character

    LDR r1, ptr_to_current_color
	LDRB r2, [r1]				; r2 stores current color
	AND r3, r0, #001111b		; r3 stores character's color
	CMP r2, r3					; compare the colors
	BNE store_color				; if not equal just store new color

	LDR r4, ptr_to_direction
	LDRB r4, [r4]
	CMP r4, #4			; if player hasnt moved yet after pressing spacebar, dont increase number of lines
	BEQ store_color

	MOV r5, r0
	BL get_position
	LDR r4, ptr_to_start_O_pos
	LDRB r4, [r4]
	CMP r0, r4
	ITT EQ
	MOVEQ r0, r5
	BEQ store_color
	MOV r0, r5

	; now we have checked if it's the same color, and if the player has moved before pressing space again

	SUB r3, r3, #1		; reduce color by 1 for colors_completed (white=7 in original table, 6 here)

	LDR r4, ptr_to_colors_completed
	LDRB r5, [r4]
	MOV r2, #1
	LSL r2, r3			; left shift 1 according to color. If it's red, this will shift 0 times, white would shift 6 times.
	ORR r5, r5, r2		; set corresponding bit to 1
	STRB r5, [r4]		; store new colors completed in memory

    MOV r1, #0
    LDR r0, ptr_to_current_color	; finally, change color back to black since we finished a line
    STRB r1, [r0]					; stores a 0 at color

    BL output_RGB					; turns off LED
    B newprint						; NEEDED. Since number of lines completed changes.

store_color:

	AND r1, r0, #001111b	; get bits 0-3
	MOV r0, r1
	BL del_lines
	LDR r0, ptr_to_current_color
	LDRB r2, [r0]
	CMP r1, r2				; if same color
	IT EQ					; turn off LED
	MOVEQ r1, #0
	STRB r1, [r0]			; store current color in memory

	LDR r2, ptr_to_direction
	MOV r3, #4
	STRB r3, [r2]		; reset direction when player presses spacebar

	BL output_RGB
	CMP r1, #0
	ITE EQ
	BEQ newprint
	BNE uart_end

move_up:

; Requirement 12
	BL get_position		; get offset to current position in r0
	SUB r0, r0, #11		; get offset to character above
	LDR r1, ptr_to_board
	LDRB r0, [r1, r0]	; get character at next position
	CMP r0, #0xFF		; if at boundary, dont move
	BEQ uart_end
	AND r2, r0, #00001111b	; get color
	AND r3, r0, #11110000b	; get symbol
	ldr r4, ptr_to_current_color
	LDRB r4, [r4]			; get current color being drawn
	CMP r4, #0
	BEQ skip_draw_up		; if not drawing currently, continue
	SUB r5, r0, r4			; character at next position - current color
	CMP r5, #0				; if subtraction gives 0, we are moving on to the same color O
	BEQ draw_up
	CMP r5, #10				; if its an O of a different color, don't draw or move
	BLT uart_end
	CMP r2, r4				; if not, compare the two colors
	BEQ uart_end			; if trynna move onto same color, exit

draw_up:
	BL get_position		; returns offset to current position in r0

	MOV r1, r0
    ldr r0, ptr_to_board
    ADD r5, r0, r1		; get to current position
    LDRB r0, [r5]		; r0 stores character at current position

	CMP r0, #0x07		; if current position is not an O, draw line/cross
	BLE skip_draw_up

; Symbol Table:
; 00=O
; 01=-
; 10=+
; 11=|

	; r5 has pointer to current position
	LDR r3, ptr_to_direction
	LDRB r2, [r3]		; store direction in r2
	CMP r2, #4			; if no movement before
	ITTT EQ
	MOVEQ r1, #110000b	; store "|" in r1
	ORREQ r4, r1, r4 	; store "|" of correct color in r4
	STRBEQ r4, [r5]		; store "|" onto board

	CMP r2, #3			; if moved up before
	ITTT EQ
	MOVEQ r1, #110000b	; store "|" in r1
	ORREQ r4, r1, r4 	; store "|" of correct color in r4
	STRBEQ r4, [r5]		; store "|" onto board

	CMP r2, #2			; if moved left before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

	CMP r2, #1			; if moved down before
	BEQ uart_end

	CMP r2, #0			; if moved right before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

skip_draw_up:
; 000b - right
; 001b - down
; 010b - left
; 011b - up
; 100b - no movement (when player presses space on O)

	MOV r2, #011b			; move "up" direction into r2
	LDR r3, ptr_to_direction
	STRB r2, [r3]			; store new direction in memory

    ldr r0, ptr_to_current_pos
    add r0, r0, #2        ; 27,"[04;4H" - first 4 is line, which is 2 bytes in from start
    ldrh r1, [r0]        ; loads 2 letters
    mov r2, #0x3430
    mov r2, #0x3031
    cmp r1, r2            ; if =10, make '10' into '09'
    ite eq
    moveq r1, #0x3930
    subne r1, r1, #0x0100        ; decrease line by 1

    strh r1, [r0]

    BL get_position			; r0 contains offset to current position
    LDR r1, ptr_to_board
    LDRB r2, [r1, r0]		; get character at new position
    AND r2, #001111b		; get color of char at new position

    LDR r1, ptr_to_current_color
    LDRB r1, [r1]			; r1 has current color being drawn
    CMP r1, #0				; if nothing being drawn
    BEQ move_up_end			; dont del

    CMP r1, r2				; compare the colors
    ITT NE					; if they're not equal
    MOVNE r0, r2			; delete all lines of color r2 (at new position)
    BLNE del_lines

; the next few lines print a '-' or '|' at the position the player just moved to.
; It checks if the new position has a space or a line of a different color.
; If so, the position is overwritten with the correct character of the current color.
    BL get_position			; r0 contains offset to current position
    LDR r2, ptr_to_board
    LDRB r3, [r2, r0]
    CMP r3, #0x07
    ITT GT
    ORRGT r1, #110000b		; set symbol to "|" at current position
    STRBGT r1, [r2, r0]		; print onto board

move_up_end:
    LDR r0, ptr_to_cursor_up
    BL output_string
    b newprint

move_down:
; Requirement 12
	BL get_position		; get offset to current position in r0
	ADD r0, r0, #11		; get offset to character above
	LDR r1, ptr_to_board
	LDRB r0, [r1, r0]	; get character at next position
	CMP r0, #0xFF		; if at boundary, dont move
	BEQ uart_end
	AND r2, r0, #001111b	; get color
	AND r3, r0, #110000b	; get symbol
	ldr r4, ptr_to_current_color
	LDRB r4, [r4]			; get current color being drawn
	CMP r4, #0
	BEQ skip_draw_down		; if not drawing currently, continue
	SUB r5, r0, r4			; character at next position - current color
	CMP r5, #0				; if subtraction gives 0, we are moving on to the same color O
	BEQ draw_down
	CMP r5, #10				; if its an O of a different color, don't draw or move
	BLT uart_end
	CMP r2, r4				; if not, compare the two colors
	BEQ uart_end			; if trynna move onto same color, exit

draw_down:
	BL get_position		; returns offset to current position in r0
	MOV r1, r0
    ldr r0, ptr_to_board
    ADD r5, r0, r1		; get to current position
    LDRB r0, [r5]		; r0 stores character at current position

	CMP r0, #0x07		; if current position is not an O, draw line/cross
	BLE skip_draw_down

; Symbol Table:
; 00=O
; 01=-
; 10=+
; 11=|

	; r5 has pointer to current position
	LDR r3, ptr_to_direction
	LDRB r2, [r3]		; store direction in r2
	CMP r2, #4			; if no movement before
	ITTT EQ
	MOVEQ r1, #110000b	; store "|" in r1
	ORREQ r4, r1, r4 	; store "|" of correct color in r4
	STRBEQ r4, [r5]		; store "|" onto board

	CMP r2, #3			; if moved up before
	BEQ uart_end

	CMP r2, #2			; if moved left before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

	CMP r2, #1			; if moved down before
	ITTT EQ
	MOVEQ r1, #110000b	; store "|" in r1
	ORREQ r4, r1, r4 	; store "|" of correct color in r4
	STRBEQ r4, [r5]		; store "|" onto board

	CMP r2, #0			; if moved right before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

skip_draw_down:

; 000b - right
; 001b - down
; 010b - left
; 011b - up
; 100b - no movement (when player presses space on O)

	MOV r2, #001b			; move "down" direction into r2
	LDR r3, ptr_to_direction
	STRB r2, [r3]			; store new direction in memory

    ldr r0, ptr_to_current_pos
    add r0, r0, #2        ; 27,"[04;4H" - first 4 is line, which is 2 bytes in from start
    ldrh r1, [r0]
    mov r2, #0x3031
    mov r2, #0x3930
    cmp r1, r2            ; if =9, make '09' into '10'
       ite eq
       moveq r1, #0x3031
    addne r1, r1, #0x100        ; increase line by 1
    strh r1, [r0]

    BL get_position			; r0 contains offset to current position
    LDR r1, ptr_to_board
    LDRB r2, [r1, r0]		; get character at new position
    AND r2, #001111b		; get color of char at new position

    LDR r1, ptr_to_current_color
    LDRB r1, [r1]			; r1 has current color being drawn
    CMP r1, #0				; if nothing being drawn
    BEQ move_down_end		; dont del

    CMP r1, r2				; compare the colors
    ITT NE					; if they're not equal
    MOVNE r0, r2			; delete all lines of color r2 (at new position)
    BLNE del_lines

; the next few lines print a '-' or '|' at the position the player just moved to.
; It checks if the new position has a space or a line of a different color.
; If so, the position is overwritten with the correct character of the current color.
    BL get_position			; r0 contains offset to current position
    LDR r2, ptr_to_board
    LDRB r3, [r2, r0]
    CMP r3, #0x07
    ITT GT
    ORRGT r1, #110000b		; set symbol to "|" at current position
    STRBGT r1, [r2, r0]		; print onto board

move_down_end:

    LDR r0, ptr_to_cursor_down
    BL output_string
    b newprint

move_left:

; Requirement 12
	BL get_position		; get offset to current position in r0
	SUB r0, r0, #1		; get offset to character above
	LDR r1, ptr_to_board
	LDRB r0, [r1, r0]	; get character at next position
	CMP r0, #0xFF		; if at boundary, dont move
	BEQ uart_end
	AND r2, r0, #001111b	; get color
	AND r3, r0, #110000b	; get symbol
	ldr r4, ptr_to_current_color
	LDRB r4, [r4]			; get current color being drawn
	CMP r4, #0
	BEQ skip_draw_left				; if not drawing currently, continue
	SUB r5, r0, r4			; character at next position - current color
	CMP r5, #0				; if subtraction gives 0, we are moving on to the same color O
	BEQ draw_left
	CMP r5, #10				; if its an O of a different color, don't draw or move
	BLT uart_end
	CMP r2, r4				; if not, compare the two colors
	BEQ uart_end			; if trynna move onto same color, exit

draw_left:
	BL get_position		; returns offset to current position in r0
	MOV r1, r0
    ldr r0, ptr_to_board
    ADD r5, r0, r1		; get to current position
    LDRB r0, [r5]		; r0 stores character at current position

	CMP r0, #0x07		; if current position is not an O, draw line/cross
	BLE skip_draw_left

; Symbol Table:
; 00=O
; 01=-
; 10=+
; 11=|

	; r5 has pointer to current position
	LDR r3, ptr_to_direction
	LDRB r2, [r3]		; store direction in r2
	CMP r2, #4			; if no movement before
	ITTT EQ
	MOVEQ r1, #010000b	; store "-" in r1
	ORREQ r4, r1, r4 	; store "-" of correct color in r4
	STRBEQ r4, [r5]		; store "-" onto board

	CMP r2, #3			; if moved up before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

	CMP r2, #2			; if moved left before
	ITTT EQ
	MOVEQ r1, #010000b	; store "-" in r1
	ORREQ r4, r1, r4 	; store "-" of correct color in r4
	STRBEQ r4, [r5]		; store "-" onto board

	CMP r2, #1			; if moved down before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

	CMP r2, #0			; if moved right before
	BEQ uart_end

skip_draw_left:

; 000b - right
; 001b - down
; 010b - left
; 011b - up
; 100b - no movement (when player presses space on O)

	MOV r2, #010b			; move "left" direction into r2
	LDR r3, ptr_to_direction
	STRB r2, [r3]

    ldr r0, ptr_to_current_pos
    add r0, r0, #5        ; 27,"[04;4H" - second 4 is column, which is 5 bytes in from start
    ldrb r1, [r0]
    sub r1, r1, #1        ; decrease line by 1
    strb r1, [r0]

    BL get_position			; r0 contains offset to current position
    LDR r1, ptr_to_board
    LDRB r2, [r1, r0]		; get character at new position
    AND r2, #001111b		; get color of char at new position

    LDR r1, ptr_to_current_color
    LDRB r1, [r1]			; r1 has current color being drawn
    CMP r1, #0				; if nothing being drawn
    BEQ move_left_end			; dont del

    CMP r1, r2				; compare the colors
    ITT NE					; if they're not equal
    MOVNE r0, r2			; delete all lines of color r2 (at new position)
    BLNE del_lines

; the next few lines print a '-' or '|' at the position the player just moved to.
; It checks if the new position has a space or a line of a different color.
; If so, the position is overwritten with the correct character of the current color.
    BL get_position			; r0 contains offset to current position
    LDR r2, ptr_to_board
    LDRB r3, [r2, r0]
    CMP r3, #0x07
    ITT GT
    ORRGT r1, #010000b		; set symbol to "-" at current position
    STRBGT r1, [r2, r0]		; print onto board

move_left_end:
    LDR r0, ptr_to_cursor_left	; move cursor to new position
    BL output_string
    b newprint

move_right:

; Requirement 12
	BL get_position			; get offset to current position in r0
	ADD r0, r0, #1			; get offset to character above
	LDR r1, ptr_to_board
	LDRB r0, [r1, r0]		; get character at next position
	CMP r0, #0xFF			; if at boundary, dont move
	BEQ uart_end
	AND r2, r0, #001111b	; get color
	AND r3, r0, #110000b	; get symbol
	ldr r4, ptr_to_current_color
	LDRB r4, [r4]			; get current color being drawn
	CMP r4, #0
	BEQ skip_draw_right		; if not drawing currently, continue
	SUB r5, r0, r4			; character at next position - current color
	CMP r5, #0				; if subtraction gives 0, we are moving on to the same color O
	BEQ draw_right
	CMP r5, #10				; if its an O of a different color, don't draw or move
	BLT uart_end
	CMP r2, r4				; if not, compare the two colors
	BEQ uart_end			; if trynna move onto same color, exit

draw_right:
	BL get_position		; returns offset to current position in r0
	MOV r1, r0
    ldr r0, ptr_to_board
    ADD r5, r0, r1		; get to current position
    LDRB r0, [r5]		; r0 stores character at current position

	CMP r0, #0x07		; if current position is not an O, draw line/cross
	BLE skip_draw_right

; Symbol Table:
; 00=O
; 01=-
; 10=+
; 11=|

	; r5 has pointer to current position
	LDR r3, ptr_to_direction
	LDRB r2, [r3]		; store direction in r2
	CMP r2, #4			; if no movement before
	ITTT EQ
	MOVEQ r1, #010000b	; store "-" in r1
	ORREQ r4, r1, r4 	; store "-" of correct color in r4
	STRBEQ r4, [r5]		; store "-" onto board

	CMP r2, #3			; if moved up before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

	CMP r2, #2			; if moved left before
	BEQ uart_end

	CMP r2, #1			; if moved down before
	ITTT EQ
	MOVEQ r1, #100000b	; store "+" in r1
	ORREQ r4, r1, r4 	; store "+" of correct color in r4
	STRBEQ r4, [r5]		; store "+" onto board

	CMP r2, #0			; if moved right before
	ITTT EQ
	MOVEQ r1, #010000b	; store "-" in r1
	ORREQ r4, r1, r4 	; store "-" of correct color in r4
	STRBEQ r4, [r5]		; store "-" onto board

skip_draw_right:

; 000b - right
; 001b - down
; 010b - left
; 011b - up
; 100b - no movement (when player presses space on O)

	MOV r2, #000b			; move "left" direction into r2
	LDR r3, ptr_to_direction
	STRB r2, [r3]

    ldr r0, ptr_to_current_pos
    add r0, r0, #5        ; 27,"[04;4H" - second 4 is column, which is 5 bytes in from start
    ldrb r1, [r0]
    add r1, r1, #1        ; increase line by 1
    strb r1, [r0]

    BL get_position			; r0 contains offset to current position
    LDR r1, ptr_to_board
    LDRB r2, [r1, r0]		; get character at new position
    AND r2, #001111b		; get color of char at new position

    LDR r1, ptr_to_current_color
    LDRB r1, [r1]			; r1 has current color being drawn
    CMP r1, #0				; if nothing being drawn
    BEQ move_up_end			; dont del

    CMP r1, r2				; compare the colors
    ITT NE					; if they're not equal
    MOVNE r0, r2			; delete all lines of color r2 (at new position)
    BLNE del_lines

; the next few lines print a '-' or '|' at the position the player just moved to.
; It checks if the new position has a space or a line of a different color.
; If so, the position is overwritten with the correct character of the current color.
    BL get_position			; r0 contains offset to current position
    LDR r2, ptr_to_board
    LDRB r3, [r2, r0]
    CMP r3, #0x07
    ITT GT
    ORRGT r1, #010000b		; set symbol to "-" at current position
    STRBGT r1, [r2, r0]		; print onto board

move_right_end:
    LDR r0, ptr_to_cursor_right
    BL output_string
    b newprint

newprint:

	ldr r0, ptr_to_hide_cursor	; hide cursor before outputting things to reduce ugly flashes
	bl output_string

	ldr r0, ptr_to_newpage		; clear screen
	bl output_string

	bl output_colors_completed

    ldr r0, ptr_to_timer		; output the timer
    bl output_string
    ldr r0, ptr_to_newline
    bl output_string
    bl output_board				; output the board

    ldr r0, ptr_to_current_pos	; move cursor to correct position
    bl output_string

    ldr r0, ptr_to_show_cursor	; show cursor after outputting things to reduce ugly flashes
    bl output_string


uart_end:
	LDR r0, ptr_to_colors_completed
	LDRB r0, [r0]

	LDR r1, ptr_to_pause2_flag		; stop timer
	CMP r0, #0x7F					; if all colors are completed (0x7F=01111111b)
	ITE EQ
	MOVEQ r0, #1					; set flag to 1
	MOVNE r0, #0					; if not, set flag to 0
	STRB r0, [r1]					; store to memory

    LDMFD SP!, {r0-r12,lr}
    BX lr

; switch handler deals with all actions concerning the pushbutton
Switch_Handler:
    STMFD SP!, {r0-r12,lr}        ; save lr on stack

    ldr r2, ptr_to_game_started    ; check the flag to see if the game has started yet
    ldrb r1, [r2]
    cmp r1, #0    ; if game hasn't started, skip to end and don't allow operations
    beq switch_handler_end

    ldr r0, ptr_to_pause_flag
    ldrb r1, [r0]
    cmp r1, #0	; If the flag is off (0), pause the game. If the flag is on (1), unpause the game.
    beq switch_handler_pause
    b switch_handler_unpause

switch_handler_pause:
	ldr r0, ptr_to_pause_flag
	mov r1, #1
	strb r1, [r0]	; make pause flag 1, which means game is paused

	; The pause menu will be displayed when the game pauses, so this explicitly sets
	; the current option on screen to option 1, the top option. In other words,
	; it places the cursor on the first option.
	ldr r0, ptr_to_current_option
	mov r1, #1
	strb r1, [r0]

	ldr r0, ptr_to_newpage	; Clear the screen.
	bl output_string
	ldr r0, ptr_to_pause_menu	; Print out the pause menu.
	bl output_string
	ldr r0, ptr_to_cursor_option1 ; Place the cursor at option 1.
	bl output_string

	b switch_handler_end

; To unpause, turning off the pause flag is all we have to do because the timer handler will resume now.
; When the next second passes, the timer handler will overwrite the pause screen.
switch_handler_unpause:
	ldr r0, ptr_to_pause_flag
	mov r1, #0
	strb r1, [r0]	; make pause flag 0, which means the game is not paused

; Clear menu was moved to end of handler upon TA suggestion (thanks Anthony).
; This prevents 2 interrupts of the switch due to bounce issues.
switch_handler_end:
	MOV r0, #0x541C
    MOVT r0, #0x4002        ; address of GPIOICR (Interrupt Clear Register) for GPIO Port F

    ldr r1, [r0]            ; Load current value
    ORR r1, r1, #0x10        ; Sets bit 4 to 0
    str r1, [r0]            ; Store back onto memory

    LDMFD SP!, {r0-r12,lr}
    BX lr

; timer handler deals with all actions concerning what happens at every second interrupt.
; This includes skipping when paused, resetting the timer when 999 is exceeded, and
; printing out the main game screen.
Timer_Handler:
    STMFD sp!, {r0-r12,lr}

    ;clear interrupt
    mov r0, #0x0024
    movt r0, #0x4003
    ldr r1, [r0]
    orr r1, r1, #0x1
    str r1, [r0]

	; Checks if the game is paused. If it is, skips to the end and does nothing.
	; No timer increment and nothing is outputted to not mess up the pause menu.
    ldr r0, ptr_to_pause_flag
    ldrb r1, [r0]
    cmp r1, #1
    beq timer_handler_end

	; Checks if all the lines are connected. If they are, skips to the end and does nothing.
	; No timer increment and nothing is outputted to not mess up THE BOARD.
    ldr r0, ptr_to_pause2_flag
    ldrb r1, [r0]
    cmp r1, #1
    beq timer_handler_end

	;before everything else, clear the page before updating everything
	ldr r0, ptr_to_newpage
	bl output_string

	ldr r0, ptr_to_timer
	add r0, r0, #6		; Add 6 offset to the timer for the number part of memory
	mov r5, r0			; temp r5 = r0. Both should currently have pointer to number in string format
	bl str2int			; r0 now has int format of number
	add r0, r0, #1		; increment 1 for the second that has passed
	mov r6, #0x270F		; 9999
	cmp r0, r6			; if <= 9999, don't reset timer, else, reset timer to 0 and continue
	ble	dont_reset_timer
	mov r0, #0			; resets timer to 0 and flows down to normal operation
dont_reset_timer:

	mov r3, r0			; temporarily save timer number to r3 since num_digits won't change r3
	bl num_digits		; r0 now has num_digits of the timer number
	mov r2, r0
	mov r0, r3
	mov r1, r5			; move pointer to number in string format into r1

	push{r0-r3}
	ldr r0, ptr_to_hide_cursor	; hide cursor before outputting to reduce ugly flashes
	bl output_string
	pop{r0-r3}

	bl output_colors_completed	; Print first line of game board, number of colors completed.
    ;r0 has int, r1 has pointer to string, r2 has num_digits
    bl int2str
    ldr r0, ptr_to_timer
    bl output_string			; Print second line of game board, the timer.
    ldr r0, ptr_to_newline
    bl output_string			; Prints a newline because there was an issue preventing timer string from having a newline
    bl output_board				; Prints the third part of game board, the actual game board.

    ldr r0, ptr_to_current_pos
    bl output_string

	ldr r0, ptr_to_show_cursor	; show cursor after outputting to reduce ugly flashes
	bl output_string

timer_handler_end:
    LDMFD SP!, {r0-r12, lr}
    BX lr

; No input needed. Counts the number of colors completed and then outputs it.
; In memory, we used a bitmap for colors so that we AND a 0 into memory whenever
; a line gets canceled regardless of whether it is connected or not.
; We also can ORR a 1 into memory whenever we make a connection.
; Because of this, we just count the number of 1's in the mask to know how many
; valid lines have been made.
output_colors_completed:
    STMFD SP!, {r0-r12,lr}

    ldr r1, ptr_to_colors_completed	; loads the bitmask of colors completed from memory
    ldrb r0, [r1]
    mov r2, #0

output_colors_completed_loop:
    and r1, r0, #0x1        ;gets whether bit 0 is 1 or 0
    cmp r1, #1
    it eq
    addeq r2, r2, #1        ; if bit 0 had a 1, increment counter
    lsr r0, r0, #1            ; shift right and repeat until r0 = 0
    cmp r0, #0		; When the bitmask had all of its 1's counted, we stop.
    bne output_colors_completed_loop

    ldr r0, ptr_to_colors_completed_string
    add r2, r2, #0x30        ; add 0x30 to get to ascii value
    strb r2, [r0,#10]                ;should jump to the "0" in "Complete: 0/7",10,13,0 and change the value to the output we want

    bl output_string	; Output "Complete: #/7",10,13,0

    LDMFD SP!, {r0-r12,lr}
    mov pc, lr


; outputs current O color through the LED on board.
; format for ANSI and the LED differ, so we switch bits 1 and 2 in order to output the proper color
output_RGB:
	STMFD SP!, {r0-r12,lr}

	LDR r0, ptr_to_current_color	; load the current color being drawn into r0
	LDRB r0, [r0]
	MOV r5, r0						; save copy to r5

; the next few lines store the current position of the player onto memory, IF the player has just started drawing a new line at an O.
	CMP r0, #0						; IT block executes if currently drawing lines
	ITTT NE
	BLNE get_position				; gets current position of player
	LDRNE r1, ptr_to_start_O_pos	; stores it to memory
	STRBNE r0, [r1]

	MOV r0, r5						; copy saved value back

	AND r1, r0, #4	; r1 stores bit 1
	AND r2, r0, #2	; r2 stores bit 2
	AND r0, r0, #1	; r0 stores bit 3 (LSB)

	ORR r0, r0, r1, LSR #1	; move bit 1 to right and store
	ORR r0, r0, r2, LSL #1	; move bit 2 to  left and store

	BL illuminate_RGB_LED

    LDMFD SP!, {r0-r12,lr}
    MOV pc, lr

; Converts the 2-D representation of the cursor position to a single number offset for easier memory manipulation.
; The offset is from the top left corner of the board. The output will be in r0.
; e.g.
; bl get_position
; mov r1, r0
; ldr r0, ptr_to_board
; ldrb r0, [r0,r1]
get_position:
    STMFD SP!, {r1-r12,lr}
    MOV r3, #10
    ldr r0, ptr_to_current_pos

    ; next few lines are basically str2int (line index is stored into r1)
    add r0, r0, #2        ; 27,"[04;4H" - first 4 is line, which is 2 bytes in from start
    ldrb r1, [r0]
    AND r1, r1, #0x0F    ; get actual digit value of line index 1
    MUL r1, r1, r3        ; multiply by 10

    ADD r0, r0, #1        ; move to second digit for the line index
    ldrb r2, [r0]
    AND r2, r2, #0x0F    ; get actual digit value of line index 2
    ADD r1, r1, r2        ; combine digits into a number

    SUB r1, r1, #3        ; account for "Time" row and Xs
    MOV r2, #11
    MUL r1, r1, r2        ; line number*11= horizontal offset

    add r0, r0, #2        ; 27,"[4;4H" - second 4 is column, which is 4 bytes in from start
    ldrb r2, [r0]
    AND r2, r2, #0x0F    ; get actual digit value of row
    ADD r1, r1, r2        ; line offset+row offset to get to offset on board
    SUB r0, r1, #1        ; account for first column of Xs

    ; r0 stores offset to current position on board now

    LDMFD SP!, {r1-r12,lr}
    MOV pc, lr

; r0 contains color of lines to delete from the board
del_lines:
    STMFD SP!, {r0-r12,lr}

    LDR r1, ptr_to_board
    MOV r4, #0x20		; value of space in r4

    LDRB r2, [r1] 		; load a character from board
    CMP r2, #0			; if the character is null, exit (should not happen)
    BEQ del_lines_end

; the lines below reduce the colors completed by 1 if the line was connected
    LDR r5, ptr_to_colors_completed
    LDRB r6, [r5]		; the bit masking of lines completed is stored in r6
    MOV r7, #1
    LSL r7, r7, r0		; 1 gets left shifted by the color of the lines being deleted (ex. if white deleted, 1<<7 gives us 10000000b)
    LSR r7, r7, #1		; right shift by 1 (ex. if white deleted, r7>>1 gives us 01000000b, correct value)
    BIC r6, r6, r7		; clear that bit
    STRB r6, [r5]		; store back onto memory

del_lines_loop:

	AND r3, r2, #110000b	; get symbol
	CMP r3, #0				; if 0, it is an O
	BEQ del_lines_advance	; we skip dat

	AND r2, r2, #001111b	; get color of character

    CMP r0, r2			; do colors match?
    IT EQ
    STRBEQ r4, [r1]		; store a space at the position

del_lines_advance:
    ADD r1, r1, #1
    LDRB r2, [r1]		; load next character
    CMP r2, #0			; exit if null
    BNE del_lines_loop

del_lines_end:

    LDMFD SP!, {r0-r12,lr}
    MOV pc, lr


; r0 input should have the memory address of the board we want to use, we will copy to ptr_to_board
; Note: this follows aapcs because it has input so r0-r3 WILL BE MODIFIED
; Only works for strings
mem_copy:
	stmfd sp!, {r4-r12,lr}

	ldr r1, ptr_to_board
mem_copy_loop:	; this loop essentially just copies byte by byte from input location to playing board location until '\0'
	ldrb r2, [r0], #1	; post-increment
	cmp r2, #0		; if we encounter '\0', stop memcopy, but continue otherwise
	beq mem_copy_end
	strb r2, [r1], #1	; store byte to board, post-increment
	b mem_copy_loop

mem_copy_end:
	ldmfd sp!, {r4-r12,lr}
	mov pc, lr

; The randomizer subroutine has no inputs. It uses the current time elapsed to generate a
; pseudo-random number by taking time elapsed % 16. The time elapsed changes so quickly for
; the first 16 points that it is pretty much random. The board selected is copied into the
; playing board.
randomizer:
	stmfd sp!, {r0-r12,lr}

	ldr r0, ptr_to_ptr_to_ptr	; Load the pointer to the pointer to the board
	mov r1, #0x050
	movt r1, #0x4003		; getting register GPTMTAV to read timer A value
	ldr r2, [r1]
	mov r3, #0		; Use 2 steps to get r3 = 11...10000
	sub r3, r3, #16	; r3=-16
	bic r2, r2, r3	; should clear all but bits 0000

	;Depending on what value we got from the timer, we will select a board corresponding to the number.
	cmp r2, #0
	it eq
	ldreq r1, ptr_to_board0
	cmp r2, #1
	it eq
	ldreq r1, ptr_to_board1
	cmp r2, #2
	it eq
	ldreq r1, ptr_to_board2
	cmp r2, #3
	it eq
	ldreq r1, ptr_to_board3
	cmp r2, #4
	it eq
	ldreq r1, ptr_to_board4
	cmp r2, #5
	it eq
	ldreq r1, ptr_to_board5
	cmp r2, #6
	it eq
	ldreq r1, ptr_to_board6
	cmp r2, #7
	it eq
	ldreq r1, ptr_to_board7
	cmp r2, #8
	it eq
	ldreq r1, ptr_to_board8
	cmp r2, #9
	it eq
	ldreq r1, ptr_to_board9
	cmp r2, #0xA
	it eq
	ldreq r1, ptr_to_boardA
	cmp r2, #0xB
	it eq
	ldreq r1, ptr_to_boardB
	cmp r2, #0xC
	it eq
	ldreq r1, ptr_to_boardC
	cmp r2, #0xD
	it eq
	ldreq r1, ptr_to_boardD
	cmp r2, #0xE
	it eq
	ldreq r1, ptr_to_boardE
	cmp r2, #0xF
	it eq
	ldreq r1, ptr_to_boardF

	str r1, [r0]	; save the pointer to the board we will play to know what board is being played (for reset purposes)
	mov r0, r1		; set r0 to the pointer to the board we are using for input to mem_copy to the playing board
	bl mem_copy

	ldmfd sp!, {r0-r12,lr}
    MOV pc, lr


; 01 0010
;     ^^^ Color
; ^^      Symbol

; Symbol Table:
; 00=O
; 01=-
; 10=+
; 11=|

; Color Table:
;
; 000=black
; 001=red
; 010=green
; 011=yellow
; 100=blue
; 101=magenta
; 110=cyan
; 111=orange(white?)


; 1111 1111 (0xFF)= X
; 0010 0000 (0x20)= Space

output_board:
    STMFD SP!, {r0-r12,lr}
	LDR r4, ptr_to_board		; load pointer to board

output_board_loop:
	LDRB r0, [r4]				; get a character

	CMP r0, #0					; if char is null, exit loop and function
	BEQ board_end

	CMP r0, #10					; if newline character
	BEQ special_char			; print newline and move to next character in board

	CMP r0, #13					; if linefeed character
	BEQ special_char			; print linefeed and move to next character in board

	CMP r0, #0xFF				; if byte is 0xFF, it is a X
	BNE not_X

	LDR r0, ptr_to_black		; set character to black
	BL output_string			; prints ANSI escape character
	MOV r0, #88					; print an X
	BL output_character
	ADD r4, r4, #1				; move to next board char
	B output_board_loop

not_X:
	CMP r0, #0x20				; check if char is a space
	BNE not_space

	BL output_character			; output a space
	add r4, r4, #1				; move to next board char
	B output_board_loop

not_space:
	AND r5, r0, #000111b			; get bits 0-2

	AND r6, r0, #110000b			; get bits 4-5
	LSR r6, r6, #4					; shift to make em LSB

	ADD r5, r5, #0x30				; get ASCII value of color (48+2=50=ASCII value of "2")
	LDR r0, ptr_to_num				; check num_to_edit for details
	STRB r5, [r0]					; Replaces "ESC[3_m"
									;                ^ This value with value of color

	LDR r0, ptr_to_color			; change color to what it should be
	BL output_string

	CMP r6, #00b					; 00b="O"
	BNE not_O

	MOV r0, #79						; print an O
	BL output_character
	ADD r4, r4, #1					; next board char
	B output_board_loop				; loopdy doop

not_O:
	CMP r6, #01b					; 01b="-"
	BNE not_horizontal

	MOV r0, #45						; print a -
	BL output_character
	ADD r4, r4, #1					; next board char
	B output_board_loop				; loopdy doop

not_horizontal:
	CMP r6, #10b					; 10b="+"
	BNE not_cross

	MOV r0, #43						; print a +
	BL output_character
	ADD r4, r4, #1					; next board char
	B output_board_loop				; loopdy doop

not_cross:

	MOV r0, #124					; print a |
	BL output_character
	ADD r4, r4, #1					; next board char
	B output_board_loop				; loopdy doop

special_char:						; print either a 13 or 10 (carriage return/linefeed)

	BL output_character
	ADD r4, r4, #1					; next board char
	B output_board_loop				; loopdy doop

board_end:

    LDMFD SP!, {r0-r12,lr}
    MOV pc, lr


	.end
