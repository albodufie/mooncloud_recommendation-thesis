# SLIDE 2: Scenario e motivazioni 
Oggi giorno i sistemi ICT lavorano spesso in cooperazione con i sitemi Cloud, sia in ambienti privati sia in quelli lavorativi, portando molti 
vantaggi in termini di automazione di processi e incremento di performance. 
In particolare, grazie ai servizi offerti dalle tecnologie Cloud è possibile accedere a risorse e servizi attraverso la rete in qualunque momento
e luogo. Tutti questi benefici (flessibilità, consumo delle risorse) sono anche loro accompagnati da diverse problematiche.
- Mancanza di fiducia da parte dei clienti dovuta alla poca trasparenza di chi offre questi servizi. Quali sono le misure di sicurezza che 
garantiscono la riservatezza e la protezione dei dati?
Esistono si delle tecniche, come quelle di criptazione, o degli standard di sicurezza, ma ciò non basta per sopperire a questo problema 
- Allora nascono tecniche di Security Assurance, le quali si basano sulla raccolta di dati e evidence che accertino la validità e l'efficenza delle 
proprietà di sicurezza messe in atto. 

La sicurezza non dipende dalla singola efficenza di una politica applicata ma dall'abilità di far saper cooperare questi Controlli affinchè possano
provvedere una protezione olistica (da tutti i fronti).

# SLIDE 3: Moon Cloud
Moon Clou è una piattaforma che permette di effettuare verifiche e monitoraggi dell'adeguatezza di sistemi ICT, in modo continuo e olistico, a 
politiche di sicurezza. Possiede:
- singolo punto di management e una raccolta delle Evaluation da poter eseguire.
- essendo un framework di Security Assurance, si vuole che un asset garantisca il soddisfacimento di politiche o standard precedentemente definiti.
- questi standard vengono definiti all'interno della piattaforma attraverso dei processi chiamati Evaluation, verifiche a cui un target è sottoposto
e per cui vengono raccolte delle evidence e permettono di valutare l'adeguatezza di un target a uno o più standard di sicurezza. I risultati di 
questi processi vengono riportati all'utente con diversi gradi di dettaglio (Generale, risultato di un processo di Evaluation, fino al risultato 
e alle evidence raccolte per una politica di sicurezza particolare).
EVALUATION = UNO o PIU CONTROLLI, POLITICHE O STANDARD DI SICUREZZA


# SLIDE 4: Obiettivo della tesi
Quindi per poter gestire tutti gli aspetti di sicurezza e di protezione dei dati legati al proprio sistema ICT bisogna saper configurare e 
gestire in modo corretto le diverse misure di sicurezza da mettere in atto, quindi si necessita di personale esperto in materia.
Per questo motivo un sistema di raccomandazione, simile a quelli implementati su Netflix o per le pubblicità targettizzate, è necessario per 
poter sostenere anche utenti meno esperti di poter proteggere i propri asset, aiutandoli a scegliere le politiche di sicurezza più adatte alle 
proprie esigenze.


# SLIDE 5: Sistema di raccomandazione
In sostanza un sistema di racomandazione è un sistema che consiglia a un utente uno o più item esistenti in un database; ad esempio i video di 
YouTube; quando si effettua una raccomandazione si va a consigliare un utente un item che possa essere di suo gradimento.
In questa tesi sono stati approfonditi i sistemi di raccomandazione basati su Collaborative Filter, i quali si basano sul principio che un item è 
raccomandato ad un utente se altri utenti, ritenunti simili per gusti e interessi, hanno fatto uso di quello stesso item.

PROBLEMA DELLA COLD START, sia per utenti sia per item.

Come viene sviluppato un sistema di raccomandazione?
- La prima fase è quella della **raccolta dei dati**, è la fase più importante perché determina le fondamenta su cui si baserà l'intero sistema, 
bisogna raccoglire dati consistenti e che possonano produrre risultati rilevanti; questo viene effettuato attraverso metodi: espliciti o impliciti.
- Spesso la seconda fase viene associata alla prima, ed è quella di **memorizzazione dei dati**, in cui il tipo di dato che si vuole raccogliere determina anche il supporto o il metodo di memorizzazione.

## SLIDE 6: Immagine struttura ad albero del database
Nella soluzione proposta sono state studiati diversi metodi per poter memorizzare la struttura di Controlli e di Evaluation implementata in Moon 
Cloud, infine venne definita una struttura ad albero in cui i nodi foglia rapresentano i riferimenti alle Politiche di Sicurezza e mentre i nodi 
intermedi le diverse categorie di appartenenza. 

- La terza e ultima fase è quella del **filtraggio dei dati**, un buon sistema di filtraggio permette di estrarre dalla base di dati le informazioni
più rilevanti e significative da raccomandare all'utente.
 