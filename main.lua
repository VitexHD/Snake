local Game = require('game')

--[[ - Start of Global Variables - ]]
_MODE_DEBUG = 0
_ARGUMENTS = '['

--[[ - Functions - ]]
function love.load(arg) --[[ - Main Constructor - ]]
   if (arg[#arg] == '-debug') then _MODE_DEBUG = 1 end
   for x = 1, #arg do
      print(string.format('Argument{#%s : \'%s\'}', x, arg[x]))
      if (x == 1) then _ARGUMENTS = _ARGUMENTS .. string.format('%s', arg[x])
      else _ARGUMENTS = _ARGUMENTS .. string.format(' %s ', arg[x]) end
   end
   _ARGUMENTS = _ARGUMENTS .. ']'

   if (_MODE_DEBUG) then love.window.setTitle(string.format("Snake Game (Lua {ver=11.2}) %s", _ARGUMENTS)) end
end -- { End }

function love.update(dt) --[[ - Main Update-Loop - ]]
   Game:Update(dt)
end -- { End }

function love.draw() --[[ - Main Draw-Function - ]]
   Game:Draw()
end -- { End }

function love.keypressed(key) --[[ - Main Input-Function(Keyboard) - ]]
   if (key == 'escape') then
      love.event.quit(0)
   elseif (key == 'up') then
      _Snake._Direction.up, _Snake._Direction.down, _Snake._Direction.right, _Snake._Direction.left = 1, 0, 0, 0
   elseif (key == 'down') then
      _Snake._Direction.up, _Snake._Direction.down, _Snake._Direction.right, _Snake._Direction.left = 0, 1, 0, 0
   elseif (key == 'right') then
      _Snake._Direction.up, _Snake._Direction.down, _Snake._Direction.right, _Snake._Direction.left = 0, 0, 1, 0
   elseif (key == 'left') then
      _Snake._Direction.up, _Snake._Direction.down, _Snake._Direction.right, _Snake._Direction.left = 0, 0, 0, 1
   end
end -- { End }