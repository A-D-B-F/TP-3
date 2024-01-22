# Ce script permet de gérer les services Windows. Il reçoit deux paramètres :
#    • Le nom d’un service ($name). S’il s’agit du seul paramètre reçu, recherchez 
#      tous les services ayant ce nom (correspondance partielle) et affichez-les.
#    • L’état d’un service ($status), soit Running ou Stopped. Si reçu avec le nom 
#      d’un service (correspondance exacte), le script change l’état actuel du 
#      service pour le nouvel état reçu.
#  Si le script est utilisé sans aucun paramètre, il affiche simplement la liste de tous 
#  les services sur le système. *\