# SLIDE 2: Scenario e motivazioni 
- Introdurre il mondo del cloud e i suoi benefici ma anche il problema della sicurezza e della scarsa fiducia in questi sistemi da parte dei clienti 
- Come soluzione ai problemi di sicurezza venne introdotta la Security Assurance evidenziando le difficoltà nel loro utilizzo dovute alle specificità che contiene
- per introdurre il motivo della tesi bisogna raccontare delle difficoltà nel dare fiducia nel sistemi Cloud, soprattutto se legati alla 
sicurezza, trattano dati sensibili (banche) o cose simili.
- definizione di **Cloud Security** 
- come la tecnica delle security assurance può risolvere questi problemmi di fiducia
        
        raccolta di evidence


# SLIDE 3: scenario e motivazioni (2)
- Moon Cloud come salvezza da tutto questo: piattaforma PaaS che implementa una Security Governance e Assurance
- security Assurance e i 4 requisiti (sistema olistico, monitoraggio continuo, singolo punto di managment e reazioni rapdide a incidenti)
    analisi continua e olistica dell'asset da proteggere è meglio di avere singoli controlli all'avanguardia.
- Security compliance evaluation


# SLIDE 4: obiettivi
- Introdurre un sistema di raccomandazione che porta ad avere usabilità semplificata per utenti e maggiore fiducia nei sistemi cloud
- motivo della tesi -> semplificare l'utilizzo agli utenti e cercare di avviciare anche le persone più diffidenti ad utilizzare questi sistemi.
(maggiore fiducia e trasparenza)


# SLIDE 5: Sistema di raccomandazione
- descrizione generica e discorsiva con esempi (Netflix, Amazon)
- principali sistemi di raccomandazione
    - CBF: un item viene raccomandato ad un utente se esso è simile ad altri item di interesse o piaciuti in passato, prendendo in considerazione prima gli item con alte valutazioni o quelli molto utilizzati;
        - focalizza sul contenuto degli item e  
        sugli interessi del singolo utente e propone item differenti a utenti differenti, questo significa che ogni utente può ricevere raccomandazioni uniche
        - non poter determinare se un utente è interessato ad un item in modo implicito
        - lento in caso di item ricchi di dati

    - CF: un item viene raccomandato ad un utente se i suoi vicini
        - una raccomandazione viene fatta sulla base delle valutazioni degli utenti per gli item, o sugli usi che gli utenti fanno degli item e questo è il suo punto di forza perché non si trova a dover analizzare item ricchi di informazioni
        - può portare suggerimenti che potrebbero essere considerati poco adatti
        - problema con item nuovi nel database
- Funzionamento del sistema di raccomandaizone: le tre fasi


# SLIDE 6: Collaborative Filter
- si appoggia ad un database che raccoglie le preferenze degli utenti sulla base di un insieme di item, che a loro volta possono essere presenti nella stessa base di dati. Si sfruttano tecniche di analisi dei dati per poter ottenere delle raccomandazioni che consiglino gli utenti a trovare gli item che gli potrebbero piacere, eventualmente producendo una lista dei migliori N item.
- Questi sistemi tentano di predire la preferenza che un utente darebbe a un item basandosi sulle preferenze date da altri utenti, queste ultime possono essere ottenute o in modo esplicito dagli utenti o tramite misurazioni implicite.
- FONDAMENTALE : Inoltre i Filtri Collaborativi non richiedono l'uso di metadati associati agli item, come nei Filtri Content-based. Tuttavia, restano ancora oggi alcune sfide significative a cui sono sottoposti i sistemi di raccomandazione basati su Filtraggio Collaborativo.
- OBIETTIVO: migliorare la scalabilità di questi algoritmi e migliorare la qualità dei sistemi di raccomandazione per gli utenti
- CATEGORIE FONDAMENTALI affrontate nella tesi: memory based e hybrid 


# SLIDE 7: Collaborative Filter
- 


# SLIDE 8: Soluzione
- sviluppo della soluzione e cosa fa ad alto livello


# SLIDE 9: Soluzione (2)
- [Figura UML di come SdR interagisce con MC] descrizione generale del funzionamento dell'implementazione
- "CASO D'USO"


# Implementazione della struttura dell'applicativo web
- sistema sviluppato con Django e rilasciato su Docker


# SLIDE 10: Gestione della base di dati
- Come vengono gestiste delle tassonomie in un database di tipo relazionale


# SLIDE 11: API REST
- come interagisce effettivamente MC e SdR
- mantenimento della consistenza dei dati tra i due db


# SLIDE 12: Conclusioni
- cosa ho ottenuto alla fine e sviluppi futuri

