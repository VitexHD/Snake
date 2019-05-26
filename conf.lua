require('main')

function love.conf(config)
   config.identity = nil;
   config.appendidentity = false;
   config.version = "11.2";
   config.console = true
   config.accelerometerjoystick = true;
   config.externalstorage = false;
   config.gammacorrect = false;

   config.audio.mixwithsystem = true;

   config.window.title = 'Snake Game (Lua {ver=11.2})'
   config.window.icon = 'Resources/Images/icon.png'   ;
   config.window.width = p_Window.Width;
   config.window.height = p_Window.Height;
   config.window.borderless = false;
   config.window.resizable = false;
   config.window.minwidth = 1;
   config.window.minheight = 1;
   config.window.fullscreen = p_Window.Fullscreen;
   config.window.fullscreentype = "desktop";
   config.window.vsync = 1;
   config.window.msaa = 0;
   config.window.depth = nil;
   config.window.stencil = nil;
   config.window.display = 1;
   config.window.highdpi = false;
   config.window.x = nil;
   config.window.y = nil;

   config.modules.audio = true;
   config.modules.data = true;
   config.modules.event = true;
   config.modules.font = true;
   config.modules.graphics = true;
   config.modules.image = true;
   config.modules.joystick = true;
   config.modules.keyboard = true;
   config.modules.math = true;
   config.modules.mouse = true;
   config.modules.physics = true;
   config.modules.sound = true;
   config.modules.system = true;
   config.modules.thread = true;
   config.modules.timer = true;
   config.modules.touch = true;
   config.modules.video = true;
   config.modules.window = true;
end