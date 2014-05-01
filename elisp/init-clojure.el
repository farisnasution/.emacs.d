(add-to-list 'auto-mode-alist '("\\.clj\\" . clojure-mode) t)
(show-paren-mode 2)
(setq show-paren-style 'parenthesis)
(electric-pair-mode 1)
(global-hl-line-mode 1)

(require 'rainbow-delimiters)

;(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook (lambda () (rainbow-delimiters-mode)))

(provide 'init-clojure)

(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-prompt-save-file-on-load nil)
(setq cider-repl-result-prefix ";; => ")

(provide 'init-clojure)
