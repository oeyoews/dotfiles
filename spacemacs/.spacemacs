(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs

   dotspacemacs-enable-lazy-installation 'unused

   dotspacemacs-ask-for-lazy-installation t

   dotspacemacs-configuration-layers
   '(yaml
     javascript
     vimscript
     org
     html
     python
     ivy
     syntax-checking
     auto-completion
     neotree
     better-defaults
     emacs-lisp
     lsp
     markdown
     c-c++
     (shell :variables
            shell-default-height 40
            shell-default-position 'bottom)
     )

   dotspacemacs-additional-packages '( pangu-spacing git-gutter all-the-icons-ivy-rich)

   dotspacemacs-frozen-packages '()

   ;; 消除开始波浪字符
   dotspacemacs-excluded-packages '(vi-tilde-fringe)

   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()

  (setq-default
   dotspacemacs-enable-emacs-pdumper nil

   dotspacemacs-emacs-pdumper-executable-file "emacs"

   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   dotspacemacs-elpa-https t

   dotspacemacs-elpa-timeout 5

   dotspacemacs-gc-cons '(100000000 0.1)

   dotspacemacs-read-process-output-max (* 1024 1024)

   dotspacemacs-use-spacelpa nil

   dotspacemacs-verify-spacelpa-archives t

   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; hybrid vim emacs
   dotspacemacs-editing-style 'vim

   dotspacemacs-startup-buffer-show-version nil

   dotspacemacs-startup-banner 'official

   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 5))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   dotspacemacs-scratch-mode 'text-mode

   dotspacemacs-scratch-buffer-persistent nil

   dotspacemacs-scratch-buffer-unkillable nil

   dotspacemacs-initial-scratch-message nil

   dotspacemacs-themes '(spacemacs-dark)

   ;; vim-powerline doom spacemacs
   dotspacemacs-mode-line-theme '(vim-powerline  :separator wave :separator-scale 1.5)

   dotspacemacs-colorize-cursor-according-to-state t

   dotspacemacs-default-font '("Source Code Variable"
                               :size 14.0
                               :weight Regular
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

   dotspacemacs-auto-resume-layouts nil

   dotspacemacs-auto-generate-layout-names nil

   dotspacemacs-large-file-size 1

   dotspacemacs-auto-save-file-location 'cache

   dotspacemacs-max-rollback-slots 5

   dotspacemacs-enable-paste-transient-state nil

   dotspacemacs-which-key-delay 0.2

   dotspacemacs-which-key-position 'bottom

   dotspacemacs-switch-to-buffer-prefers-purpose nil

   dotspacemacs-loading-progress-bar t

   dotspacemacs-fullscreen-at-startup t

   dotspacemacs-fullscreen-use-non-native t

   dotspacemacs-maximized-at-startup t

   dotspacemacs-undecorated-at-startup t

   dotspacemacs-active-transparency 80

   dotspacemacs-inactive-transparency 80

   dotspacemacs-show-transient-state-title nil

   dotspacemacs-show-transient-state-color-guide nil

   dotspacemacs-mode-line-unicode-symbols t

   dotspacemacs-smooth-scrolling t

   dotspacemacs-scroll-bar-while-scrolling t

   dotspacemacs-line-numbers 'relative

   dotspacemacs-folding-method 'evil

   dotspacemacs-smartparens-strict-mode nil

   dotspacemacs-activate-smartparens-mode t

   dotspacemacs-smart-closing-parenthesis t

   dotspacemacs-highlight-delimiters 'all

   dotspacemacs-enable-server t

   dotspacemacs-server-socket-dir nil

   dotspacemacs-persistent-server t

   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; dotspacemacs-frame-title-format "%I@%S"

   ;; dotspacemacs-icon-title-format nil

   dotspacemacs-show-trailing-whitespace t

   dotspacemacs-whitespace-cleanup `trailing

   dotspacemacs-use-clean-aindent-mode t

   dotspacemacs-swap-number-row nil

   dotspacemacs-zone-out-when-idle nil

   dotspacemacs-pretty-docs nil

   dotspacemacs-home-shorten-agenda-source t

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
  This function defines the environment variables for your Emacs session. By
  default it calls `spacemacs/load-spacemacs-env' which loads the environment
  variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
  See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()

   (setq configuration-layer-elpa-archives
         '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
           ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
           ("gnu-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))

  ;; remove cl warnings
  (setq byte-compile-warnings '(not cl-functions obsolete))

  ;; shutdown 自动调节行高
  (setq auto-window-vscroll nil)

  ;; (setq x-select-enable-primary t)
  ;; add analyse in buffer
  (add-hook 'emacs-startup-hook
            (lambda ()
              (message "Emacs ready in %s with %d garbage collections."
                       (format "%.2f seconds"
                               (float-time
                                (time-subtract after-init-time before-init-time)))
                       gcs-done)))

  ;; fix spell-checking
  (setq ispell-extra-args '("--lang=en_US"))

  ;; auto link link_file
  (setq vc-follow-symlinks t)

  ;; neotree settings
  (setq neo-theme 'icons)
  (setq neo-vc-integration ' (face) )

  ;; quickly garbage to solve.
  (setq gc-cons-threshold (* 50 1000 1000))


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


(defun dotspacemacs/user-config ()

  ;; completion auto global
  (global-company-mode)
  ;; Trigger completion immediately.
  (setq company-idle-delay 0.1)
  ;; Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-show-numbers t)

  ;; add quickly exit
  (setq-default evil-escape-key-sequence "jk")

  ;; add git-gutter
  (global-git-gutter-mode +1)

  ;; ivy settings
  (use-package all-the-icons-ivy-rich
    :ensure t
    :init (all-the-icons-ivy-rich-mode 1))
  (use-package ivy-rich
    :ensure t
    :init (ivy-rich-mode 1))
  ;; The icon size
  (setq all-the-icons-ivy-rich-icon-size 1.0)
  ;; Definitions for ivy-rich transformers.
  ;; See `ivy-rich-display-transformers-list' for details."
  all-the-icons-ivy-rich-display-transformers-list

  ;; special symbols 消除短横线
  (set-face-attribute 'nobreak-space nil
                      :background nil
                      :underline nil)

  ;; Slow Rendering
  ;; If you experience a slow down in performance when rendering multiple icons simultaneously,
  ;; you can try setting the following variable
  (setq inhibit-compacting-font-caches t)

  ;; lsp-start
  (use-package lsp-mode
    :init
    (setq lsp-keymap-prefix "C-c l")
    :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
           (c-mode . lsp)
           ;; (c++-mode . lsp)
           (python-mode . lsp)
           (lsp-mode . lsp-enable-which-key-integration))
    :commands lsp)

  ;; add space automatically
  (use-package pangu-spacing
    :config
    (global-pangu-spacing-mode 1)
    (add-hook 'org-mode-hook
              '(lambda ()
                 (set (make-local-variable 'pangu-spacing-real-insert-separtor) t))))

  ;; add highlightyank-layer
  (use-package evil-goggles
    :ensure t
    :config
    (evil-goggles-mode)
    (evil-goggles-use-diff-faces))
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
