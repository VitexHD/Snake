--[[ - Start of Global Variables - ]]
p_Window = {Width = 900, Height = 900, Fullscreen = false}

local _M = {}
_Snake = { x = p_Window.Width / 2 / 31, y = p_Window.Height / 2 / 34, width = 30, height = 30,
           _Direction = { x = 0, y = 0, up = false, down = false, right = false, left = false } }

--[[ - Functions - ]]
function _M.AddApple() --[[ - Game Add-Apple - ]]

end -- { End }

function _M.Draw() --[[ - Game Draw - ]]
   love.graphics.setColor(1.0, 0.35, 0.4, 1.0)
   love.graphics.rectangle('fill', _Snake.x * _Snake.width, _Snake.y * _Snake.height, _Snake.width, _Snake.height, 10, 10)
end -- { End }

function _M.Update(dt) --[[ - Game Update - ]]
   if (_Snake._Direction.up) then
      _Snake._Direction.x, _Snake._Direction.y = 0, -1
   elseif (_Snake._Direction.down) then
      _Snake._Direction.x, _Snake._Direction.y = 0, 1
   elseif (_Snake._Direction.right) then
      _Snake._Direction.x, _Snake._Direction.y = 1, 0
   elseif (_Snake._Direction.left) then
      _Snake._Direction.x, _Snake._Direction.y = -1, 0
   end

   _Snake.x = _Snake.x + _Snake._Direction.x
   _Snake.y = _Snake.y + _Snake._Direction.y
end -- { End }

function _M.Restart() --[[ - Game Restart - ]]

end -- { End }

return _M;