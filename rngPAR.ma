
%/*******************************************************************
%*
%*  DESCRIPTION:  building RNG model using the new CD++, 
%*
%*  AUTHOR: Abdulelah Alsanad
%*
%*  EMAIL: aalsa079@site.uottawa.ca
%*
%*  DATE: 09/11/2005
%*
%*******************************************************************/

#include(rng_macros)

[top]
components : rng

[rng]
type : cell
width : 8
height : 8
delay : transport
defaultDelayTime : 100
border : wrapped 
neighbors : rng(-1,0)
neighbors : rng(0,-1) rng(0,0) rng(0,1)
neighbors : rng(1,0)
initialvalue : 0
initialrowvalue :  0 00010000
initialrowvalue :  1 11010101
initialrowvalue :  2 00001010
initialrowvalue :  3 11010100
initialrowvalue :  4 01010111
initialrowvalue :  5 10101001
initialrowvalue :  6 11111111
initialrowvalue :  7 10100011
localtransition : rng-rule
statevariables: value
statevalues: 0
initialvariablesvalue: rng.sval

[rng-rule]

% Rule 15
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 2,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 2,1,0) = 1)}



% Rule 63
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 1,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 1,1,0) = 1)}


%Rule 31
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 1) and (if(randInt(3) = 0,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0 and $value = 0) and (if(randInt(3) = 0,1,0) = 1)}

%Rule 47
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1) and (if(randInt(3) = 3,1,0) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0) and (if(randInt(3) = 3,1,0) = 1)}

rule : { $value } { $value := 0; } 11 { t }