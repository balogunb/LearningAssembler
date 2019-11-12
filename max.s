max		mov		r1 , #5 ;int x
		mov		r2 , #7 ;int y
		mov		r3 , #61 ;int z
		
		;compare	x and y
		cmp		r1,r2
		bgt		compxz
		blt		compyz
		
		
;compares x and z 	
compxz	cmp		r1, r3
		bgt		retx ;return x
		blt		retz ;return x

;compars y and z
compyz	cmp		r2, r3
		bgt		rety ;return y
		blt		retz ;return x


;For the purpose of this exam, R12 holds the return value 

;ret x 
retx		mov		r12 , r1
		end

;ret y
rety		mov		r12 , r2
		end

;ret z 
retz		mov		r12 , r3
		end
