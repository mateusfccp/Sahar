-- Mouse [Module]
--
-- This is the Module responsible for the mouse. Actually, it's only a wrapper,
-- but maybe some custom functions will be added later.

{
	x: love.mouse.getX
	y: love.mouse.getY
	Position: love.mouse.getPosition
	Show: =>
		love.mouse.setVisible true
	Hide: =>
		love.mouse.setVisible false
}
