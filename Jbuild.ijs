NB. Path for this project
projectpath =: jpath '~user' , '/projects/Jutl/'

NB. All of the J files we're using
jfiles =: 'Jutl.ijs' ; 'Jbuild.ijs'

NB. Prepends the first argument to every member of the second
withJFiles =: 4 : '> x&, each y'

NB. Loads all the J files given all of their paths
loadJProject =: load @: ,

a =: 4
