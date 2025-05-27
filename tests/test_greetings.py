from greetings import greet

def test_greet_outputs_correct_lines(capsys):
    # Vorbereitung
    name, age, city, lang = "Max", 22, "Berlin", "Go"
    # Funktion ausführen
    greet(name, age, city, lang)
    # Ausgabe einfangen & leere Zeilen entfernen
    out_lines = capsys.readouterr().out.splitlines()
    lines = [line for line in out_lines if line.strip()]

    # Jetzt sind nur noch echte Textzeilen da
    assert lines[0] == "Hallo, Max aus Berlin!"
    assert lines[1] == "Cool, dass du Go lernen möchtest."
    assert "Super, in jedem Alter kann man etwas Neues lernen!" in lines[2]