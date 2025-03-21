LXI H,8050  
MOV C, M    
INX H       
MOV B, M    
DCR C       
LOOP: INX H  
MOV A, M    
CMP B       
JNC SKIP    
MOV B, A    
SKIP: DCR C  
JNZ LOOP    
LXI H,8500  
MOV M, B    
HLT         
