-- Sahar [Module]
--
-- This is the main module, and the only one (yet) the developer must require.
-- It's simply contains the main game loops and the global vars used in the
-- enginering.

export *					-- For having everything global :D

Mouse = require 'Mouse'		-- Requiring Mouse module.

Sprite = require 'Sprite'	-- Requiring the Sprite class
SpriteStack = {}			-- The sprite stack which will be drawn

Scene = require 'Scene'		-- Requiring the Scene class [interface]
ActiveScene = nil			-- The active scene in the game

-- Game [Class]
class Game
	
	-- Initiates the game, giving a Scene intance is obligatory.
	new: (scene) =>
		if not scene
			error "The game cannot initialize with no Scene!"
		ActiveScene = scene
	
	-- Move from one scene to another
	setScene: (scene) =>
		ActiveScene\dispose!
		ActiveScene = scene

-- Here is the drawing code. The developer using Sahar have not to worry
-- about what happens here.
love.draw = (deltaTime) ->
	-- Every cicle the Stack is iterated for each sprite, it is drawn, and then
	-- the sprite is popped from the stack.
	for sprite in *SpriteStack
		love.graphics.draw sprite.image, sprite.x, sprite.y
		table.remove SpriteStack, 1

-- Here is the main loop code. The developer using Sahar have not to worry
-- about what happens here.	
love.update = (deltaTime) ->
	ActiveScene\update!
