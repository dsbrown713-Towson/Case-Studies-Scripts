import random

def GenUserPassFile():
	china = "Name_Lists/Chinese_Names.csv"
	england = "Name_Lists/English_Names.csv"
	france = "Name_Lists/French_Names.csv"
	germany = "Name_Lists/German_Names.csv"
	japan = "Name_Lists/Japanese_Names.csv"
	russia = "Name_Lists/Russian_Names.csv"
	spain = "Name_Lists/Spanish_Names.csv"
	countries = (china, england, france, germany, japan, russia, spain)
	
	pass_file = open("PasswordList.txt")
	passwords = pass_file.readlines()
	pass_file.close()
	for country in countries:
		user_file = open(country)
		if country == china:
			UserPass = open('UserPass_Lists/ChinaUserPass.csv', 'w')
		elif country == england:
			UserPass = open('UserPass_Lists/EnglandUserPass.csv', 'w')
		elif country == france:
			UserPass = open('UserPass_Lists/FranceUserPass.csv', 'w')
		elif country == germany:
			UserPass = open('UserPass_Lists/GermanyUserPass.csv', 'w')
		elif country == japan:
			UserPass = open('UserPass_Lists/JapanUserPass.csv', 'w')
		elif country == russia:
			UserPass = open('UserPass_Lists/RussiaUserPass.csv', 'w')
		elif country == spain:
			UserPass = open('UserPass_Lists/SpainUserPass.csv', 'w')
		salt = GenSalt()
		for user in user_file:
			password = random.choice(passwords)
			password = salt + password
			UserPass.write(user + "," + password)
		UserPass.close()
		user_file.close()

def GenSalt():
	letters = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
	numbers = ('0','1','2','3','4','5','6','7','8','9')
	symbols = ('~','!','@','#','$','%','^','&','*','_','-','+','=','(',')','{','}','[',']','<','>','?')
	l = random.randint(len(letters) - 1)
	n = random.randint(len(numbers) - 1)
	s = random.randint(len(symbols) - 1)
	salt = letters[l] + numbers[n] + symbols[s]
	return salt
