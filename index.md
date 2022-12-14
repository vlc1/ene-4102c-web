---
title: Méthodes numériques pour l'Énergétique et la Thermique
author: Vincent Le Chenadec
---

# CM

Les documents présentés en cours sont disponible [ici](https://drive.google.com/drive/folders/19xR_Mkr8l-vc431Vd6tm2Z3tX-jpG35t?usp=share_link).

## CM du 27/11/2022

Le *notebook* réalisé en cours est disponible [ici](notebook/cours-3.html).

# TD

## TD du 22/11/2022

[Feuille d'exercice](exercices/td1.pdf).

## TD du 14/12/2022

[Notebook](notebook/assembly.html) sur l'assemblage de matrices pour la résolution de l'équation de la conduction en régime stationnaire.

# TP

## TP 1 (22/11/2022)

Pour celles ou ceux qui souhaite participer à distance, merci de bien vouloir utiliser la réunion Zoom référencée ci-dessous:

- <https://cnrs.zoom.us/j/97769452745?pwd=em1pbi9NT1BqSFY3dlUrZWJMOFBDdz09>
- *Meeting ID*: `977 6945 2745`
- *Passcode*: `0DtwFN`

L'objectif du premier TP est de se familiariser avec les schémas dits *à pas unique* pour la résolution de problèmes de Cauchy.

1. Il a été montré en cours que la mise à jour d'une solution numérique d'un problème de Cauchy se fait à partir d'une relation de récurrence d'une suite implicite. Il faut résoudre numériquement des systèmes d'équations algébriquesnon-linéaires, ce sur quoi se concentre le [premier cahier](notebook/algebraic.html).
1. Le [deuxième cahier](notebook/cauchy.html) présente l'implémentation d'un solveur numérique pour le problème de Cauchy non-trivial le plus simple qui soit, celui du modèle scalaire homogène linéaire et autonome de la désintégration radioactive). On explorera plusieurs notions vues en cours, à savoir la stabilité et la précision.
1. Le [troisième et dernier cahier](notebook/lotka-volterra.html) montre enfin comment cette implémentation peut être utilisée pour la résolution de modèles plus complex, comme de Lotka-Volterra. Il explore enfin l'extension à une autre classe de schéma, celui des méthodes de Runge-Kutta.
