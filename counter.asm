;INIT STACK
LDI	R16, LOW(RAMEND)
OUT	SPL, R16
LDI	R16, HIGH(RAMEND)
OUT	SPL, R16
LDI R16, 0x00

;INIT PINS
LDI	R17, 0xFF
OUT	DDRB,	R17;WRITE
OUT	DDRD,	R17;WRITE
OUT	DDRC,	R16;READ

COUNTER:
	LDI	R16,	0X00;INC
	LDI	R17,	0X09
	
	CALL	ZERO
	CALL	DELAY

	INC		R16
	CALL	ONE
	CALL	DELAY

	INC		R16
	CALL	TWO
	CALL	DELAY

	INC		R16
	CALL	THREE
	CALL	DELAY

	INC		R16
	CALL	FOUR
	CALL	DELAY

	INC		R16
	CALL	FIVE
	CALL	DELAY

	INC		R16
	CALL	SIX
	CALL	DELAY

	INC		R16
	CALL	SEVEN
	CALL	DELAY

	INC		R16
	CALL	EIGHT
	CALL	DELAY

	INC		R16
	CALL	NINE
	CALL	DELAY

	RJMP	COUNTER
;END COUNTER COMPONENT

;DEFINE ZERO - NINE
NINE:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	4;B
	SBI	PORTB,	3;C
	SBI	PORTB,	0;F
	SBI	PORTD,	7;G
	RET
EIGHT:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	4;B
	SBI	PORTB,	3;C
	SBI	PORTB,	2;D
	SBI	PORTB,	1;E
	SBI	PORTB,	0;F
	SBI	PORTD,	7;G
	RET
SEVEN:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	4;B
	SBI	PORTB,	3;C
	RET
SIX:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	3;C
	SBI	PORTB,	2;D
	SBI	PORTB,	1;E
	SBI	PORTB,	0;F
	SBI	PORTD,	7;G
	RET
FIVE:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	3;C
	SBI	PORTB,	2;D
	SBI	PORTB,	0;F
	SBI	PORTD,	7;G
	RET
FOUR:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	4;B
	SBI	PORTB,	3;C
	SBI	PORTB,	0;F
	SBI	PORTD,	7;G
	RET
THREE:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	4;B
	SBI	PORTB,	3;C
	SBI	PORTB,	2;D
	SBI	PORTD,	7;G
	RET
TWO:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	4;B
	SBI	PORTB,	2;D
	SBI	PORTB,	1;E
	SBI	PORTD,	7;G
	RET
ONE:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	4;B
	SBI	PORTB,	3;C
	RET
ZERO:
	LDI	R20,	0X00
	OUT	PORTB,	R20
	OUT	PORTD,	R20;CLEAR OUTPUT

	SBI	PORTB,	5;A
	SBI	PORTB,	4;B
	SBI	PORTB,	3;C
	SBI	PORTB,	2;D
	SBI	PORTB,	1;E
	SBI	PORTB,	0;F
	RET

DELAY:
	LDI R21,	0xFF
	LDI	R22,	0xFF
	LDI	R23,	0X77
T1:
	NOP
	NOP
	NOP
	DEC R21
	BRNE	T1
	NOP
	NOP
	NOP
	DEC R22
	BRNE	T1
	NOP
	NOP
	NOP
	DEC	R23
	BRNE	T1
	RET
