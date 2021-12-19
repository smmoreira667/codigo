	giftcode = "2021LORDS"
	player= "SrSteck"

    print(player)
    time.sleep(1.5)
    
    #Checking if the player exists
    playerCheck = requests.post('https://lordsmobile.igg.com/project/gifts/ajax.php?game_id=1051029902', data={'ac':'get_extra_info', 'charname': player, 'lang': 'en'})
    print(playerCheck.text)

    #Submitting the gift code
    submitting = requests.post('https://lordsmobile.igg.com/project/gifts/ajax.php?game_id=1051029902', data={'ac':'get_gifts', 'type':'1', 'iggid':'0', 'charname': player, 'cdkey': giftcode, 'lang': 'en'})
    print(submitting.text)
