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

### Méta-régression multiple
- Elle utilise plusieurs prédicteurs (variables) pour prédire (évaluer) la différence dans les effets obtenus
- _Interactions_ : Signifie que la relation entre une predictor variable (x1) et la grandeur de l'effet change selon les différentes valeurs d'une predictor variable (x2)
