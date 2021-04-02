*** Keywords ***

Do Subtract
    [Arguments]   ${x}    ${y}
    ${Result}=    Evaluate    ${x}-${y}
    Return From Keyword   ${Result}