(require 'evil)
(require 'key-chord)
(evil-mode 1)

(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(key-chord-define-global "gt" 'other-window)
(add-hook 'clojure-mode-hook (lambda () (key-chord-define clojure-mode-map "gj" 'cider-jack-in)))

(provide 'init-evil)
