-- Sprite [Class]
--
-- The class that represents a singular sprite. Still in a early stage.

class Sprite

	-- Class constructor. x: integer; y: integer; source: string, the path to
	-- the source file.
	new: (x, y, source) =>
		@x		= x
		@y		= y
		@image	= love.graphics.newImage source
	
	-- The method responsable for pushing the Sprite to the global draw stack
	draw: =>
		table.insert SpriteStack, @
