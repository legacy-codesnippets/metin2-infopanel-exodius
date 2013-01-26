# Metin2 Userpanel Quest (Infopanel like Exodius)

## Beschreibung
Ein umfangreiches Ingame-Userpanel für Metin2, inspiriert von "Exodius". Ermöglicht es Spielern, über ein benutzbares Item auf ein **multifunktionales Menü** zuzugreifen: mit Teleporter, Spielerinfos, Teamliste (Platzhalter) und mehr.

---

## Features

### 🧭 Teleporter
- Klassischer Warpring mit:
  - Map1 & Map2 pro Reich
  - Normale Maps (z. B. Wüste, Orktal, Geisterwald...)
  - Neue Maps (ab Lv. 95)
  - Dungeons (ab Lv. 50–75)
  - Eventmaps (z. B. OX-Event, bei aktivem Flag)

### 👤 Spieler-Infos
- Reich, aktuelles Yang
- Max-HP/MP
- Spielminuten
- EXP bis zum nächsten Level

### 📦 Struktur
- Ausgelöst durch `.use` auf Item `53003`
- Mehrstufige `select()`-Abfragen für Navigation
- Levelchecks bei teleports zu hochstufigen Gebieten
- `pc.get_*` Methoden für Echtzeitdaten aus Spielercharakter

---

## Hinweise

- Teleportziele (`pc.warp(x, y)`) müssen mit echten Koordinaten ersetzt werden!
- Teamliste & Lager-Funktion sind enthalten, aber noch **Platzhalter (chat-"Wird noch bearbeitet!")**
- Ideal kombinierbar mit Servern, die ein **zentralisiertes Info- und TP-System** wollen

---

## Einbau

1. Speichere als `infopanel.lua`
2. Weise Item-Vnum `53003` zu
3. Kompilieren:

```bash
./qc infopanel.lua
```

---

## Quelle

Original-Release vom **26.01.2013 – 17:25 Uhr** auf elitepvpers:  
🔗 [elitepvpers.com – Userpanel like Exodius](https://www.elitepvpers.com/forum/metin2-pserver-guides-strategies/2384330-release-userpanel-like-exodius.html)
