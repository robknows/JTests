# Jutl
A set of J development tools that I wish J came with "out of the box" such as:

- Better dressed functions for testing
- Better dresesd functions for loading and linking J files into the interpreter

(I have recently discovered, that if you run jqt and in do view->editor you get a beauiful IDE for J)

# Usage for testing functions: found in Jutl.ijs

If I have some code I want to test such as:

```J
stack =: 0
push =: 3 : 'stack =: y , stack' 	NB. Pushes items of y onto the stack
drop =: 3 : 'stack =: y }. stack' 	NB. Drops y items from the stack
```

I can test it by writing a test, which is a noun, as indicated by the first "0" in 0 : 0:


```J
  canPushToStack =: 0 : 0
stack =: 0            NB. reset the stack
push 1                NB. push a 1 onto the stack
stack shouldEqual 1 0 NB. make the appropriate assertion
)
```

To compute the result of the test, I can call the function runTests:

`runTests canPushToStack`

If I have many other tests, one of which is called canDropItemsOffStack, I can run that at the same time by boxing the test definitions:

`runTests canPushToStack ; canDropItemsOffStack ; blah ; blah2 ; ...`

Note that the results of the test are not evaluated until they are called upon by the runTests function.

# Usage for building functions: found in Jbuild.ijs

Consider if I have a J project in a folder called /home/rob/myJProject and in it I have my J files which are main.ijs, matrices.ijs and graphics.ijs

To load all of the functions from my project into the interpreter, I can use the following command:

`loadJProject ('/home/rob/myJProject/' withJFiles 'main.ijs' ; 'matrices.ijs' ; 'graphics.ijs')`
