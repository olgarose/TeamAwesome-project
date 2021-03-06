
*-----------------------------------------------------------
* Title      : Disassembler Final Project
* Written by : Team Awesome (Olga Rocheeva, Dwina Solihin, Peter Stanton)
* Date       : April 2, 2017
* Description: CSS 422 Final Project
*-----------------------------------------------------------
* Contains variables, constants, and definitions
*-----------------------------------------------------------
*Equates opcodes
CR              EQU     $0D         carriage return
LF              EQU     $0A         line feed
*-----------------------------------------------------------
*Output messages 
welcome_msg         DC.B    'CSS 422 Disassembler Final Project',CR,LF
                    DC.B    'By Team Awesome (Olga Rocheeva, Dwina Solihin, Peter Stanton)',CR,LF,0
location_start_msg  DC.B    'Enter Start location address',CR,LF,0
location_end_msg    DC.B    'Enter End location address',CR,LF,0
addr_oddBit_msg     DC.B    'Address cannot end on an odd byte.',CR,LF,CR,LF,0
addr_order_check    DC.B    'Ending Address cannot go before the starting address.',CR,LF,CR,LF,0
pause_msg           DC.B    'Press enter to continue!',CR,LF
endTest_msg         DC.B    'Reached end of test data.', CR,LF
                    DC.B    'Try another location? (yes/no): ',0
linebreak           DC.B    CR,LF,0
                    
*Printing out the Op-codes required
Invalid_disp        DC.B    'DATA',0
InvalidEA_disp      DC.B    'WRONGEA',0

NOP_disp            DC.B    'NOP',0
MOVE_disp           DC.B    'MOVE',0
MOVEA_disp          DC.B    'MOVEA',0
MOVEQ_disp          DC.B    'MOVEQ',0
MOVEM_disp          DC.B    'MOVEM',0
ADD_disp            DC.B    'ADD',0
ADDA_disp           DC.B    'ADDA',0
ADDI_disp           DC.B    'ADDI',0
ADDQ_disp           DC.B    'ADDQ',0
SUB_disp            DC.B    'SUB',0
MULS_disp           DC.B    'MULS',0
DIVU_disp           DC.B    'DIVU',0
LEA_disp            DC.B    'LEA',0
CLR_disp            DC.B    'CLR',0
AND_disp            DC.B    'AND',0
OR_disp             DC.B    'OR',0
LSL_disp            DC.B    'LSL',0
LSR_disp            DC.B    'LSR',0
ASL_disp            DC.B    'ASL',0
ASR_disp            DC.B    'ASR',0
ROL_disp            DC.B    'ROL',0
ROR_disp            DC.B    'ROR',0
JSR_disp            DC.B    'JSR',0
RTS_disp            DC.B    'RTS',0
BCC_disp            DC.B    'BCC',0
BGT_disp            DC.B    'BGT',0    
BLE_disp            DC.b    'BLE',0


*Printing out the symbols needed
hexaTable               DC.B    '0',0
                        DC.B    '1',0
                        DC.B    '2',0
                        DC.B    '3',0
                        DC.B    '4',0
                        DC.B    '5',0
                        DC.B    '6',0
                        DC.B    '7',0
                        DC.B    '8',0
                        DC.B    '9',0
                        DC.B    'A',0
                        DC.B    'B',0
                        DC.B    'C',0
                        DC.B    'D',0
                        DC.B    'E',0
                        DC.B    'F',0
poundsign               DC.B    '#',0
dollarsign              DC.B    '$',0
plussign                DC.B    '+',0
minussign               DC.B    '-',0
commasign               DC.B    ',',0
backslashsigh           DC.B    '/',0
openparen               DC.B    '(',0
closeparen              DC.B    ')',0
space                   DC.B    ' ',0   
size_b                  DC.B    '.B',0
size_w                  DC.B    '.W',0        
size_l                  DC.B    '.L',0

*Defining storage
linecount               DS.B    1       *storeage for lines on a screen
input_buffer            DC.B    1       *creates input buffer for ASCII string
location_startData      DS.L    1       *location on where to start reading data
location_endData        DS.L    1       *location on where to end reading data
table_length            DS.B    1       *Number of spaces in the table to print to console


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
