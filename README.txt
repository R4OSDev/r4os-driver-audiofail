AC97FAIL.R4D ist ein nicht ausgelieferter negativer Testtreiber fuer die
Audio-R4D-Planabnahme.

Er wird als `AC97FAIL.R4D` gebaut, traegt aber absichtlich den
R4D-Treibernamen `AC97` und liefert in `DriverInit` einen Fehlercode zurueck.
Testskripte koennen ihn nach `TestInjection/R4OS/DRIVERS/AC97.R4D` kopieren,
um den nichtfatalen Init-Fail-Pfad zu pruefen.

Dieser Treiber ist kein AC97-Platzhalter und gehoert nicht in das normale
Boot-Image.

Projektstruktur seit 0.51.22
--------------------------------

Dieses Verzeichnis ist ein eigenstaendiges R4OS-SDK-Projekt fuer AC97FAIL.R4D.

Build:

    cd Code\System\Driver\AudioFail
    ..\..\..\DevTools\Zig\zig.exe build

Artefakt:

    zig-out\AC97FAIL.R4D

Manifest:

    module.R4MF

Image-Zielpfad: keiner; dieses Modul ist eine lokale negative Testfixture.
