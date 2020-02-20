

# SLIDE 6: Collaborative Filter
- si appoggia ad un database che raccoglie le preferenze degli utenti sulla base di un insieme di item, che a loro volta possono essere presenti nella stessa base di dati. Si sfruttano tecniche di analisi dei dati per poter ottenere delle raccomandazioni che consiglino gli utenti a trovare gli item che gli potrebbero piacere, eventualmente producendo una lista dei migliori N item.
- Questi sistemi tentano di predire la preferenza che un utente darebbe a un item basandosi sulle preferenze date da altri utenti, queste ultime possono essere ottenute o in modo esplicito dagli utenti o tramite misurazioni implicite.
- FONDAMENTALE : Inoltre i Filtri Collaborativi non richiedono l'uso di metadati associati agli item, come nei Filtri Content-based. Tuttavia, restano ancora oggi alcune sfide significative a cui sono sottoposti i sistemi di raccomandazione basati su Filtraggio Collaborativo.
- OBIETTIVO: migliorare la scalabilità di questi algoritmi e migliorare la qualità dei sistemi di raccomandazione per gli utenti
- CATEGORIE FONDAMENTALI affrontate nella tesi: memory based e hybrid 


# SLIDE 7: Recommendation Algorithms
- UB-CF: basa tutto il suo funzionamento sulla comunità di utenti, maggiore è la sua dimensione e l'interazione degli utenti con gli item e migliori possono essere le raccomandazioni. Questo algoritmo fornisce dei suggerimenti a un utente sulla base di uno o più vicini neighbours, e la similarità tra di essi può essere determinata sulla base degli item che l'utente ha utilizzato o valutato.
    FASE 1: specificare quale sia l'utente a cui si vuole applicare l'algoritmo di raccomandazione e recuperare i relativi utenti che possono avere dato valutazioni o usato item simili al primo utente
    FASE 2: estrarre gli item con cui il primo utente non ha mai interagito e per questo motivo gli possono interessare
- HO APPLICATO L'UB-CF NELLA SOLUZIONE PER GLI UTENTI


- IB-CF: Quando l'algoritmo UB-CF viene applicato per milioni di utenti e item non è molto efficiente per via della complessa computazione della ricerca di utenti simili. Per questo motivo venne ideata come alternativa il sistema Filtraggio Collaborativo Item-based dove si è preferito evitare di confrontare utenti simili, e al suo posto viene effettuato un confronto tra gli item dell'utente a cui si vuole raccomandare e i possibili item simili.
- HO APPLICATO L'IB-CF NELLA SOLUZIONE PER DETERMINARE EVALUATIONE E TARGET


# SLIDE 8: Soluzione
- sviluppo della soluzione e cosa fa ad alto livello


# SLIDE 9: Soluzione (2)
- [Figura UML di come SdR interagisce con MC] descrizione generale del funzionamento dell'implementazione
- "CASO D'USO"


# SLIDE 10: Conclusioni
Il sistema di raccomandazione sviluppato in questo tesi offre delle raccomandazioni di tipo basico, tuttavia è in grado di 
supportare gli utenti nell'utilizzo della piattaforma Moon Cloud. Offre altresì spunti di miglioramento, ad esempio 
l'introduzione di un sistema di valutazione delle Evaluation o dei Controlli da parte dell'utente così da incrementare 
la precisione del sistema di raccomandazione, il quale terrebbe conto anche di queste valutazioni.
