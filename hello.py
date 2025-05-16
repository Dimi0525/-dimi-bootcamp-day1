name = input("Wie heißt du? ")
age  = int(input("Wie alt bist du? "))
city = input("In welcher Stadt lebst du? ")
lang = input("Welche Programmiersprache findest du spannend? ")

print()  # Leerzeile
print(f"Hallo, {name} aus {city}!")
print(f"Cool, dass du {lang} lernen möchtest.")

if age < 18:
    print("Du bist ja noch minderjährig – Respekt, dass du schon coden willst!")
else:
    print("Super, in jedem Alter kann man etwas Neues lernen!")