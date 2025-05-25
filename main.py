from greetings import greet
def main():
    """Haupt-Einstiegspunkt für das Kommandozeilen-Skript."""
 (if __name__ == "__main__"):
    # Interaktive Schleife
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

        greet(name, age, city, lang)

    # Testdurchläufe
    test_users = [
        ("Alex", 17, "Berlin", "Python"),
        ("Mia", 25, "München", "JavaScript"),
        ("Luca", 30, "Hamburg", "C++"),
    ]
    for name, age, city, lang in test_users:
        greet(name, age, city, lang)
        git add __init__.py setup.py main.py
