(package-initialize)

(custom-set-variables
 '(custom-safe-themes
   (quote
    ("a1ced8afce71aa7c70297b79f18d9aaa1156dff14c3cb44eca84ebc84815a5af" default)))
 '(package-selected-packages (quote (go-mode hcl-mode gnu-elpa-keyring-update))))
(custom-set-faces)

(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; Disable backup files
(setq make-backup-files nil)

;; Use ZenBurn theme always.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

;; Disable the menubar (in CLI mode!)
(menu-bar-mode -1)

;; Highlight matching brackets
(show-paren-mode 1)
