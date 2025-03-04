{  Sourcecodeinformation:
Name:       Markus Wirtz
Aufgabe:    2
}

{ Aufgabenstellung:
Schreiben Sie ein Pascal-Programm, welches die Anzahl der Selbstlaute (a,e,i,o,u)
in einer Textdatei zählt und dies am Bildschirm ausgibt! }

program lb3_aufgabe2;              // Start des Programms lb3_aufgabe2

uses SysUtils;                     // Einbinden der SysUtils

var
  datei: textfile;                 // Deklaration einer Textdatei-Variablen
  zeichen: char;                   // Deklaration einer Zeichen-Variablen
  anzahlSelbstlaute: integer;      // Deklaration einer Variablen zur Zählung der Selbstlaute

procedure selbstlauteFinden;
begin

  // Öffnen der Textdatei
  assign(datei, 'lb3_aufgabe2_text.txt');

    // Öffne im Lesemodus
    reset(datei);
    writeln('Eine Textdatei wurde eingelesen!');

    // Setze die Anzahl der Selbstlaute auf 0
    anzahlSelbstlaute := 0;

    // Durchlaufe die Datei Zeichen für Zeichen
    // Solange das Ende der Datei nicht erreicht ist
    while not eof(datei) do
    begin
		  // Lesen der Zeichen aus der Datei
		  read(datei, zeichen);

      // Überprüfen Sie, ob das Zeichen ein Selbstlaut ist
      case zeichen of
            'a','A',
		        'e','E',
		        'i','I',
		        'o','O',
		        'u','U':

            // Inkrementiere die Zählvariable, wenn es sich um einen Selbstlaut handelt
            Inc(anzahlSelbstlaute);
		  end;
    end;

		// Datei schließen
		close(datei);

    // Ergebnis ausgeben
    writeln('Die Anzahl der Selbstlaute (a,e,i,o,u) ist: ', anzahlSelbstlaute);
    writeln();


end;

begin

  writeln('***** Pascal-Programm zum Finden der Selbstlaute *****');
  writeln();

  selbstlauteFinden; // Starte die Programm "selbstlauteFinden"

  writeln('Druecken Sie eine Taste um das Programm zu beenden.');
  readln;

end.




