Signalisation is a small tool to help with turtle movements
You can assign actions to blocks. When the turtle encounter the block
(aka the turtle see the given block in front of it) it will run the defined actions

To use it, implement an actions package in a file named "actions.lua" in the same
folder as signalisation.lua

In this file you need to define your actions as functions inside the actions object.

A custom 'default' function can be defined a an actions function,
it will define the default behavior of the turtle.
It shall be named actions.default

Likewise, a custom 'inspect' function can also be defined to 

You then need to register your functions inside a 'rules' object like so:
actions.rules = {
    {'minecraft:furnace', actions.hello_world},
    {'minecraft:oak_sapling', actions.inexisting}
}

The inspection function is also defined in actions, it

an example actions file should be given with this package to help you better understand
how to do it

AUTHOR: Panayi
