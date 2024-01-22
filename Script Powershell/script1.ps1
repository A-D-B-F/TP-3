#  Prend en paramètre le chemin vers un dossier ($path) et y liste les fichiers 
#  plus gros qu’une certaine taille en kilooctets ($size). Ces deux paramètres sont 
#  facultatifs : 


param(
   $path = (Get-Location).Path,
   $size = 0 
)
    $sizeMB= $size * 1MB # taille en mega octet pour determiner le filtre

Set-Location -Path $path  # Naviguer vers $path 

# Recuperer les fichier du dossier recontrant la taille minimum defini par $size

# Obtenir info sur les elements  contenues dans le dosier $path 
# La methode est Get-ChildItem -Path est pour indique le chemin et $path est la variable du chemin dans le registre

$location=Get-ChildItem -Path $path 

# Filtrer en fonction de la taille minimale, la veleur etant regrouppee dans la variable $size 
# Where-Object`{}` est une methode pour filtrer, la condition est entre { element à parcourir, comparaison avec ...}
# En powerShell $_ est le retour de la fonction précédente.
# commme en Js let objet - document.querySelectorAll(); qui sera tjrs un tableau

                # objet.length plus grand que la taille minimum

$selection= $location | Where-Object { $_.Length -gt $sizeMB } 


#  Afficher les proprietes nom et taille de fichier resultant de du filtrage. 
# Select-Object FullName, Length

$selection |  Select-Object FullName, Length


# possibilité de fournir le chat complet de la démarche
# 













