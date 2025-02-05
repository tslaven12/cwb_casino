extends Node2D

@onready var bankroll_text: RichTextLabel = $TextLabels/BankrollText
@onready var result_text: RichTextLabel = $TextLabels/ResultText
@onready var bet_one_text: RichTextLabel = $TextLabels/BetOneText
@onready var bet_one_text_2: RichTextLabel = $TextLabels/BetOneText2
@onready var bet_one_text_3: RichTextLabel = $TextLabels/BetOneText3
@onready var bet_one_text_4: RichTextLabel = $TextLabels/BetOneText4
@onready var bet_one_text_5: RichTextLabel = $TextLabels/BetOneText5
@onready var bet_one_text_6: RichTextLabel = $TextLabels/BetOneText6
@onready var winner: RichTextLabel = $TextLabels/Winner

var rng = RandomNumberGenerator.new()
var bankroll = 100
var betone = 0
var bettwo = 0
var betthree = 0
var betfour = 0
var betfive = 0
var betsix = 0
var result = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	winner.text = ""


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	bankroll_text.text = "Bankroll: $" + str(bankroll)
	bet_one_text.text = "Bet: $" + str(betone)
	bet_one_text_2.text = "Bet: $" + str(bettwo)
	bet_one_text_3.text = "Bet: $" + str(betthree)
	bet_one_text_4.text = "Bet: $" + str(betfour)
	bet_one_text_5.text = "Bet: $" + str(betfive)
	bet_one_text_6.text = "Bet: $" + str(betsix)
	result_text.text = "Result: " + str(result)

func _on_bet_one_pressed() -> void:
	if bankroll > 0:
		betone += 1
		bankroll -= 1


func _on_bet_two_pressed() -> void:
	if bankroll > 0:
		bettwo += 1
		bankroll -= 1


func _on_bet_three_pressed() -> void:
	if bankroll > 0:
		betthree += 1
		bankroll -= 1


func _on_bet_four_pressed() -> void:
	if bankroll > 0:
		betfour += 1
		bankroll -= 1


func _on_bet_five_pressed() -> void:
	if bankroll > 0:
		betfive += 1
		bankroll -= 1


func _on_bet_six_pressed() -> void:
	if bankroll > 0:
		betsix += 1
		bankroll -= 1


func _on_roll_button_pressed() -> void:
	winner.text = ""
	result = rng.randi_range(1,6)
	bankroll = bankroll - betone - bettwo - betthree - betfour - betfive - betsix
	if result == 1:
		bankroll += betone*5
		if betone > 0:
			winner.text = "Winner!! $" + str(betone*6)
	if result == 2:
		bankroll += bettwo*5
		if bettwo > 0:
			winner.text = "Winner!! $" + str(bettwo*6)
	if result == 3:
		bankroll += betthree*5
		if betthree > 0:
			winner.text = "Winner!! $" + str(betthree*6)
	if result == 4:
		bankroll += betfour*5
		if betfour > 0:
			winner.text = "Winner!! $" + str(betfour*6)
	if result == 5:
		bankroll += betfive*5
		if betfive > 0:
			winner.text = "Winner!! $" + str(betfive*6)
	if result == 6: 
		bankroll += betsix*5
		if betsix > 0:
			winner.text = "Winner!! $" + str(betsix*6)
	


func _on_button_pressed() -> void:
	get_tree().quit()


func _on_decrease_bet_pressed() -> void:
	betone -= 1


func _on_decrease_bet_2_pressed() -> void:
	bettwo -= 1


func _on_decrease_bet_3_pressed() -> void:
	betthree -= 1


func _on_decrease_bet_4_pressed() -> void:
	betfour -= 1


func _on_decrease_bet_5_pressed() -> void:
	betfive -= 1


func _on_decrease_bet_6_pressed() -> void:
	betsix -= 1


func _on_reset_button_pressed() -> void:
	betone = 0
	bettwo = 0
	betthree = 0
	betfour = 0
	betfive = 0
	betsix = 0
	
