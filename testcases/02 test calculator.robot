*** Settings ***
Resource	../keywords/calculator.robot


*** Test Cases ***
TC_0201 Test add operation
    # 1) prepare test data
    ${x}=   Set Variable    6
    ${y}=	Set Variable	2
	${Expected result}=		Set Variable	8

    # 2) do test
	${Actual result}=	Evaluate	${x}+${y}

    # 3) validate the result
	Should Be Equal As Integers		${Actual result}	${Expected result}

TC_0202 Test subtract operation
	# 1) prepare test data
    ${x}=   Set Variable    6
    ${y}=	Set Variable	2
	${Expected result}=		Set Variable	4

    # 2) do test
	${Actual result}=	Do Subtract  ${x}  ${y}

    # 3) validate the result
	Should Be Equal As Integers		${Actual result}	${Expected result}

TC_0203 Test multiply operation
	# data driven style
	[Template]		Test multiply operation
	#x	#y	result
	6	2	12
	6	-2	-12
	-6	2	-12
	-6	-2	12
	6	0	0

TC_0204 Test Divide Operation Gherkins Style
	Given Input number 6 and number 2
	When Click divide button
	Then monitor should display 3

*** Keywords ***
Test multiply operation
	[Arguments]		${x}	${y}	${Expected result}
	
	${Actual result}=	Evaluate	${x}*${y}

	Should Be Equal As Integers		${Actual result}	${Expected result}

Input number ${x} and number ${y}
	log		x=${x}, y=${y}
	Set Test Variable	${x}
	Set Test Variable	${y}

Click divide button
	${Actual result}=	Evaluate	${x}/${y}
	Set Test Variable	${Actual result}

Monitor should display ${Expected result}
	Should Be Equal As Integers		${Actual result}		${Expected result}
