		B main

hello	DEFB	"Hello World\n",0
name	DEFB	"My name is Max\n",0
goodbye	DEFB	"Goodbye Universe\n",0

		ALIGN
main	ADR	R0, hello
		SWI	3
		ADR R0, name
		SWI 3
		ADR	R0, goodbye	
		SWI	3
		SWI	2