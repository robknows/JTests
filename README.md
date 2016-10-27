# Jutl
J Unit Testing Library - Jutl

Shame that JUnit was already taken as a name

# Usage

If I have some code I want to test such as:

`stack =: 0

push =: 3 : 'stack =: y , stack' 	NB. Pushes items of y onto the stack

drop =: 3 : 'stack =: y }. stack' 	NB. Drops y items from the stack`

I can test it by writing a test, which is a thing, it is a noun:


`  canPushToStack =: 0 : 0

stack =: 0            NB. reset the stack

push 1                NB. push a 1 onto the stack

stack shouldEqual 1 0 NB. make the appropriate assertion
)`

To compute the result of the test, I can call the function runTests:

`runTests canPushToStack`

If I have many other tests, one of which is called canDropItemsOffStack, I can run that at the same time by boxing the test definitions:

`runTests canPushToStack ; canDropItemsOffStack ; blah ; blah2 ; ...`

Note that the results of the test are not evaluated until they are called upon by the runTests function.
