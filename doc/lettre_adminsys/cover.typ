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

= Recherche d'un stage d'administration systèmes de 12 semaines  

#v(20pt)


Madame, Monsieur,

\
Actuellement étudiant à l’ENSIIE, je me spécialise en administration système et réseaux, avec une forte compétence en environnement Linux et en gestion de services auto-hébergés. À la recherche d’un stage de 12 semaines, je souhaite évoluer dans un cadre qui me permette de contribuer à la maintenance et l’optimisation de systèmes critiques. Ayant une solide expérience en administration Linux (Debian, Ubuntu, Arch), en virtualisation (Proxmox) et en configuration de services réseaux (VPN, DNS, proxies inverses), je suis convaincu de pouvoir apporter mes compétences à votre entreprise.

\
Votre entreprise, #company , dont les projets en infrastructure système et réseau sont reconnus pour leur fiabilité et leur performance, représente pour moi l’opportunité idéale pour développer mon expertise dans ce domaine. Je suis particulièrement motivé par la perspective de rejoindre une entreprise comme #company qui valorise les compétences en administration système dans des environnements multi-services et multi-utilisateurs.


\
Mon implication en tant que secrétaire général d’ARISE et mes projets personnels, comme l’infrastructure auto-hébergée que j’ai mise en place (avec DNS, gestion de conteneurs et monitoring), m’ont permis d’acquérir des compétences en gestion d’infrastructures sécurisées. Ces expériences me rendent rapidement opérationnel et apte à contribuer au maintien et à l’évolution de vos systèmes. De plus, mon intérêt pour l’open source et mon sens de l’organisation me permettent d’aborder chaque mission avec rigueur et motivation.

\
Je vous remercie pour l’attention portée à ma candidature et me tiens à votre disposition pour un entretien. Dans l’attente de votre retour, je vous prie d’agréer, Madame, Monsieur, l’expression de mes salutations distinguées.

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

