extends Node

var player_current_attack = false

var current_scene= "world"
var transition_scene= false

var player_exit_cliffside_posx= 243
var player_exit_cliffside_posy= 6
var player_start_cliffside_posx = 130
var player_start_cliffside_posy= 230

var game_first_loadin = true

func finish_changescenes():
	if transition_scene== true:
		transition_scene=false
		if current_scene == "world":
			current_scene = "cliffside"
		else:
			current_scene ="world" 
