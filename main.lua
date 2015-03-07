-- main.lua

-- Inisialisasi
function love.load()

	vespa = {
		gambar = love.graphics.newImage("vespa.png"),
		x = 100,
		y = 100
	}

	vespa.originX = math.floor(vespa.gambar:getWidth() / 2)
	vespa.originY = math.floor(vespa.gambar:getHeight() / 2)

end

-- Render
function love.draw()

	love.graphics.draw(vespa.gambar, vespa.x - vespa.originX, vespa.y - vespa.originY)

	love.graphics.print(vespa.x, 20, 20)
	love.graphics.print(vespa.y, 20, 50)

	--local x, y = love.mouse.getPosition()
	--vespa.x = x
	--vespa.y = y

end

-- Update logika game
function love.update(dt)

	-- Jalan ke kanan
	if vespa.x <= 750 then
		vesp.x = vespa.x + (300 * dt)
	end

end
