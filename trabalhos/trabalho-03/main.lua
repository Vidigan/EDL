debug = true

playerimg = nil -- para armazenamento

-- tempos para nao editar em diversos lugares ao mesmo tempo
canShoot = true
canShootTimerMax = 0.2
canShootTimer = canShootTimerMax
bulletimg = nil
bullets = {}

function love.load()
	player = { x = 200, y = 770, speed = 150, img = nil }
	player.img = love.graphics.newImage('assets/character.png') -- carrega a imagem do personagem
	bulletimg = love.graphics.newImage('assets/bullets.png') -- carrega imagem das balas

end

function love.update(dt)
	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end	

	if love.keyboard.isDown('left','a') then
		if player.x > 0 then --verifica posição dele para a esquerda
			player.x = player.x - (player.speed*dt)
		end	
	elseif love.keyboard.isDown('right','d') then
		if player.x < (love.graphics.getWidth() - player.img:getWidth()) then	-- verifica até onde o personagem pode ir na janela
			player.x = player.x + (player.speed*dt)
		end
	end
	
	canShootTimer = canShootTimer - (1*dt) -- define o qual longe as balas serão entre si
	
	if canShootTimer < 0 then
		canShoot = true
	end
	
	if love.keyboard.isDown (' ','z') and canShoot then
		newBullet = { x = player.x + (player.img:getWidth()/2), y = player.y, img = bulletImg } -- centralizar a bala e para que saia do topo da imagem
		table.insert(bullets,newBullet)
		canShoot = false
		canShootTimer = canShootTimerMax
	end
	
	for i, bullet in ipairs(bullets) do
		bullet.y = bullet.y - (250 * dt)

		if bullet.y < 0 then -- remove bullets when they pass off the screen
			table.remove(bullets, i)
		end
	end
	
end


function love.draw(dt)
	love.graphics.draw(player.img, player.x, player.y)
	
	for i, bullet in ipairs(bullets) do
		love.graphics.draw(bullet.img, bullet.x, bullet.y)
	end
	
end
