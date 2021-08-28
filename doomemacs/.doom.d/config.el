;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Tutorial for doom:
;; https://tecosaur.github.io/emacs-config/config.html
;; https://learnxinyminutes.com/docs/zh-cn/elisp-cn/
;; https://www.cheng92.com/emacs/doom-emacs-with-org/
;; Tutorial: https://learnxinyminutes.com/docs/zh-cn/elisp-cn/
;; http://smacs.github.io/elisp/
;;
;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "oeyoews"
      user-mail-address "oeyoews@jyao4783.gmail")

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
(setq doom-font (font-spec :family "DeJaVu Sans Mono" :size 26 :weight 'regular))
;;       doom-variable-pitch-font (font-spec :family "sans" :size 16))
;; (setq doom-font (font-spec :family "Droid Sans Mono" :size 20))
;; doom-variable-pitch-font (font-spec :family "sans" :size 16))

;;; Add to ~/.doom.d/config.el
;; (setq doom-font (font-spec :family "Droid Sans Mono" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "Fira Sans") ; inherits `doom-font''s :size
;;       doom-unicode-font (font-spec :family "Droid Sans Mono" :size 12)
;;       doom-big-font (font-spec :family "Fira Mono" :size 19))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; doom-one doom-dracula doom-vibrant 'doom-solarized-dark
(setq doom-theme 'doom-one)

(setq org-directory "~/org/")
(setq org-superstar-headline-bullets-list '("☰" "☷" "☭" ))
(setq org-startup-folded t)
(setq org-startup-indented t)
(setq org-ellipsis "▼")

(setq display-line-numbers-type `relative)

(setq scroll-conservatively 1000
      scroll-margin 5)

(setq make-backup-files nil)
(setq company-idle-delay 0.1)

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


;; (pushnew! initial-frame-alist '(width . 200) '(height . 55))
;; (add-hook 'window-setup-hook #'toggle-frame-maximized)
(add-hook 'window-setup-hook #'toggle-frame-fullscreen)
;; (setq frame-resize-pixelwise t)

;; (add-hook! '+doom-dashboard-functions :append
;;   (insert "\n" (+doom-dashboard--center +doom-dashboard--width "Powered by Emacs!")))

;;  home cursor
;; ( setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))

