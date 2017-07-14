turtle.getFuelLevel()
args = {...}
digLength = args[1]
digWidth = args[2]
digDepth = args[3]

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

for i=1,digDepth/2 do
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
	print(i .. " finished out of " .. digDepth)
end
