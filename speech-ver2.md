# SLIDE 2: Scenario e motivazioni (1m30s)
Oggi giorno i sistemi IT lavorano spesso in cooperazione con i sitemi Cloud, sia in ambienti privati sia in quelli lavorativi, portando molti 
vantaggi in termini di automazione di processi e incremento di performance. 
In particolare, grazie ai servizi offerti dalle tecnologie Cloud è possibile accedere a risorse e servizi attraverso la rete in qualunque momento
e luogo. Tutti questi benefici (flessibilità, ridotto consumo delle risorse) sono anche loro accompagnati da diverse problematiche.
- Mancanza di fiducia da parte dei clienti dovuta alla poca trasparenza di chi offre questi servizi, non vengono forniti e dettagli riguardanti le 
misure di sicurezza messe in atto per garantire la riservatezza e la protezione dei dati
Esistono si delle tecniche, come quelle di criptazione, o degli standard di sicurezza, ma ciò non basta per sopperire a questo problema 
- Allora nascono tecniche di Security Assurance, le quali si basano sulla raccolta di dati e evidence che accertino la validità e l'efficenza delle 
proprietà di sicurezza messe in atto. 

La sicurezza non dipende dalla singola efficenza di una politica applicata ma dall'abilità di far saper cooperare questi Controlli affinchè possano
provvedere una protezione olistica (da tutti i fronti).

# SLIDE 3: Moon Cloud (2m)
Moon Clou è una piattaforma che permette di effettuare verifiche e monitoraggi dell'adeguatezza di sistemi IT, in modo continuo e olistico, a 
politiche di sicurezza. Possiede:
- singolo punto di management e una raccolta delle Evaluation da poter eseguire.
- essendo un framework di Security Assurance, si vuole che un asset garantisca il soddisfacimento di politiche o standard precedentemente definiti.
- questi standard vengono definiti all'interno della piattaforma attraverso dei processi chiamati Evaluation, verifiche a cui un target è sottoposto
e per cui vengono raccolte delle evidence e permettono di valutare l'adeguatezza di un target a uno o più standard di sicurezza. I risultati di 
questi processi vengono riportati all'utente con diversi gradi di dettaglio (Generale, risultato di un processo di Evaluation, fino al risultato 
e alle evidence raccolte per una politica di sicurezza particolare).
EVALUATION = UNO o PIU CONTROLLI, POLITICHE O STANDARD DI SICUREZZA


# SLIDE 4: Obiettivo della tesi (1m)
Quindi per poter gestire tutti gli aspetti di sicurezza e di protezione dei dati legati al proprio sistema IT bisogna saper configurare e 
gestire in modo corretto le diverse misure di sicurezza da mettere in atto, quindi si necessita di personale esperto in materia.
Per questo motivo la soluzione proposta in questa tesi è un sistema di raccomandazione, simile sotto certi punti di vista a quelli implementati su 
Netflix o per le pubblicità targettizzate su YouTube, è necessario per poter sostenere anche utenti meno esperti nella protezione dei propri asset, 
aiutandoli a scegliere le politiche di sicurezza più adatte alle proprie esigenze.


# SLIDE 5: Sistema di raccomandazione (3m30s)
In sostanza un sistema di raccomandazione è un sistema che consiglia a un utente uno o più item esistenti in un database; ad esempio i video di 
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

# SLIDE 6:
- mostro la struttura del database (albero)

# SLIDE 7: Filtri Collaborativi (POTREI TOGLIERLA è MOLTO TEORICA) (1m)
I Filtri Collaborativi tentano di predire la preferenza che un utente darebbe a un item basandosi sulle preferenze date da altri utenti, queste 
ultime per l'appunto possono essere raccolte in modo esplicito o implicito.
Un utente è sottoposto a un processo di matching per poter determinare quali sono i possibili neighbours, cioè gli utenti con uno storico di item
simile; quindi gli item preferiti dai neighbours vengono raccomandati.
Inoltre, non richiedono l'uso di metadati associati agli item.

# SLIDE 8: Recommendation Algorithm
- L'algoritmo di raccomandazione, il cui funzionamento è visibile nell'**immagine a sinistra**, chiamato User-based Collaborative Filter basa tutto 
il suo funzionamento sulla comunità di utenti, maggiore è la sua dimensione e l'interazione degli utenti con gli item e migliori possono essere le 
raccomandazioni. Questo algoritmo fornisce dei suggerimenti a un utente sulla base di uno o più vicini neighbours, e la similarità tra di essi può 
essere determinata sulla base degli item che l'utente ha utilizzato o valutato.

    FASE 1: specificare quale sia l'utente a cui si vuole applicare l'algoritmo di raccomandazione e recuperare i relativi utenti che possono avere 
    dato valutazioni o usato item simili al primo utente

    FASE 2: estrarre gli item con cui il primo utente non ha mai interagito e per questo motivo gli possono interessare

