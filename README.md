# Stage de recherche
Note pour suivre évolution du stage de recherche

## Plan de travail 
#### Semaine 1
- Apprendre langage Markdown
- Familiariser avec Github
- Familiariser avec RStudio et RMarkdown
- Lire sur Méta-régression linéraire : Livre en ligne
- Lire sur les statistiques Bayesian
- Lire article Jeukendrup 2010 sur absence de relation entre poids et g de CHO à administrer

## Notes d'évolution
### Comprendre le langage Markdown
 - Écriture en _italique_ et en **gras**
 - ##### 6 formats de titre
 - Insérer un lien Web dans le texte [comme ceci](https://github.com/evelyne-telmosse/Note-stage/edit/master/README.md) 
   * Insérer un lien en référence [comme cela](https://github.com/evelyne-telmosse/Note-stage/edit/master/README.md)
 [comme cela] : https://github.com/evelyne-telmosse/Note-stage/edit/master/README.md 
 - Insérer une image dans le texte : ![Nom de l'image](URL)
   * Insérer une image en référence : idem à lien en référence
 - Insérer des citations
   * >"Citation"
 - Créer une liste non ordonnée
   * Sujet
   * Sujet
 - Créer une liste ordonnée
   1. Priorité
   2. Suite
 - Faire des paragraphes
   * Faire un saut de ligne supplémentaire apràs la ligne précédente
   * Si on ne veut pas une grosse coupure : insérer deux espaces apràs la fin de la dernière ligne
 
 ### Apprendre le fonctionnement le GitHub
 - Installation et création d'un compte GitHub
 - Création du dossier Readme.md pour faire plan de travail
 - Familiarisation avec les fonctions de GitHub
   * Issues: 
     * Utile pour suivre/proposer des idées, des améliorations, des tâches ou des bugs/erreurs sur GitHub
     * Possible d'ouvrir un issue sur un code spécifique ou un commentaire en particulier
     * Les labels permettent d'organiser et de prioriser le travai
   * Pullrequest:
     * Utile pour demander aux autres de vérifier un changement fait avant de le soumettre dans la version finale grâce aux branches
   * Project
     * Utile pour créer une liste de tâches ou de travaux à faire
     * Personnalisation selon les besoins

### Appliquer RMarkdown dans R
- Ajout des chunks R afin d'inscrire des codes 
- Permet de laisser des notes sur les codes réalisés
- Prendre un dossier csv et créer un htlm avec les données du dossier organisées comme désiré. Le dossier html contient du texte et des codes.

### Méta-régression
- Elle permet d'étudier la relation entre une ou plusieurs caractéristiques d'étude et l'importance de l'effet du traitement
- Elle peut être utilisées en cas d'hétérpgéniété entre les études ou lorsqu'on combine des études ayant différentes caractéristiques (ex prévention primaire/secondaire)
- Ne diffère pas beaucoup d'une analyse de sous-groupe, mais comprend des "categorical predictor". Les variables en continue peuvent être utilisées comme indicateurs (ex: IMC). Lorsqu'elles sont opposées, ces variables sont notés "0" et "1" afin de différencier les deux variables (ex: le sexe) et lorsqu'elles représentent des catégories et qu'elles sont ordinales, les valeurs "0" et "1" indiquer la présence ou l'absence d'un effet ou d'une condition (ex: être en sous-poids, normal, surpoids ou obèse).

#### Méta-régression multiple
- Elle utilise plusieurs prédicteurs (variables) pour prédire (évaluer) la différence dans les effets obtenus
- _Interactions_ : Signifie que la relation entre une predictor variable (x1) et la grandeur de l'effet change selon les différentes valeurs d'une predictor variable (x2)

### Statistique bayesienne
##### Les bases
- Utilsées avec des petits échantillons et ne nécessite pas nécessairement d'hypothèse, ce qui rend utile l'exploration des données

*Inférence statistique* : Ensemble de techniques permettant d'induire les caractéristiques d'une groupe général (population) à partir des celles d'un groupe (échantillon) en fournissant une probabilité d'erreur. Méthode permettant de tirer des conclusions fiables à partir de données d'échantillons statistiques.

*Théorème de Bayes* : Énonce des probabilités conditionnelles. Possible de comparer le nombre d'hypothèse que l'on veut. Pour chaque condition (hypothèse), une VVP est attribuée donnant la probabilité a posteriori des chaque condition.

*Probabilité a priori* : Estimation de la probabilité d'avoir A avant le test B par les connaissances antérieures. Connaissances avant la réalisation du test et en l'absence de d'autres informations sur les sujets

*Probabilité a posteriori*: Probabilité d'avoir A sachant le résultat de B (VVP de A). Connaissance du résultat du test et donc après l'incorporation de l'information obtenu (résultat du test B)

*VVP* : Valeur prédictive positive = la probabilité d'avoir A lorsqu'on connait B. Cela combien l'info a priori et le résultat du test B. La VVP la plus élevée indique l'hypothèse la plus probable.

Les méthodes bayésiennes permettent d'introduire une probabilité a priori, ce qui permet de fournir des informations et une conclusion plus nuancée comparé aux méthodes classiques étant donné qu'elles tiennent compte des études antérieures et des avis d'expert. On combien les données observées lors de l'expérimentation ainsi que les données antérieures pour conclure.

#### Semaine 2
- Explorer les relations avec différentes variables dans le dossier choexo dans R
- Lire Jeukendrup, thèse Jonathan et autres articles sur le sujet pour m'ouvrir de nouvelles idées de relation
- Regarder formation R suggérés par Pierre (udemy)
- Continuer familiarisation avec statistique bayesienne et méta-régression

### Article Jeukendrup 2010
Absence de relation entre la masse de l'individu et l'oxydation de glucides à l'exercice
- Les différences ohservées entre les individus dans l'oxydation des glucides sont probablement dûes à des limitations dans l'absorption du glucose, ce qui est totalement indépendant de la masse de l'individu.
- Selon des études, l'oxydation des glucides est dépendante de la quantité de glucides présente dans la diète de l'individu, c'est-à-dire que ceux ayant une diète élevée en glucides ont plus de transporteurs intestinaux et donc peuvnet mieux absorber et oxyder le glucose.
- Donc la différence ne dépend pas de la masse, mais de la capacité à absorber les glucides. Les recommandations doivent donc être faites en quantité absolue et non relatifs à chacun.

### Exploration des données de la méta-analyse dans R
- Réorganisation des données en éliminant certaines colonnes du tableau dans mon ficher csv
- Première tentative d'exploration des données en faisant des graphiques pour représenter la relation entre le taux d'oxydation et la dose. Séparation de ces données selon les différentes années. Filtrer les années en ne gardant que les articles à partir de 2010. 

## Relations entre les données
- Relation entre taux d'oxydation et concentration : année en couleur
- Relation entre taux d'oxydation et taux d'ingestion : masse des individus en couleur
- Relation entre dose en gramme, la masse des individus et le taux d'oxydation
 - Création de graphique pour voir la corrélation. Graphique exporté. 

### Formation R
- Consulter d'autres formations sur R afin d'en apprendre plus sur les graphiques et sur l'organisation des données
 - Graphiques bar, boxplot, violin, histogram, col, smooth
 - Combinaison de graphiques dans un seul HTML
 - Mettre les intervalles d'erreur (sd et stderr) dans les graphiques avec geom_errorbar
 - Thème classique en blanc
 - Jouer avec les couleurs des échelles : scale_colour_gradient
 - Voir tous les types d'échelle de couleur et choisir celle que je veux : installer le package RColorBrewer et la library. Ensuite, scale_colour_distiller
- Chercher quelques instructions sur des sites internets pour m'aider avec certaines fonctions.
- À regarder: Formation R et Rmarkdown envoyé par Jonathan
- 
