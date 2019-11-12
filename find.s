main		SUB		sp, sp, #36 ;allocate space for integer array of size 9
		
		;store	ints in the array
		MOV		R0 , #45
		STR		R0 , [sp, #0]
		MOV		R0 , #32
		STR		R0 , [sp, #4]
		MOV		R0 , #0
		STR		R0 , [sp, #8]
		MOV		R0 , #1
		STR		R0 , [sp, #12]
		MOV		R0 , #03
		STR		R0 , [sp, #16]
		MOV		R0 , #11
		STR		R0 , [sp, #20]
		MOV		R0 , #7
		STR		R0 , [sp, #24]
		MOV		R0 , #11
		STR		R0 , [sp, #28]
		MOV		R0 , #1
		STR		R0 , [sp, #32]
		
		;R0		is the pointer to the array of int  int* p
		add		R0, sp, #0
		
		;R1		holds the value to search for int x
		MOV		R1, #32
		
		;R2		holds the size of the integer array
		MOV		R2 , #9
		
		bl		find
		end
		
find		MOV		r3 , #0 ;helps move through the array on the stack
		LDR		r4, [r0, r3] ; r4 holds the curr int
		MOV		r5 , #0 ;checks for end of array
		b		loop	;loop through the array to find int
		
		
loop		cmp		r2 , r5 ;if last index then not found
		BEQ		notfound
		add		r5, r5 , #1 ;increase index by 1
		cmp		r4 , r1	;compare current int with int x
		BEQ		found
		add		R3 , R3 , #4
		LDR		r4, [r0, r3]
		b		loop
		
found	MOV		R12 , #1 ; return 1 if found
		MOV		PC, LR ; go to the previous return address
		
notfound	MOV		R12 , #0 ; return 0 if not-found
		MOV		PC, LR ; go to the previous return address
		
		
		
		