- HO APPLICATO L'UB-CF NELLA SOLUZIONE PER GLI UTENTI
### ESEMPIO UB-CF
Preso l'utente arancione, al quale vogliamo raccomandare un insieme di item, e altri N utenti, si va a ricercare quali sono gli utenti con uno 
storico di item usati simile, in questo caso è il primo utente a partire dall'alto; infatti è possibile notare che quest ultimo ha usato gli item
A, B, e C mentre il nostro utente ha usato gli item B, C; avendo un numero di item in comune alto si può dire che i due utenti hanno degli interessi
simili quindi è possibile che l'item C, non usato dal nostro utente, sia di suo interesse. Per questo motivo gli potrà essere consigliato sottoforma
di raccomandazione.

- Quando l'algoritmo UB-CF, il cui funzionamento è visibile nell'**immagine di destra** viene applicato per milioni di utenti e item non è molto 
efficiente per via della complessità computazionale richiesta dalla ricerca di utenti simili. Per questo motivo venne ideata come alternativa il 
sistema Filtraggio Collaborativo Item-based dove si è preferito evitare di confrontare utenti simili, e al suo posto viene effettuato un confronto 
tra gli item dell'utente a cui si vuole raccomandare e i possibili item simili.
- HO APPLICATO L'IB-CF NELLA SOLUZIONE PER DETERMINARE EVALUATIONE E TARGET INSERITI E USATI DALL'UTENTE
### ESEMPIO IB-CF
In questa situazione per determinare quale/i item consigliare all'utente arancione, avendo lui utilizzato l'item C, si va ad effettuare un 
matching con gli item all'interno della base di dati che possono essere simili all'item C, e quelli simili vengono raccomandati all'utente.


# SLIDE 9: Soluzione
La soluzione proposta in questa tesi implementa in sostanza diverse funzioni di raccomandazione a seconda dell'URL e del metodo della chiamata 
effettuata dalla richiesta HTTP e restituisce i riferimenti agli item da raccomandare sottoforma di risposta HTTP in formato JSON. 
I possibili algoritmi di raccomandazione che è possibile richiamare sono 3:
- User-based algorithm per l'utente effettua le operazioni descritte nella slide precedente per lo User-based Collaborative Filter
- Item-based algorithm per Evaluation usata dall'utente o per il target che l'utente vuole proteggere, in entrambi i casi vengono resistuite delle 
Evaluation compatibili o simili per le Evaluation indicata o per l'asset dell'utente.
- Hybrid algorithm per l'utente cerca di mettere insieme le raccomandazione prodotte dagli altri due algoritmi.


# SLIDE 9: Soluzione (2)
Un possibile caso di funzionamento del sistema di raccomandazione proposto in questa soluzione è il seguente mostrato nella figura; quando un utente 
decide di voler eseguire una nuova Evaluation egli la può selezionare tra quelle proposte da Moon Cloud attraverso la Dashboard principale, a quel 
punto a partire dal core di Moon Cloud viene inviata una richiesta HTTP con metodo GET a uno specifico URL, in quel momento il Sistema di 
Raccomandazione che è in ascolto, riceve la richiesta, sulla base dell'URL e del metodo capisce quale algoritmo di raccomandazione utilizzare, 
estrae i dati dall'URL, in particolare il riferimento all'interno della base di dati dell'Evaluation, effettua delle operazione di matching sui dati
in suo possesso e restituisce sottoforma di risposta HTTP in formato JSON la lista dei riferimenti alle Evaluation simili a quella che ha ricevuto 
in ingresso; a questo punto attraverso la dashboard l'utente le può visionare e scegliere.


# SLIDE 10: Conclusioni (1m)
Il sistema di raccomandazione sviluppato in questo tesi offre delle raccomandazioni di tipo basico, tuttavia è in grado di 
supportare gli utenti nell'utilizzo della piattaforma Moon Cloud. Offre altresì spunti di miglioramento, ad esempio 
l'introduzione di un sistema di valutazione delle Evaluation o dei Controlli da parte dell'utente così da incrementare 
la precisione del sistema di raccomandazione, il quale terrebbe conto anche di queste valutazioni.

