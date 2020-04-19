;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(progn (define-key key-translation-map (kbd ";") (kbd ":"))
       (define-key key-translation-map (kbd ":") (kbd ";")))

(setq doom-font (font-spec :family "Iosevka" :size 13))

(setq doom-theme 'doom-solarized-light)
(setq org-directory "~/org/")
(setq display-line-numbers-type nil)

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))

(use-package hl-line+
  :config
  (hl-line-when-idle-interval 0.3)
  (toggle-hl-line-when-idle t))

(map! :leader
      :desc "swiper" "/" #'swiper
      :desc "search project" "d" #'+default/search-project)

(map! :desc "save" "s-." #'evil-write-all)
(map! :desc "universal argument" "C-s-u" #'universal-argument)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.
