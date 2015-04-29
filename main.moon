-- A simple example (could it be not simple?)

-- Requiring the module, so now I can use the library
require 'Sahar'

-- Every scene must extend the Scene class
class SceneMain extends Scene
    new: =>
        -- When initializing the Scene we declare the variables that are going
        -- to be used. In our example, it is a Sprite.
        @sprite1 = Sprite 0, 0, 'assets/cursor.png'

    update: =>
    	Mouse.Hide!
    	with @sprite1 -- With sprite...
    		.x, .y = Mouse.Position! -- ...set the position to mouse cursor...
        	\draw! -- ...and draw!

    dispose: =>
        @sprite1 = nil -- It's a good practice to ever nullify the no-more-used vars.

-- NEVER forget to initialize your game. A scene as argument is obligatory.
main = Game SceneMain!
