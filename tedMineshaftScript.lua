turtle.getFuelLevel()
args = {...}
digLength = args[1]
digWidth = args[2]
digDepth = args[3]
preDist = args[4]

function turtleRight()
	turtle.turnRight()
	turtle.dig()
	turtle.forward()
	turtle.turnRight()
end

function turtleLeft()
	turtle.turnLeft()
	turtle.dig()
	turtle.forward()
	turtle.turnLeft()
end

function turtleRow()
	for f=2,digLength do
		turtle.dig()
		turtle.forward()
	end
end

function turtleTurnAround()
	turtle.turnLeft()
	turtle.turnLeft()
end

if preDist == 0 then
	for i=1,digDepth/2 do
		for x=1,(i-1)*2 do
			turtle.down()
		end
	turtle.digDown()
	turtle.down()
		for x=1,(digWidth/2)-1 do
			turtleRow()
			turtleRight()
			turtleRow()
			turtleLeft()
		end
		turtleRow()
		turtleRight()
		turtleRow()
		turtleTurnAround()
		turtle.digDown()
		turtle.down()
		for x=1, (digWidth/2)-1 do
			turtleRow()
			turtleLeft()
			turtleRow()
			turtleRight()
		end
		turtleRow()
		turtleLeft()
		turtleRow()
		turtleTurnAround()
		print(i*2 .. " finished out of " .. digDepth)
		-- turtle.up()
		turtle.up()
		for x=1,i*2 do
			turtle.up()
		end
		turtle.turnLeft()
		-- turtle.forward()
		for x=1,16 do
		  turtle.select(x)
		  turtle.drop()
		end
		turtle.turnRight()
		turtle.turnRight()
		-- turtle.forward()
		turtle.down()
		-- turtle.down()
		turtle.turnRight()
		turtle.suck(64)
		turtle.refuel()
		turtleTurnAround()
	end
else
	