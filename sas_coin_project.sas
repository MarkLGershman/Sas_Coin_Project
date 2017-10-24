/* Random coin toss */
Data mar.random2;
x= RANUNI(-1);
if x>.5 THEN coin="heads";
else coin="tails";
run;

proc print data=mar.random2;
run;

/* create random file and frequency table */
Data mar.random;
/* DO i: loop command, automation. DO this operation up to 99 times */
DO i=1 to 99; 
/* can use either ranuni or uniform*/
x = UNIFORM(-1);
if x>.5 then coin="heads";
else coin="tails";
/* just shows it in output window*/
OUTPUT;
END;
RUN;
PROC FREQ DATA=mar.random;
table coin;
run;
