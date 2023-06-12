
%/*******************************************************************
%*
%*  DESCRIPTION:  building RNG model using CD++, 
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

[rng-rule]
%else: rng-rule15

% Rule 15
#Macro(rng-rule15)


% Rule 63
#Macro(rng-rule63)

%Rule 31
#Macro(rng-rule31)

%Rule 47
#Macro(rng-rule47)

rule : 0 11 { t }