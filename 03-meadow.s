
		B main

menwent	DEFB " men went to mow\n",0
men		DEFB " men, ",0
mandog	DEFB " man and his dog, Spot\n",0
meadow	DEFB "Went to mow a meadow\n",0

		ALIGN
main 	MOV R0,#4
		SWI 4
		ADR R0,menwent
		SWI 3
		ADR R0,meadow
		SWI 3

		;Long line
		MOV R0,#4
		SWI 4
		ADR R0,men
		SWI 3
		MOV R0,#3
		SWI 4
		ADR R0,men
		SWI 3
		MOV R0,#2
		SWI 4
		ADR R0,men
		SWI 3
		MOV R0,#1
		SWI 4
		ADR R0,mandog
		SWI 3

		;Last line
		ADR R0,meadow
		SWI 3
		SWI 2

