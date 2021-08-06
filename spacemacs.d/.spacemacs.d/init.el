(defun dotspacemacs/layers ()

  (setq-default
   dotspacemacs-distribution 'spacemacs
  dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t

   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; layers
   dotspacemacs-configuration-layers
   '(markdown
     vimscript
     org
     deft
     ivy
     syntax-checking
     auto-completion
     neotree
     ;; Chinese
     better-defaults
     emacs-lisp
     (shell :variables
            shell-default-term-shell "/bin/bash"
            ;; shell-default-height 50
            shell-default-position 'full))

   ;; additional packages
   dotspacemacs-additional-packages '(pangu-spacing
                                      centaur-tabs
                                      indent-guide
                                      evil-goggles
                                      git-gutter
                                      all-the-icons-ivy-rich)

   dotspacemacs-frozen-packages '()

   ;; vi-tilde-fringe
   dotspacemacs-excluded-packages '()

   ;; install packages just used
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()

  (setq-default
   dotspacemacs-enable-emacs-pdumper nil
   dotspacemacs-emacs-pdumper-executable-file "emacs"
   ;; dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; enable elpa's https
   dotspacemacs-elpa-https t

   ;; timeout checking
   dotspacemacs-elpa-timeout 5

   dotspacemacs-gc-cons '(100000000 0.1)

   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; a package repo
   dotspacemacs-verify-spacelpa-archives t

   ;;为每个 Emacs 版本定义不同的目录
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; mode: hybrid vim emacs
   dotspacemacs-editing-style 'hybrid

   ;; disable show version
   dotspacemacs-startup-buffer-show-version nil

   ;; 'official or nil
   ;; show banner
   dotspacemacs-startup-banner 'random

   ;; show recents file
   dotspacemacs-startup-lists '((recents . 3)
                                (projects . 2))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; list use numbers in homepage
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; new buffer mode
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; scratch mode
   dotspacemacs-scratch-mode 'text-mode

   dotspacemacs-scratch-buffer-persistent nil

   ;; spacemacs theme
   dotspacemacs-themes '(doom-solarized-dark
                         ;; doom-city-lights ;;
                         doom-one
                         ;; spacemacs-dark
                        )

   ; dotspacemacs-themes (if window-system lab-dark)

   ;; dash status: vim-powerline doom spacemacs
   dotspacemacs-mode-line-theme '(vim-powerline  :separator wave :separator-scale 1.2)
   ;; dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.2)
   ;; dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

   ;; 根据光标状态显示颜色
   dotspacemacs-colorize-cursor-according-to-state t

   ;; font settings
   dotspacemacs-default-font '(;; "Source Code Variable"
                               "Droid Sans Mono"
                                                :size 16.0
                                                :weight normal
                                                :width normal)

   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-command-key "SPC"
   dotspacemacs-ex-command-key ":"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   dotspacemacs-distinguish-gui-tab nil

   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil

   ;; resume last layout: nil
   dotspacemacs-auto-resume-layouts nil

   dotspacemacs-large-file-size 1

   ;; autosave file to .cache
   ;; dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-auto-save-file-location 'cache

   ;; gutter columns
   dotspacemacs-max-rollback-slots 3

   ;; disable paste pop state
   dotspacemacs-enable-paste-transient-state nil

   ;; delay about which-key
   dotspacemacs-which-key-delay 0.6

   ;; which-key position
   dotspacemacs-which-key-position 'bottom

   dotspacemacs-switch-to-buffer-prefers-purpose t

   ;; load process bar in the buttom
   dotspacemacs-loading-progress-bar nil

   ;; fullscreen in startup
   dotspacemacs-fullscreen-at-startup t
   ;; maximized startup
   dotspacemacs-maximized-at-startup nil

   ;; remove title bar
   dotspacemacs-fullscreen-use-non-native t
   ;; remove startup title bar
   dotspacemacs-undecorated-at-startup t

   ;; transparency settings in active and inactive
   dotspacemacs-active-transparency 80
   dotspacemacs-inactive-transparency 80

   ;; transient settings
   dotspacemacs-show-transient-state-title nil
   dotspacemacs-show-transient-state-color-guide nil

   ;; mode-line support unicode
   dotspacemacs-mode-line-unicode-symbols t

   dotspacemacs-smooth-scrolling t

   ;; show scroll bar
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; show relative line number
   dotspacemacs-line-numbers 'relative

   dotspacemacs-folding-method 'evil

   dotspacemacs-smartparens-strict-mode nil

   dotspacemacs-activate-smartparens-mode t

   dotspacemacs-smart-closing-parenthesis t

   dotspacemacs-highlight-delimiters 'all

   ;; relate server
   dotspacemacs-enable-server t
   dotspacemacs-server-socket-dir nil

   ;; even quit emacs. the emacs server still active
   dotspacemacs-persistent-server t

   ;; search tools
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   dotspacemacs-show-trailing-whitespace t
   dotspacemacs-whitespace-cleanup `trailing
   dotspacemacs-use-clean-aindent-mode t

   ;; close swap number
   dotspacemacs-swap-number-row nil

   dotspacemacs-zone-out-when-idle nil

   dotspacemacs-pretty-docs nil

   dotspacemacs-home-shorten-agenda-source t

   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()

  ;; change emacs repo's source
  (setq configuration-layer-elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ("nongnu"       . "https://elpa.nongnu.org/nongnu/")
          ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  ;; remove cl warnings, unless modify emacs source code, because cl move to cl-lib
  (setq byte-compile-warnings '(not cl-functions obsolete))

  ;; disable 自动调节行高
  (setq auto-window-vscroll nil)

  ;; (setq x-select-enable-primary t)

  ;; fix layer's error: spell-checking
  (setq ispell-extra-args '("--lang=en_US"))

  ;; auto link link_file
  (setq vc-follow-symlinks t)


  ;; quickly garbage to solve.
  (setq gc-cons-threshold (* 50 1000 1000))

  ;; add analyse in minbuffer
  (add-hook 'emacs-startup-hook
            (lambda ()
              (message "Startup Time: %s"
                       ;; "Emacs ready in %s with %d garbage collections."
                       (format "%.2f seconds. Enjoy it!"
                               (float-time
                                (time-subtract after-init-time before-init-time)))
                       gcs-done)))



  "Initialization for user code:
    This function is called immediately after `dotspacemacs/init', before layer
    configuration.
    It is mostly for variables that should be set before packages are loaded.
    If you are unsure, try setting them in `dotspacemacs/user-config' first.")


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
  This function is called only while dumping Spacemacs configuration. You can
  `require' or `load' the libraries of your choice that will be included in the
  dump.")


