NB. Reads a J script from an absolute path and interprets each line.
readscript =: 0!:1

NB. Path for this project
projectpath =: jpath '~user' , '/projects/Jutl/'

NB. All of the J files we're using
jfiles =: 'Jutl.ijs' ; 'Jbuild.ijs'

NB. Prepends the project path to each of the filenames
pathsToLoad =: > projectpath&, each jfiles

NB. Loads all the J files
loadAllJFiles =: load @: , @: ({~ i.@:#)
