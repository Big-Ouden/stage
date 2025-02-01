#let metadata = toml("info.toml")

#import metadata.import.path: cover-letter, recipient-entry, cv-section
#import "@preview/fontawesome:0.4.0": *

#let first-name = metadata.personal.first_name
#let last-name = metadata.personal.last_name
#let text-size = eval(metadata.layout.text.cover_letter_size)

#show: cover-letter.with(metadata)
#set text(size: text-size)

#let company = "ATOS"

// #recipient-entry(
//   name: "",
//   title: "",
//   company: [#company],
//   address: "" 
// )

#v(50pt)

#datetime.today().display("[day]/[month]/[year]")

= Recherche d'un stage DevOps de 12 semaines  

#v(20pt)



Madame, Monsieur,

\
Actuellement étudiant à l’ENSIIE, école spécialisée en informatique et mathématiques, je m’intéresse particulièrement au domaine du calcul haute performance (HPC). Passionné par les technologies de pointe et la résolution de problématiques complexes, je souhaite réaliser un stage de 12 semaines qui me permette de développer mes compétences dans un environnement innovant. Maîtrisant des outils tels que MPI, C/C++ et Linux (kernel), je suis à la recherche d’un stage où je pourrais mettre à profit mes connaissances et apprendre aux côtés d’experts autour du sujet du HPC ou de l'administration système de ces infrastructures.

\
Votre entreprise, #company, reconnue pour son expertise en HPC et ses innovations dans la gestion d’infrastructures de calcul intensif, est pour moi le cadre idéal pour acquérir une première expérience significative dans ce domaine. La réputation de #company en matière d’innovation et ses projets ambitieux m’ont convaincu de l’impact que cette expérience pourrait avoir sur mon parcours professionnel.

\
Mes expériences associatives, notamment au sein d’ARISE gérant les services informatique de l'ENSIIE, m’ont permis d’acquérir des compétences solides en gestion d’infrastructures et de services (déploiement de Gitlab, Nextcloud, etc.) et de renforcer ma maîtrise des environnements open source. Je suis convaincu qu’un stage chez #company me permettra de progresser en collaborant avec vos équipes, et je m’engage à apporter mon enthousiasme, mes compétences techniques et mon esprit d’analyse à vos projets.

\
Je vous remercie de l’attention portée à ma candidature et reste disponible pour toute information complémentaire. Dans l’attente d’un entretien, je vous prie d’agréer, Madame, Monsieur, l’expression de mes salutations distinguées.

\
#table(
    columns: (1fr, 1fr),
    inset: 0pt,
    stroke: 0pt,
    row-gutter: 3mm,
    align: right,
    [
      #align(left)[
        #first-name #last-name
      ]
    ],
    figure(
    image("signature.png", width: 50%)
  )

)

