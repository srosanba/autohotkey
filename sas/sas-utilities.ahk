#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; User-specified Options 
#SingleInstance force
#Hotstring EndChars `n`t

; Let the hotstrings begin 

::dupcheck::
(
%macro dupcheck(data=,var=);

   %let csvar = %sysfunc(translate(&var,%str(,),%str( )));
   
   proc sql;
      select   &csvar
      from     &data
      group by &csvar
      having   count(*) > 1
      ;
   quit;
   
   %if &sqlobs > 0 %then
      %put %str(W)ARNING: obs in [&data] are not uniquely identified by [&var].;

%mend dupcheck;

%dupcheck
   (data=
   ,var=
   `)
)

::compmac::
(
%macro compmac(base=,compare=,where=,id=);

   %if %sysfunc(exist(&base)) %then %do;
   
      %if %nrbquote(&id) ne %str() %then %do;
      
         %put %str(W)ARNING: compare not valid because of ID;
         
         proc sort data=&base out=_base;
            by &id;
            %if %nrbquote(&where) ne %str() %then
               where &where; ;
         run;
         
         proc sort data=&compare out=_compare;
            by &id;
            %if %nrbquote(&where) ne %str() %then
               where &where; ;
         run;
      
         proc compare base=_base compare=_compare listobs;
            id &id;
         run;
         
      %end;

      %else %if %nrbquote(&where) ne %str() %then %do;
      
         %put %str(W)ARNING: compare not valid because of WHERE;
         
         data _base;
            set &base;
            where &where;
         run;
         
         data _compare;
            set &compare;
            where &where;
         run;
         
         proc compare base=_base compare=_compare listobs;
         run;
      
      %end;
      
      %else %do;
      
         proc compare base=&base compare=&compare listobs;
         run;
      
      %end;
      
   %end;
   
   %else %do;
   
      proc contents data=&compare;
      run;
   
   %end;

%mend compmac;

%compmac
   (base=derive.&prog
   ,compare=verify.v_&prog
   ,where=
   ,id=
   `)
)

;::::
;(
;)
