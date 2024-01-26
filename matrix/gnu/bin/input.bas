'' FreeBasic input logical series templates changes
'' Form the utils mapping to files classify the files
'' create usages files

#lang "fblite"

Declare Function FreeBasic Cdecl Alias "FreeBasic" (ByRef Input As boolean, ByVal x As integer, ByVal y As integer) As boolean

#ifdef __FB_OPTION_EXPLICIT__ 
#define __FB_OPTION_EXPLICIT__
#else
#error __FB_OPTION_EXPLICIT__ 
#endif

Option Dynamic

'' $Dynamic
Dim x(100)

'' return value
ReDim x(50)

Dim As Long O

'' get free files
O = FreeFile

'' open file read of access
Open "develop.bas" For Binary Access Read As #O
'' make the buffer of memory result files
Dim As UByte file_char (LOF ( O ) - 1) 
'' get file buffer integer
Get #O, , file_char()
'' message alert close
Close
'' Anote open buffer number
O = FreeFile
'' Open write only access
Open "explicit.bi" For Binary Access Write As #O
'' put buffer new files
Put #O, , file_char()
Close

    
End
             