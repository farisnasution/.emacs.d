(add-to-list 'auto-mode-alist '("\\.clj\\" . clojure-mode) t)
(show-paren-mode 2)
(setq show-paren-style 'parenthesis)
(electric-pair-mode 1)
(global-hl-line-mode 1)

(require 'rainbow-delimiters)
(require 'ac-nrepl)

(add-hook 'clojure-mode-hook (lambda () (paredit-mode)))
(add-hook 'clojure-mode-hook (lambda () (rainbow-delimiters-mode)))
(add-hook 'clojure-mode-hook (lambda () 
			       (local-set-key (kbd "RET") 'newline-and-indent)))
(add-hook 'clojure-mode-hook (lambda () (auto-complete-mode)))

(add-hook 'cider-nrepl-mode-hook (lambda () (ac-nrepl-setup)))
(add-hook 'cider-mode-hook (lambda () (ac-nrepl-setup)))
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(eval-after-load "auto-complete" '(add-to-list 'ac-modes 'cider-repl-mode))

(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-prompt-save-file-on-load nil)
(setq cider-repl-result-prefix ";; => ")

(provide 'init-clojure)
