;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Dmitriy Maksimovich"
      user-mail-address "1dimakss@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)

;; global
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(setq display-line-numbers-type t) ;; nil relative t
(setq which-key-idle-delay 0) ;; no delay on SPC

;; helm
(add-to-list 'helm-ff-lynx-style-map t) ;; arrow navigation for helm

;; lsp
(setq lsp-enable-file-watchers nil)

;; key bindings
(setq evil-snipe-override-evil-repeat-keys nil) ;; remove defaul hotkey ','
(setq doom-localleader-key ",")
(setq doom-localleader-alt-key "M-,")
(map!
      "M-1"  #'winum-select-window-1
      "M-2"  #'winum-select-window-2
      "M-3"  #'winum-select-window-3
      "M-4"  #'winum-select-window-4
      "M-5"  #'winum-select-window-5
      "M-6"  #'winum-select-window-6
      "M-7"  #'winum-select-window-7
      "M-8"  #'winum-select-window-8
      "M-9"  #'winum-select-window-9
 )

;; (define-key map (kbd "M-4") 'winum-select-window-4)

;; org
(setq org-directory "~/Documents/org/")
(setq org-superstar-headline-bullets-list '("#" "#" "#" "#"))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
