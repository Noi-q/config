(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(setq gc-cons-threshold most-positive-fixnum)
;; off Emacs setting
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; off init's Emacs
(setq inhibit-startup-screen t)

(provide 'init-startup)
