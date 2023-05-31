extends Node

var bulletInstanceCount = 0
var enemyBulletInstanceCount = 0 

var automaticFiring = false
var saveFile = "user://save.dat"



var scoringInformation = {
	"currentScore": 0,
	"currentPlayer": "User",
	"highScores": [0,0,0],
	"highScorePlayersName" : "Winner"
}

var Player 