;; oeyoews
(defun dotspacemacs/user-config ()

  ;; Note: need crear this file by hand
  (setq custom-file "~/.emacs.d/private/custom.el")

  ;; exit insert status like vim quickly
  (setq-default evil-escape-key-sequence "jk")

  ;; disable backup files  auto
  (setq make-backup-files nil)

  ;; cursor center like vim set so=2
  ;; ?
  (setq scroll-conservatively 1000
        scroll-margin 2)

  ;; neotree settings
  (setq neo-theme 'icons)
  (setq neo-vc-integration ' (face) )

  ;;   (org-ellipsis "⤵")

  ;; tab navigator
  (use-package centaur-tabs
    :if window-system
    :demand
    :config
    (centaur-tabs-mode t))
  (setq centaur-tabs-height 20)
  (setq centaur-tabs-style "alternate")
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-set-bar 'left)
  (setq centaur-tabs-set-modified-marker t)
  (setq centaur-tabs-modified-marker "*")
  (setq centaur-tabs-gray-out-icons 'buffer)
  (setq centaur-tabs-cycle-scope 'tabs)
  (setq centaur-tabs-label-fixed-length 8)

  ;; deft
  (use-package deft
    :bind ("<f8>" . deft)
    :commands (deft)
    :config (setq deft-directory "~/.deft/"
                  deft-extensions '("md" "org")))

  ;; completion auto global
  (global-company-mode)

  ;; Trigger completion immediately.
  (setq company-idle-delay 0.2)

  ;; Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-show-numbers t)


  ;; add git-gutter settings
  ;; (use-package git-gutter
  ;;   :init
  ;;   )
    (global-git-gutter-mode t)

  ;; ivy icon settings
  (use-package all-the-icons-ivy-rich
    :if window-system
    :ensure t
    :init (all-the-icons-ivy-rich-mode t))
  (use-package ivy-rich
    :if window-system
    :ensure t
    :init (ivy-rich-mode t))
  (setq all-the-icons-ivy-rich-icon-size 1.0)

  ;; translate
  (use-package english-teacher
    :load-path "~/.spacemacs.d/english-teacher.el/"
    :hook ((Info-mode
            elfeed-show-mode
            eww-mode
            Man-mode
            Woman-Mode) . english-teacher-follow-mode))
  (setq english-teacher-backend 'google)

  ;; show translate in minbuffer
  (setq english-teacher-show-result-function 'english-teacher-eldoc-show-result-function)

  ;; breaks symbols disablejk
  (set-face-attribute 'nobreak-space nil
                      :background nil
                      :underline nil)

  ;; indent guides
  (use-package indent-guide
    :init (indent-guide-global-mode t))
  (setq indent-guide-delay 0.3)
  (set-face-background 'indent-guide-face "dimgray")


  ;; Slow Rendering
  ;; If you experience a slow down in performance when rendering multiple icons simultaneously,
  ;; you can try setting the following variable
  (setq inhibit-compacting-font-caches t)

  ;; add space automatically for layer settings
  (use-package pangu-spacing
    :config
    (global-pangu-spacing-mode t)
    (add-hook 'org-mode-hook
              '(lambda ()
                 (set (make-local-variable 'pangu-spacing-real-insert-separtor) t))))

  ;; add highlightyank-layer
  ;; don't work ?
  (use-package evil-goggles
    :ensure t
    :config
    (evil-goggles-mode)
    (evil-goggles-use-diff-faces)))
(setq evil-goggles-pulse t) ;; default is to pulse when running in a graphic display



;; fastly insert time
(defun now ()
  (interactive)
  ( insert (current-time-string)))

;; org config
(with-eval-after-load 'org

  ;; in startup , fold all heading auto
  (setq org-startup-folded t)

  ;; (setq org-bullets-bullet-list '("☰" "☷" "☯" "☭"))

  (setq org-startup-indented t)

  (setq org-remember-clock-out-on-exit t)

  (setq org-ellipsis "▼")

  ;; (setq org-hierarchical-todo-statistics nil)

  ;; Let's have pretty source code blocks
  ;; (setq org-edit-src-content-indentation 0
  ;;       org-src-tab-acts-natively t
  ;;       org-src-fontify-natively t
  ;;       org-confirm-babel-evaluate nil
  ;;       org-support-shift-select 'always)

  ;; (setq org-default-notes-file "~/temp/demo.org")

  ;; (setq org-refile-targets '("~/temp/demo.org" :maxlevel . 3))


  (setq org-todo-keywords
        '((sequence "TODO" "HACK" "|" "DONE")))

  ;; 调试好久的颜色，效果超赞！todo keywords 增加背景色
  ;; (setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
  ;;                                ("HACK" . (:foreground "white" :background "#2E8B57"  :weight bold))
  ;;                                ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))

  )
