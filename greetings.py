def greet(name: str, age: int, city: str, lang: str) -> None:
    """Gibt eine personalisierte Begrüßung aus.

    Beispiele:
    >>> greet("Test", 20, "Stadt", "Python")
    (gibt drei Zeilen aus, keine Rückgabe)
    """
    print()
    print(f"Hallo, {name} aus {city}!")
    print(f"Cool, dass du {lang} lernen möchtest.")

    if age < 18:
        print("Du bist ja noch minderjährig – Respekt, dass du schon coden willst!")
    else:
        print("Super, in jedem Alter kann man etwas Neues lernen!")