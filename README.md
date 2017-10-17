# ASK2-PROJEKT-MIKROPROCESORA
Projekt z Architektury Systemów Komputerowych - projekt mikroprocesora. 
***************************
Zakres:
Wykonać projekt mikroprocesora oraz układów towarzyszących zgodnie z przedstawionymi we wstępie do instrukcji specyfikacją i ograniczeniami. Ponadto mikroprocesor musi:
- mieć możliwość zaadresowania 4096 słów pamięci operacyjnej,
- wspierać adresowania: domyślne, natychmiastowe, indeksowe,
- wspierać segmentację pamięci z podziałem na segment kodu programu i segment danych,
- posiadać odpowiednią liczbę rejestrów segmentowych,
- posiadać rejestr licznika rozkazów (tylko do odczytu),
- posiadać 4 rejestry uniwersalne,
- wykonywać rozkazy:
- przesyłanie danych rej-nat, rej-rej, rej-pam,
- dodawanie/odejmowanie rej-nat, rej-rej,
- blokowe przesyłanie danych w pamięci z użyciem licznika powtórzeń,
- porównywanie rej-rej,
- wykonywanie skoku bezwarunkowego do adresu podanego jako liczba lub rejestr,
- wykonywanie skoków warunkowych gdy większe, mniejsze, równe,
- wyliczanie wartości funkcji logicznych dla rej-nat, rej-rej.
**************************

Podstawową długością słowa mikroprocesora jest 8 bitów. Rejestr znaczników musi być aktualizowany po wykonaniu odpowiednik rozkazów. Słowo rozkazu mikroprocesora MUSI posiadać zmienną długość. Długość słowa na magistrali danych mikroprocesora ma wynosić 8 bitów. W pamięci należy przygotować program, który będzie demonstrował możliwości mikroprocesora.
