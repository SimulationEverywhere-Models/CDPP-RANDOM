
%/*******************************************************************
%*
%*  DESCRIPTION:  building RNG model using new CD++ for rule 15, 
%*
%*  AUTHOR: Abdulelah Alsanad
%*
%*  EMAIL: aalsa079@site.uottawa.ca
%*
%*  DATE: 1/12/2005
%*
%*******************************************************************/

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
%initialrowvalue :  1 11010101
%initialrowvalue :  2 00001010
%initialrowvalue :  3 11010100
%initialrowvalue :  4 01010111
%initialrowvalue :  6 11111111
%initialrowvalue :  7 10100011
localtransition : rng-rule15
statevariables: value
statevalues: 0
initialvariablesvalue: rng.sval


% Rule 15
[rng-rule15]
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 1 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 1 and (0,1) = 0)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 1 and (1,0) = 0 and (0,1) = 0)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 1)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 1 and (0,1) = 0)}
rule : { $value } { $value := 1; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 1)}
rule : { $value } { $value := 0; } {randInt(100)} { ((-1,0) = 0 and (0,-1) = 0 and (1,0) = 0 and (0,1) = 0)}
