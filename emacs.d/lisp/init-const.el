;; What System
(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-linux* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))

(provide 'init-const)
