signalisation = {}

actions = require("actions")

local function default_inspection()
  sucess, data = turtle.inspect()
  return data.name
end

local function default_action()
  turtle.forward()
end

local function walk(block_name)
  for i = 1, #actions.rules do
    if block_name == actions.rules[i][1] then
      actions.rules[i][2]()
      return
    end
  end
  actions.default()
end

function signalisation.proceed()
  -- Test if functions are defined
  for i = 1, #actions.rules do
    if actions.rules[i][2] == nil then
      error("function associated to " .. actions.rules[i][1] .. " rule is not defined")
    end
  end
  -- Test if default function is defined
  if actions.default == nil then
    print("WARNING: default movement function is not defined, using signalisation default one instead")
  else
    default_action = actions.default
  end
  -- Test if inspection function is defined
  if actions.inspect == nil then
    print("WARNING: default inspection function is not defined, using signalisation default one instead")
  else
    default_inspection == actions.inspect
  end
  -- Main loop
  while true do
    walk(default_inspection())
  end
end

return signalisation
