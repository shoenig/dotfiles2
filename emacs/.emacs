;; ---- packages -----
(require 'package) 

;; melpa
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
  
;; marmalade
(add-to-list 'package-archives
			 '("marmalade" .
			   "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives 
			 '("melpa" . 
			   "http://melpa.milkbox.net/packages/"))


(package-initialize)
;; ------ end packages ------

;; disable backups
(setq backup-inhibited t)
(setq auto-save-default nil)

;; opinionated stuff
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

;; no startup screen
(custom-set-variables
 '(inhibit-startup-screen t))

;; mouse scroll
(mouse-wheel-mode t)

;; scroll one line at a time (less "jumpy" than defaults) 
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; no menu-bar
(menu-bar-mode 0)

;; no tool-bar
(tool-bar-mode -1)

;; no scroll-bar
(scroll-bar-mode -1)

;; auto re-load all buffers
(global-auto-revert-mode)

;; go
(add-to-list 'load-path "/home/seth/.emacs.d/" t)
(require 'go-mode-autoloads)
;; gocode
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)
;; go imports
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; yes/no ->  y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; clock
(setq display-time t
      display-time-24hr-format t)
(display-time)

;; highlight matching brackets
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'mixed)
(require 'paren)
(set-face-background 'show-paren-match-face "#A31C1C")
(set-face-foreground 'show-paren-match-face "#def")
(set-face-foreground 'show-paren-mismatch-face "red")
(set-face-attribute 'show-paren-mismatch-face nil
                    :weight 'bold :underline t :overline nil :slant 'normal)
                    
;; color theme
(load-theme 'tango-dark)                    

;; ============ rapid switch between windows ===============
(global-set-key (kbd "C-<up>") 'windmove-up)
(global-set-key (kbd "C-<down>") 'windmove-down)
(global-set-key (kbd "C-<right>") 'windmove-right)
(global-set-key (kbd "C-<left>") 'windmove-left)
