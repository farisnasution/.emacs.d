(require 'evil)
(require 'key-chord)
(require 'evil-leader)
(require 'ace-jump-mode)

(global-evil-leader-mode)

(evil-leader/set-leader "<SPC>")

(evil-leader/set-key
 "f" 'find-file
 "d" 'projectile-find-file
 "<SPC>" 'other-window
 "s" 'save-buffer
 "c" 'ace-jump-mode
 "e" 'projectile-find-file-other-window
 "q" 'evil-beginning-of-line
 "w" 'evil-end-of-line
 "k" 'kill-buffer
 "v" 'split-window-vertically
 "h" 'split-window-horizontally
 "1" 'delete-other-windows)

(evil-mode 1)
(key-chord-mode 1)

(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
(add-hook 'clojure-mode-hook (lambda () (key-chord-define clojure-mode-map "gj" 'cider-jack-in)))

(provide 'init-evil)
