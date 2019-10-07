
;; Melpa Packages Setup
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; Disable Backups
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Opinionated Stuff
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; Alias yes/no ->  y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; Show Clock
(setq display-time t
      display-time-24hr-format t)
(display-time)

;; Aliases
(defalias 'cr 'comment-region)
(defalias 'uc 'uncomment-region)
(defalias 'rs 'replace-string)

;; No Startup Screen
(custom-set-variables
 '(inhibit-startup-screen t))

;; Highlight Matching Brackets
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'mixed)
(require 'paren)
(set-face-background 'show-paren-match-face "#A31C1C")
(set-face-foreground 'show-paren-match-face "#def")
(set-face-foreground 'show-paren-mismatch-face "red")
(set-face-attribute 'show-paren-mismatch-face nil
                    :weight 'bold :underline t :overline nil :slant 'normal)
