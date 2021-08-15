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
(setq doom-font (font-spec :family "Droid Sans Mono" :size 26 :weight 'semi-light))
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
;; doom-one doom-dracula doom-vibrant
(setq doom-theme 'doom-dracula)

;; org
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")
;; (setq org-roam-directory "~/org/")
(setq org-superstar-headline-bullets-list '("☰" "☷" "☭"))
(setq org-startup-folded t)
(setq org-startup-indented t)
(setq org-ellipsis "▼")

;; line numbers
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type nil)


;; scrolling better
(setq scroll-conservatively 1000
      scroll-margin 2)

;; change emacs repo's source
;; (setq configuration-layer-elpa-archives
;;       '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;         ("nongnu"       . "https://elpa.nongnu.org/nongnu/")
;;         ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

;; no backup fill
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

;; (tool-bar-mode 0)
;; (menu-bar-mode 0)
;; (scroll-bar-mode 0)

(add-hook! '+doom-dashboard-functions :append
  (insert "\n" (+doom-dashboard--center +doom-dashboard--width "Powered by Emacs!")))

;;  home cursor
;; ( setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))

;; fast search use spc jj
(setq avy-all-windows t)
(map! :leader
      :prefix "j"
      :desc "avy-goto-char-timer" "j" #'avy-goto-char-timer)

;; word count
;; (setq doom-modeline-enable-word-count t)

;; @oeyoews
;; When I bring up Doom's scratch buffer with SPC x, it's often to play with
;; elisp or note something down (that isn't worth an entry in my org files). I
;; can do both in `lisp-interaction-mode'.
;; (setq doom-scratch-initial-major-mode 'lisp-interaction-mode)

;; IMO, modern editors have trained a bad habit into us all: a burning need for
;; completion all the time -- as we type, as we breathe, as we pray to the
;; ancient ones -- but how often do you *really* need that information? I say
;; rarely. So opt for manual completion:
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
;; (add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

;;; :editor evil
;; Focus new window after splitting
(setq evil-split-window-below t
      evil-vsplit-window-right t)

;; Hide the menu for as minimalistic a startup screen as possible.
;; (remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)

;; rename doom homepage
(setq doom-fallback-buffer-name "Doom"
      +doom-dashboard-name "Doom")

;; use yasnipets
(setq yas-triggers-in-field t)

;; ispell tips error
(setq company-ispell-dictionary ispell-dictionary)

(setq ispell-alternate-dictionary ispell-alternate-dictionary)
