actions = {}

function actions.turnRight()
  turtle.turnRight()
end

function actions.default()
  turtle.forward()
end

function actions.inspect()
  print("I")

actions.rules = {
    {'minecraft:redstone_block', actions.turnRight}
}

return actions
