#!/bin/bash/


# Ce script prend en paramètre un nom d’utilisateur (name) et un groupe (group). Il
# effectue ensuite plusieurs opérations.
# Pour commencer, le script crée l’utilisateur, et s’il existe déjà, s’arrête avec un
# message d’erreur. Le script crée ensuite le groupe, mais s’il existe déjà, le script
# poursuit son exécution avec un simple message informatif.
# Il ajoute ensuite le nom de l’utilisateur dans un fichier portant le nom du groupe
# dans le dossier /home. Par exemple, si le nom du groupe est student, le chemin vers
# ce fichier est /home/student. Ce fichier doit appartenir à l’utilisateur root et au
# groupe auquel il correspond. Tout le monde peut lire le fichier, mais seul rootpeut
# y écrire. Personne ne peut exécuter ce fichier.