# Sahar
Sahar is a simple framework written in [Moonscript](http://moonscript.org/) atop of [Löve](https://love2d.org/) engine.

The word **Sahar** stands for *Moon* in hebrew (סַהַר). It's clearly a reference to Lua and Moonscript, but in hebrew just because I like it! :D
Sahar is a framework whose objective is to simplify yet more the work of making a game with Löve. It automatizes a few things and turn it all the OO way that Moonscript works, making it much easier to develop a game.

## How to use **Sahar**:
We assume that you are already familiarized with *Moonscript*.
You just have to *require* Sahar whenever you want to use it, and all the library will be immediately available!

	require 'Sahar'
	
	-- Game code goes here
	

A little all-inclusive example is given here.

	-- A simple example (could it be not simple?)

	-- Requiring the module, so now I can use the library
	require 'Sahar'

	-- Every scene must extend the Scene class
	class SceneMain extends Scene
		new: =>
			-- When initializing the Scene we declare the variables that are going
			-- to be used. In our example, it is a Sprite.
			@sprite1 = Sprite 0, 0, 'assets/personagem.jpg'
	
		update: =>
			@sprite1\draw! -- Updating the Sprite
	
		dispose: =>
			@sprite1 = nil -- It's a good practice to ever nullify the no-more-used vars.

	-- NEVER forget to initialize your game. A scene as argument is obligatory.
	main = Game SceneMain!

Could it be simplier? Hell no! :D
