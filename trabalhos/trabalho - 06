debug = true

playerimg = nil -- para armazenamento


canShoot = true
canShootTimerMax = 0.2 
canShootTimer = canShootTimerMax
bulletImg = nil
-- Trabalho - 06 
-- Tipo de dado não primitivo: Array
-- Dado não primitivo: bullets = {}
bullets = {} 


createEnemyTimerMax = 0.4
createEnemyTimer = createEnemyTimerMax
enemyImg = nil
enemies = {} -- array dos atuais inimigos na tela

-- funçao de colisão encontrada na wiki do love2d
-- retorna true se dois objetos se encontrarem e falso caso náo se encontrem
-- x1,y1 são os pontos superior esquerdo do primeiro objeto e w1,h1 suas altura e largura recpectivamente
-- x2,y3,w2 e h2 mesma coisa mas para o segundo objeto

function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
        -- Trabalho - 06 
        -- Tipo de dado não primitivo: Lista
        -- Dado não primitivo: CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end

isAlive = true
score = 0


function love.load()
	player = { x = 200, y = 770, speed = 150, img = nil }
        -- Trabalho - 06 
        -- Tipo de dado não primitivo: Registro
        -- Dado não primitivo: CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
	player.img = love.graphics.newImage('assets/character.png') -- carrega a imagem do personagem
	bulletImg = love.graphics.newImage('assets/bullets.png') -- carrega as balas
	enemyImg = love.graphics.newImage('assets/enemy.png')	-- carrega os inimigos
	backgroundimg = love.graphics.newImage('assets/background.png') -- carrega background

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
	
	canShootTimer = canShootTimer - (1 * dt) 
	if canShootTimer < 0 then
		canShoot = true
	end
	
	if love.keyboard.isDown(' ', 'z') and canShoot then -- criar as balas
		newBullet = { x = player.x + (player.img:getWidth()/2), y = player.y, img = bulletImg }
		table.insert(bullets, newBullet)
		canShoot = false
		canShootTimer = canShootTimerMax
	end
	
	for i, bullet in ipairs(bullets) do
		bullet.y = bullet.y - (250 * dt)

		if bullet.y < 0 then -- retirar as balas caso cheguem no limite da tela
			table.remove(bullets, i)
		end
	end
	
	createEnemyTimer = createEnemyTimer - (1 * dt)
	if createEnemyTimer < 0 then
		createEnemyTimer = createEnemyTimerMax
		randomNumber = math.random(10, love.graphics.getWidth() - 10) -- cria inimigo
		newEnemy = { x = randomNumber, y = -10, img = enemyImg }
		table.insert(enemies, newEnemy)
	end
	
	for i, enemy in ipairs(enemies) do -- atualizar a posiçao dos inimigos
		enemy.y = enemy.y + (200 * dt)

		if enemy.y > 960 then -- tira os inimigos que passarem da tela
			table.remove(enemies, i)
		end
	end

	-- verifica a função de colisão
	for i, enemy in ipairs(enemies) do -- Verifica primeiro os inimigos já que o número é menor que o de balas
		for j, bullet in ipairs(bullets) do
			if CheckCollision(enemy.x, enemy.y, enemy.img:getWidth(), enemy.img:getHeight(), bullet.x, bullet.y, bullet.img:getWidth(), bullet.img:getHeight()) then
				table.remove(bullets, j)
				table.remove(enemies, i)
				score = score + 1
			end
		end

		if CheckCollision(enemy.x, enemy.y, enemy.img:getWidth(), enemy.img:getHeight(), player.x, player.y, player.img:getWidth(), player.img:getHeight()) 
		and isAlive then -- Verificar se o inimigo atingiu o player
			table.remove(enemies, i)
			isAlive = false
		end
	end
	
	if not isAlive and love.keyboard.isDown('r') then 	-- reseta a tela removendo inimigos e balas,temporizador,posçao do jogador e score
	bullets = {}
	enemies = {}
	canShootTimer = canShootTimerMax
	createEnemyTimer = createEnemyTimerMax
	player.x = 50
	player.y = 710
	score = 0
	isAlive = true
end	
	
end


function love.draw(dt)
	love.graphics.draw(backgroundimg)
	love.graphics.draw(player.img, player.x, player.y)
	for i, bullet in ipairs(bullets) do
		love.graphics.draw(bullet.img, bullet.x, bullet.y)
	end
	for i, enemy in ipairs(enemies) do
		love.graphics.draw(enemy.img, enemy.x, enemy.y)
	end
	
	if isAlive then -- verifica se o player está vivo
		love.graphics.draw(player.img, player.x, player.y)
	else
		love.graphics.print("Pressione 'R' para recomeçar", love.graphics:getWidth()/2-50, love.graphics:getHeight()/2-10)
	end
	
end
