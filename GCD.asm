LXI H,6000
MOV A,M
INX H
MOV B,M
LOOP:       CMP B
                   JZ STORE
                   JC EXG
                   SUB B
                   JMP LOOP
EXG:         MOV C,B
                  MOV B,A
                  MOV A,C
                  JMP LOOP
STORE:    STA 6009
                  HLT

