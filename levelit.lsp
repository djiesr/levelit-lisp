// Commande autolisp pour Autocad pour aligner un point cloud en Z
(defun C:Levelit (/)
(setq old-osmode (getvar "osmode"))
(setq old-3dosmode (getvar "3DOSMODE"))
(setvar 3DOSMODE "138")
(setvar osmode "1")
(setq pt1-ref (getpoint "Sélectionnner l'extrémité de la ligne: "))
(setvar osmode "0")
(setvar 3DOSMODE "139")
(setq pt1-move (getpoint "Sélectionnner le point à aligner: "))
(setvar 3DOSMODE "138")
(setvar osmode "1")
(setq pt2-ref (getpoint "Sélectionnner l'autre extrémité de la ligne: "))
(setvar osmode "0")
(setvar 3DOSMODE "139")
(setq pt2-move (getpoint "Sélectionnner le point à aligner: "))
(commmand "_align" pt1-move ".xy" pt1-move pt1-ref)
(commmand "_align" pt1-move ".xy" pt1-move pt1-ref)
(setvar osmode old-osmode)
(setvar 3DOSMODE old-3dosmode)
)
