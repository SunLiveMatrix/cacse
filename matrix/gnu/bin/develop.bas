'' cac-se center community of development files
'' static develop evolution portability logical series features
'' information report files documentation cac-se
#lang "fblite"
Declare Function Develop cdecl Alias "Develop" (ByRef keys As boolean, ByRef logic As boolean, ByRef features As boolean) as boolean

Type keys Alias "keys"
    checkViewEventKeys as boolean
    breakingNewsSysKeys as boolean
    binNewsEventKeys as boolean
End Type

#ifdef __FB_ARG_COUNT__ 
#macro m(args...)
      print __FB_ARG_COUNT__( args )
#endmacro
m()
m(a)
m(b,c)
m(,d)
m(,e,)
m(,,,)
#else
return false
#endif

end

Declare Function DevelopEvent cdecl Alias "DevelopEvent" ( ByRef Monitory As integer ) As integer

#ifdef __FB_DEVELOP_EVENT__
Dim Monitory As ControlType

if Monitory.Button = "Control Type" then
   do
      Monitory.Button
   loop
else
   return Monitory.Button
end if
#else
Dim MonitoryEvent As integer

if MonitoryEvent = 100 Then
   Dim I as integer
   for I = 0 To 100
      print I
   next
end if
#endif
end

Declare Function ArrayLen cdecl Alias "ArrayLen" (ByRef ArrayNames As Const Any ) As uinteger
#ifdef __Array_Len__ 
#define __Array_Len_Markets__ 0x200
#define __Array_Len_Storess__ 0x200
#define __Array_Len_Shoping__ 0x200
#else
Dim __Array_Len_Markets__ As integer
Dim __Array_Len_Storess__ As integer
Dim __Array_Len_Shoping__ As integer

if __Array_Len_Markets__ = 100*5 Then
   #define __Window_Event__ 0x200
else
   let __Array_Len_Markets__ += 1  
end if

if __Array_Len_Storess__ = 100*5 Then
   #define __Window_Event__ 0x200
else
   let __Array_Len_Markets__ += 1   
end if

if __Array_Len_Shoping__ = 100*5 Then
   #define __Window_Event__ 0x200
else
   let __Array_Len_Shoping__ += 1   
end if
#endif
end

Declare Function DevelopFBCEvent (ByRef BreakingNews As integer, ByRef Operation As integer, _
ByRef AbinSearchRight As integer) As integer

Type BreakingNews Alias "BreakingNews"
     InfoReportNews As boolean
     InfoReportDebugger As boolean
     InfoReportSystem As boolean
End Type

if BreakingNews = 100 then
   #define JUM 0x200
else
   let BreakingNews += 1   
end if

Type Operation Alias "Operation"
     InfoReportPF As boolean
     InfoReportPFEvent As boolean
     InfoReportPFCurrent As boolean
End Type

if Operation = 100 then
   let InfoJUM3DReport += 1
   let InfoJUM3DEvent += 1
   let InfoJUM3DObj += 1
end if

Type AbinSearchRight Alias "AbinSearchRight"
    InfoJUM3DRight As boolean
    InfoJUM3DLeft As boolean
    InfoJUM3DEvent As boolean
end type


if AbinSearchRight = False Then
   let InfoJUM3DRight += 0
   let InfoJUM3DLeft += 0
   let InfoJUM3DEvent += 0
end if

end

#ifdef __FB_ARG_COUNT__
#define __FB_ARG_COMPILE__ 0x200
#endif


Declare Function DevelopFBCInput cdecl Alias "DevelopFBCInput" (ByRef FreeBasic As integer, ByRef CheckKeys As integer, _
ByRef Portability As integer) As integer


#ifdef __FB_ARG_COUNT_INPUT__
#define __FB_ARG_COUNT_INPUT__ typeof int __FB_ARG_COUNT__ char* __names__ float __bread__ double __bit__
#endif

Type FreeBasic Alias "FreeBasic"
     
     __FB_ARG_COUNT_EVENT__ As integer 

End Type     

if __FB_ARG_COUNT_EVENT__ = 100 then
   
   let __FB_ARG_COUNT_INPUT__ /= 50

else

   let result = false

endif


Type CheckKeys Alias "CheckKeys"

    __FB_ARG_COUNT_KEYS__ As boolean

End Type   


if CheckKeys.__FB_ARG_COUNT_KEYS__ = 100 then

   print CheckKeys.__FB_ARG_COUNT_KEYS__ 

else

  let result = CheckKeys

endif


Type Portability Alias "Portability"

    __FB_ARG_COUNT_HOME__ As boolean 

End Type    


if Portability.__FB_ARG_COUNT_HOME__ = true then

   Print CheckKeys.__FB_ARG_COUNT_KEYS__ 
   
else

  let result = false

endif

End   
   