# Uruchamianie projektu

Dla poprawnego wyświetlenia wszystkich elementów projektu, w tym obrazów, zaleca się uruchomienie projektu za pomocą lokalnego serwera HTTP.

Przy bezpośrednim otwarciu pliku HTML przeglądarka używa protokołu `file://` zamiast `http://` przez co ścieżki do obrazów rozpoczynające się od `/` (np. `/images/obraz1.jpg`) są interpretowane jako ścieżki bezwzględne od korzenia systemu plików, a nie od folderu projektu