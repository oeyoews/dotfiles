(defun dotspacemacs/layers ()
  (setq-default
   dotspacemacs-distribution 'spacemacs

   dotspacemacs-enable-lazy-installation 'unused

   dotspacemacs-ask-for-lazy-installation t

   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   dotspacemacs-configuration-layers
   '(yaml
     javascript
     vimscript
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
     ;; c-c++
     (ranger :variables
             ranger-show-preview t
             ranger-show-hidden t
             ranger-cleanup-eagerly t
             ranger-cleanup-on-disable t
             ranger-ignored-extensions '("mkv" "flv" "iso" "mp4"))
     (shell :variables
            shell-default-height 40
            shell-default-position 'bottom)
     )

   dotspacemacs-additional-packages '(pangu-spacing git-gutter all-the-icons-ivy-rich)

   dotspacemacs-frozen-packages '()

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

   dotspacemacs-check-for-update nil

   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   dotspacemacs-editing-style 'hybrid

   dotspacemacs-startup-buffer-show-version t

   dotspacemacs-startup-banner 'official

   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 5))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.7

   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   dotspacemacs-scratch-mode 'text-mode

   dotspacemacs-scratch-buffer-persistent nil

   dotspacemacs-scratch-buffer-unkillable nil

   dotspacemacs-initial-scratch-message nil

   dotspacemacs-themes '(spacemacs-dark)

   dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

   dotspacemacs-colorize-cursor-according-to-state t

   dotspacemacs-default-font '(
                               "Source Code Variable"
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

   dotspacemacs-enable-paste-transient-state t

   dotspacemacs-which-key-delay 0.2

   dotspacemacs-which-key-position 'bottom

   dotspacemacs-switch-to-buffer-prefers-purpose nil

   dotspacemacs-loading-progress-bar nil

   dotspacemacs-fullscreen-at-startup nil

   dotspacemacs-fullscreen-use-non-native t

   dotspacemacs-maximized-at-startup t

   dotspacemacs-undecorated-at-startup t

   dotspacemacs-active-transparency 90

   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

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

   dotspacemacs-frame-title-format "%I@%S"

   dotspacemacs-icon-title-format nil

   dotspacemacs-show-trailing-whitespace t

   dotspacemacs-whitespace-cleanup `trailing

   dotspacemacs-use-clean-aindent-mode t

   dotspacemacs-swap-number-row nil

   dotspacemacs-zone-out-when-idle nil

   dotspacemacs-pretty-docs nil

   dotspacemacs-home-shorten-agenda-source nil

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

  (global-company-mode)

  ;; add quickly exit
  (setq-default evil-escape-key-sequence "jk")

  ;; add git-gutter
  (global-git-gutter-mode +1)

  (use-package all-the-icons-ivy-rich
    :ensure t
    :init (all-the-icons-ivy-rich-mode 1))

  (use-package ivy-rich
    :ensure t
    :init (ivy-rich-mode 1))

  ;; The icon size
  (setq all-the-icons-ivy-rich-icon-size 1.0)

  ;; special symbols
  (set-face-attribute 'nobreak-space nil
                      :background nil
                      :underline nil)
  ;; Definitions for ivy-rich transformers.
  ;; See `ivy-rich-display-transformers-list' for details."
  all-the-icons-ivy-rich-display-transformers-list

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
  ;; lsp-end

  ;; add space automatically
  (use-package pangu-spacing
    :config
    (global-pangu-spacing-mode 1)
    ;; only insert real whitespace in some specific mode, but just add virtual space in other mode
    (add-hook 'org-mode-hook
              '(lambda ()
                 (set (make-local-variable 'pangu-spacing-real-insert-separtor) t))))

  ;; add highlightyank-layer
  (use-package evil-goggles
    :ensure t
    :config
    (evil-goggles-mode)
    (evil-goggles-use-diff-faces))

  ;; Trigger completion immediately.
  (setq company-idle-delay 0.1)

  ;; Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-show-numbers t)
  )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   '(evil-want-Y-yank-to-eol nil)
   '(hl-todo-keyword-faces
     '(("TODO" . "#dc752f")
       ("NEXT" . "#dc752f")
       ("THEM" . "#2d9574")
       ("PROG" . "#4f97d7")
       ("OKAY" . "#4f97d7")
       ("DONT" . "#f2241f")
       ("FAIL" . "#f2241f")
       ("DONE" . "#86dc2f")
       ("NOTE" . "#b1951d")
       ("KLUDGE" . "#b1951d")
       ("HACK" . "#b1951d")
       ("TEMP" . "#b1951d")
       ("FIXME" . "#dc752f")
       ("XXX+" . "#dc752f")
       ("\\?\\?\\?+" . "#dc752f")))

   '(package-selected-packages
     '(yaml-mode reveal-in-osx-finder ranger osx-trash osx-clipboard launchctl vimrc-mode helm-gtags helm ggtags dactyl-mode counsel-gtags all-the-icons-ivy-rich grip-mode treemacs cfrs pfuture posframe neotree ivy-rich all-the-icons-ivy helm-core wgrep smex lsp-ivy ivy-yasnippet ivy-xref ivy-rtags ivy-purpose ivy-hydra ivy-avy counsel-projectile slime with-editor git-gutter helm-rtags google-c-style flycheck-ycmd flycheck-rtags disaster cpp-auto-include company-ycmd ycmd request-deferred company-rtags rtags company-c-headers ccls zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monochrome-theme molokai-theme moe-theme modus-vivendi-theme modus-operandi-theme modus-themes minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme kaolin-themes jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme eziam-theme exotica-theme espresso-theme dracula-theme doom-themes django-theme darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme chocolate-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme origami lsp-mode pos-tip eaf eglot flyspell-correct-helm flyspell-correct auto-dictionary gruvbox-theme autothemer monokai-theme pyim xr pangu-spacing find-by-pinyin-dired chinese-conv ace-pinyin pinyinlib dap-mode bui web-mode web-beautify tagedit slim-mode scss-mode sass-mode pug-mode prettier-js impatient-mode simple-httpd helm-css-scss haml-mode emmet-mode counsel-css counsel swiper ivy company-web web-completion-data add-node-modules-path yasnippet-snippets yapfify xterm-color ws-butler writeroom-mode winum which-key vterm volatile-highlights vi-tilde-fringe uuidgen use-package undo-tree treemacs-projectile treemacs-persp treemacs-icons-dired treemacs-evil toc-org terminal-here symon symbol-overlay string-inflection string-edit sphinx-doc spaceline-all-the-icons shell-pop restart-emacs request rainbow-delimiters quickrun pytest pyenv-mode py-isort popwin poetry pippel pipenv pip-requirements pcre2el password-generator paradox overseer org-superstar org-rich-yank org-projectile org-present org-pomodoro org-mime org-download org-cliplink org-brain open-junk-file nose nameless multi-term multi-line mmm-mode markdown-toc macrostep lsp-ui lsp-treemacs lsp-python-ms lsp-pyright lsp-origami lorem-ipsum live-py-mode link-hint indent-guide importmagic hybrid-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-lsp helm-ls-git helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag google-translate golden-ratio gnuplot gh-md fuzzy font-lock+ flycheck-pos-tip flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr elisp-slime-nav editorconfig dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish devdocs define-word cython-mode company-anaconda column-enforce-mode clean-aindent-mode centered-cursor-mode blacken auto-yasnippet auto-highlight-symbol auto-compile aggressive-indent ace-link ace-jump-helm-line ac-ispell)))
  (custom-set-faces
   '(evil-goggles-change-face ((t (:inherit diff-removed))))
   '(evil-goggles-delete-face ((t (:inherit diff-removed))))
   '(evil-goggles-paste-face ((t (:inherit diff-added))))
   '(evil-goggles-undo-redo-add-face ((t (:inherit diff-added))))
   '(evil-goggles-undo-redo-change-face ((t (:inherit diff-changed))))
   '(evil-goggles-undo-redo-remove-face ((t (:inherit diff-removed))))
   '(evil-goggles-yank-face ((t (:inherit diff-changed)))))
  )
