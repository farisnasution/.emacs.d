(require 'package)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

(package-initialize)

(defun require-package (package-name)
  (when (not (package-installed-p package-name))
    (package-install package-name)))

(defun require-packages (package-names)
  (package-refresh-contents)
  (dolist (p package-names) (require-package p)))

(provide 'init-packages)
