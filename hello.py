# ------------- Funktionen -------------
def greet(name: str, age: int, city: str, lang: str) -> None:
    """Gibt eine personalisierte Begrüßung auf der Konsole aus."""
    print()  # Leerzeile
    print(f"Hallo, {name} aus {city}!")
    print(f"Cool, dass du {lang} lernen möchtest.")

    if age < 18:
        print("Du bist ja noch minderjährig – Respekt, dass du schon coden willst!")
    else:
        print("Super, in jedem Alter kann man etwas Neues lernen!")


# ------------- Hauptteil -------------
if __name__ == "__main__":
    while True:
        print("\nGib 'q' ein, um das Programm zu beenden.")

        name = input("Wie heißt du? ")
        if name.lower() == "q":
            break

        age_input = input("Wie alt bist du? ")
        if age_input.lower() == "q":
            break
        age = int(age_input)

        city = input("In welcher Stadt lebst du? ")
        if city.lower() == "q":
            break

        lang = input("Welche Programmiersprache findest du spannend? ")
        if lang.lower() == "q":
            break
