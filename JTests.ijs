NB. Function whose calls are generated, does the execution of each test
  doTest =: 0 !: 1

NB. Generates a single test call
  generateSingleTestCall =: > @: {

NB. Generates code for running the tests
  generateTestCode =: (generateSingleTestCall)~ i.@:#

NB. Usage: runTests testOne ; testTwo ; testThree ; testFour ...
NB. Tests are strings of the code for a test, they are scripts
  runTests =: doTest @: generateTestCode

NB. Provides a single 1 or 0 for equality when used on higher dimension inputs.
  vectorEquals =: *./@:=

NB. When an assertion fails, you should see the expected and actual results, somewhat formatted.
  failureMessage =: 4 : 0
'FAIL' , CR , TAB , 'expected: ' , (": y) , CR , TAB , 'actual:   ' , (": x) , CR
)

NB. Usage: expected shouldEqual actual.
  shouldEqual =: 4 : 0
if. x (vectorEquals :: 0:) y
do. 'PASS'
else. x failureMessage y
end.
)
