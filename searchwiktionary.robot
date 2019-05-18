*** Settings ***
Documentation                                      This is a basic test
Library                                           Selenium2Library

*** Variables ***
${url}                                              https://en.wiktionary.org
${browser}                                          chrome
${text}                                             name=search
${search_button}                                    name=go

*** Test Cases ***

User searches for apple
    [Documentation]                                 The user enters 'apple' in search box
    open browser                                    ${URL}    ${browser}
    wait until page contains                        ${URL}
    input text                                      ${text}  apple
    click element                                   ${search_button}
    wait until page contains                        A common, round fruit produced by the tree Malus domestica, cultivated in temperate climates.
    sleep     5s
    Close Browser

User searches for pear
    [Documentation]                                 The user enters 'pear' in search box
    open browser                                    ${URL}    ${browser}
    wait until page contains                        ${URL}
    input text                                      ${text}  pear
    click element                                   ${search_button}
    wait until page contains                        An edible fruit produced by the pear tree, similar to an apple but elongated towards the stem.
    sleep     5s
    Close Browser