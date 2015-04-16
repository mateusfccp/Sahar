class Sprite
	new: (x, y, source) =>
		@x		= x
		@y		= y
		@image	= love.graphics.newImage(source)
	
	draw: =>
		love.graphics.draw @image, @x, @y
		
Sprite