;; fast search use spc jj
(setq avy-all-windows t)
(map! :leader
      :prefix "j"
      :desc "avy-goto-char-timer" "j" #'avy-goto-char-timer)

(setq doom-modeline-enable-word-count t)

(setq doom-scratch-initial-major-mode 'lisp-interaction-mode)

(setq company-idle-delay 0.1)

;; Disable invasive lsp-mode features
(setq lsp-ui-sideline-enable nil   ; not anymore useful than flycheck
      lsp-ui-doc-enable nil        ; slow and redundant with K
      lsp-enable-symbol-highlighting nil
      ;; If an LSP server isn't present when I start a prog-mode buffer, you
      ;; don't need to tell me. I know. On some systems I don't care to have a
      ;; whole development environment for some ecosystems.
      +lsp-prompt-to-install-server 'quiet)

;; Prevents some cases of Emacs flickering
(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;; Focus new window after splitting
(setq evil-split-window-below t
      evil-vsplit-window-right t)

;; Hide the menu for as minimalistic a startup screen as possible.
;; (remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)

;; rename doom homepage
(setq doom-fallback-buffer-name "Home"
      +doom-dashboard-name "Home")

;; use yasnipets
(setq yas-triggers-in-field t)

; (spell-checking :variables
;;                 ispell-program-name "aspell"
;;                 ispell-dictionary "american"
;; spell-checking-enable-by-default nil
;; )

(setq-default ispell-program-name "aspell")
(ispell-change-dictionary "american" t)

;; fast quit emacs
(setq confirm-kill-emacs nil)

;; (setq fancy-splash-image (concat doom-private-dir "splash.png"))
;;
;; "Welcome to                                 "
;; "███████╗███╗   ███╗ █████╗  ██████╗███████╗"
;; "██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝"
;; "█████╗  ██╔████╔██║███████║██║     ███████╗"
;; "██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║"
;; "███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║"
;; "╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝"
;; ============================================
;; (let* ((banner '("⢸⣿⣿⣿⣿⠃⠄⢀⣴⡾⠃⠄⠄⠄⠄⠄⠈⠺⠟⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣶⣤⡀⠄"
;;                  "⢸⣿⣿⣿⡟⢀⣴⣿⡿⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣸⣿⣿⣿⣿⣿⣿⣿⣷"
;;                  "⢸⣿⣿⠟⣴⣿⡿⡟⡼⢹⣷⢲⡶⣖⣾⣶⢄⠄⠄⠄⠄⠄⢀⣼⣿⢿⣿⣿⣿⣿⣿⣿⣿"
;;                  "⢸⣿⢫⣾⣿⡟⣾⡸⢠⡿⢳⡿⠍⣼⣿⢏⣿⣷⢄⡀⠄⢠⣾⢻⣿⣸⣿⣿⣿⣿⣿⣿⣿"
;;                  "⡿⣡⣿⣿⡟⡼⡁⠁⣰⠂⡾⠉⢨⣿⠃⣿⡿⠍⣾⣟⢤⣿⢇⣿⢇⣿⣿⢿⣿⣿⣿⣿⣿"
;;                  "⣱⣿⣿⡟⡐⣰⣧⡷⣿⣴⣧⣤⣼⣯⢸⡿⠁⣰⠟⢀⣼⠏⣲⠏⢸⣿⡟⣿⣿⣿⣿⣿⣿"
;;                  "⣿⣿⡟⠁⠄⠟⣁⠄⢡⣿⣿⣿⣿⣿⣿⣦⣼⢟⢀⡼⠃⡹⠃⡀⢸⡿⢸⣿⣿⣿⣿⣿⡟"
;;                  "⣿⣿⠃⠄⢀⣾⠋⠓⢰⣿⣿⣿⣿⣿⣿⠿⣿⣿⣾⣅⢔⣕⡇⡇⡼⢁⣿⣿⣿⣿⣿⣿⢣"
;;                  "⣿⡟⠄⠄⣾⣇⠷⣢⣿⣿⣿⣿⣿⣿⣿⣭⣀⡈⠙⢿⣿⣿⡇⡧⢁⣾⣿⣿⣿⣿⣿⢏⣾"
;;                  "⣿⡇⠄⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢻⠇⠄⠄⢿⣿⡇⢡⣾⣿⣿⣿⣿⣿⣏⣼⣿"
;;                  "⣿⣷⢰⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⣧⣀⡄⢀⠘⡿⣰⣿⣿⣿⣿⣿⣿⠟⣼⣿⣿"
;;                  "⢹⣿⢸⣿⣿⠟⠻⢿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣉⣤⣿⢈⣼⣿⣿⣿⣿⣿⣿⠏⣾⣹⣿⣿"
;;                  "⢸⠇⡜⣿⡟⠄⠄⠄⠈⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟⣱⣻⣿⣿⣿⣿⣿⠟⠁⢳⠃⣿⣿⣿"
;;                  "⠄⣰⡗⠹⣿⣄⠄⠄⠄⢀⣿⣿⣿⣿⣿⣿⠟⣅⣥⣿⣿⣿⣿⠿⠋⠄⠄⣾⡌⢠⣿⡿⠃"
;;                  "⠜⠋⢠⣷⢻⣿⣿⣶⣾⣿⣿⣿⣿⠿⣛⣥⣾⣿⠿⠟⠛⠉⠄⠄          "))
(defun my-weebery-is-always-greater ()
  (let* ((banner '("Welcome to                                "
                   "███████╗███╗   ███╗ █████╗  ██████╗███████╗"
                   "██╔════╝████╗ ████║██╔══██╗██╔════╝██╔════╝"
                   "█████╗  ██╔████╔██║███████║██║     ███████╗"
                   "██╔══╝  ██║╚██╔╝██║██╔══██║██║     ╚════██║"
                   "███████╗██║ ╚═╝ ██║██║  ██║╚██████╗███████║"
                   "╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚══════╝"
                   "                                           "))
         (longest-line (apply #'max (mapcar #'length banner))))
    (put-text-property
     (point)
     (dolist (line banner (point))
       (insert (+doom-dashboard--center
                +doom-dashboard--width
                (concat line (make-string (max 0 (- longest-line (length line))) 32)))
               "\n"))
     'face 'doom-dashboard-banner)))
(setq +doom-dashboard-ascii-banner-fn #'my-weebery-is-always-greater)
