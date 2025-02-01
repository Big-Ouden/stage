#let metadata = toml("info.toml")

#import metadata.import.path: cover-letter, recipient-entry, cv-section
#import "@preview/fontawesome:0.4.0": *

#let first-name = metadata.personal.first_name
#let last-name = metadata.personal.last_name
#let text-size = eval(metadata.layout.text.cover_letter_size)

#show: cover-letter.with(metadata)
#set text(size: text-size)

#let company = "DGSE"

#recipient-entry(
  name: [Monsieur/Madame X],
  title: [Intitule du job],
  company: [#company],
  address: [adresse],
)

#v(10pt)

#datetime.today().display("[day]/[month]/[year]")

= Recherche d'un stage de 12 semaines  

#v(20pt)


Madame, Monsieur,
\

Étudiant en informatique et mathématiques à l’ENSIIE, je me spécialise en administration système, calcul haute performance (HPC) et pratiques DevOps. Motivé par l’idée de mettre mes compétences au service d’une mission de sécurité et de défense, je vous adresse ma candidature pour un stage de 12 semaines au sein de la Direction Générale de la Sécurité Extérieure. Passionné par les enjeux de cybersécurité et d’analyse de données, je souhaite contribuer aux activités de la DGSE, où mes compétences techniques et mon sens de la confidentialité pourraient être mis à profit.

\
L’environnement de la DGSE, avec ses missions de protection et de renseignement, représente pour moi un cadre exceptionnel pour appliquer mes compétences en administration système et en gestion d’infrastructures informatiques critiques. J’ai notamment acquis une solide expérience avec les environnements Linux (Debian, Arch) et les outils d’automatisation (Docker, Proxmox, Git), ainsi qu’une maîtrise des langages de programmation (C, C++, Java) et des technologies de calcul distribué (MPI) – compétences essentielles pour répondre aux exigences de sécurité et de confidentialité qu’implique un poste au sein de votre institution.

\
Au cours de mon parcours, j’ai pu déployer et administrer des services auto-hébergés pour l’association étudiante **ARISE**, contribuant au maintien d’une infrastructure sécurisée pour la communauté de l’ENSIIE. Ces expériences m’ont permis de développer une approche rigoureuse de la gestion d’infrastructures et de renforcer mon sens des responsabilités, tout en maîtrisant des technologies comme les VPN, les DNS et les proxies inverses pour garantir la confidentialité des données. Je suis convaincu qu’un stage à la DGSE serait une opportunité unique de contribuer à des missions sensibles et de perfectionner mes compétences techniques dans un contexte exigeant.

\
En rejoignant votre équipe, je suis prêt à m’investir pleinement pour contribuer aux missions de la DGSE, en apportant mes connaissances techniques, mon sens de l’analyse et mon engagement au service de la sécurité de l’État. Je reste à votre disposition pour un entretien, et je vous remercie de l’attention portée à ma candidature.

Dans l’attente de votre réponse, je vous prie d’agréer, Madame, Monsieur, l’expression de mes salutations distinguées.



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

