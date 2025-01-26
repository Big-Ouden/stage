#let metadata = toml("info.toml")

#import metadata.import.path: cover-letter, recipient-entry, cv-section
#import "@preview/fontawesome:0.4.0": *

#let first-name = metadata.personal.first_name
#let last-name = metadata.personal.last_name
#let text-size = eval(metadata.layout.text.cover_letter_size)

#show: cover-letter.with(metadata)
#set text(size: text-size)

#let company = "[nom de l'entreprise]"

#recipient-entry(
  name: [Monsieur/Madame X],
  title: [Intitule du job],
  company: [#company],
  address: [adresse],
)

#v(50pt)

#datetime.today().display("[day]/[month]/[year]")

= Recherche d'un stage DevOps de 12 semaines  

#v(20pt)



Madame, Monsieur,

Étudiant à l’ENSIIE, je suis passionné par l’intégration de pratiques DevOps et la gestion d’infrastructures automatisées. À la recherche d’un stage de 12 semaines, je souhaite mettre en pratique et approfondir mes connaissances en DevOps dans un environnement stimulant. Ayant une solide maîtrise de Docker, des proxies inverses (Traefik), et de l’automatisation de services, je suis convaincu que mon profil pourrait être un atout pour vos équipes.

\
Votre entreprise, #company , reconnue pour ses innovations dans le domaine de l’automatisation et de la gestion des infrastructures, m’apparaît comme un cadre idéal pour progresser dans mes compétences DevOps. Je suis particulièrement intéressé par les projets de #company qui mettent l’accent sur l’automatisation et l’optimisation des services, et je serais heureux de contribuer à ces missions tout en consolidant mon expérience.

\
Mon rôle de secrétaire général au sein de l’association ARISE m’a permis de gérer des projets tels que le déploiement de services auto-hébergés (Nextcloud, Gitlab) et de maintenir une infrastructure pour la communauté étudiante, renforçant mes compétences en automatisation et sécurité. J’ai également développé des solutions de virtualisation avec Proxmox, ce qui me permet de maîtriser la gestion de conteneurs et de machines virtuelles dans des environnements hybrides. Ces expériences associatives, couplées à mon goût pour le travail en équipe, me permettent d’être opérationnel dès le début du stage et d’apporter un réel soutien à vos projets.

\
Je reste à votre disposition pour un éventuel entretien et vous remercie de l’attention portée à ma candidature. Dans l’attente de votre retour, je vous prie d’agréer, Madame, Monsieur, l’expression de mes salutations distinguées.

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

