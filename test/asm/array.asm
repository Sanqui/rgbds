SECTION "0",HOME[0]


FIVE        EQU 5
TEST        ARRAY [0, 1, 2, $33, 4, FIVE, 6, 7]
STRINGS     ARRAY [
    "hello", 
    "hi", 
    "heyo",  ; comment!
    "howdy"
]

TEST[0] = $55

db TEST[0]          ; 0
db TEST[2+1]        ; $33
db LEN(TEST)        ; 8
db *TEST            ; 0, 1, 2, $33, 4, 5, 6, 7
dw *TEST            ; same but words

db *STRINGS[0]      ; "hello"
db STRLEN(*STRINGS[0]) ; 5

TEST APPEND $99
db TEST[LEN(TEST)-1]    ; $99

