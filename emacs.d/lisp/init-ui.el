;; Theme
(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft t))

;; status bar
;;
;;(use-package smart-mode-line
;;  :init
;;  (setq sml/no-confirm-load-theme t
;;	sml/theme 'respectful)
;;  (sml/setup))


(use-package emacs
  :config
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t))

(provide 'init-ui)
