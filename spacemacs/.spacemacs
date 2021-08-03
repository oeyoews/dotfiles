(defun dotspacemacs/layers ()

  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t

   ;; some layer
   dotspacemacs-configuration-layers
   '(org
     ivy
     syntax-checking
     auto-completion
     neotree
     better-defaults
     emacs-lisp
     ;; c-c++
     lsp
     ;; markdown
     ;; bottom shell like terminal
     (shell :variables
            shell-default-height 40
            shell-default-position 'bottom))

   ;; additional packages
   dotspacemacs-additional-packages '(pangu-spacing
                                      ;; benchmark-init
                                      ;; left gutter
                                      git-gutter
                                      ;; ivy icons
                                      all-the-icons-ivy-rich)

   ;; frozen packages
   dotspacemacs-frozen-packages '()

   ;; 消除开始波浪字符, 排除包vim-tilde-fringe
   dotspacemacs-excluded-packages '(vi-tilde-fringe)

   ;; install packages just used
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()

  (setq-default
   dotspacemacs-enable-emacs-pdumper nil
   dotspacemacs-emacs-pdumper-executable-file "emacs"
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; enable elpa's https
   dotspacemacs-elpa-https t

   ;; timeout checking
   dotspacemacs-elpa-timeout 5

   dotspacemacs-gc-cons '(100000000 0.1)

   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; a package repo
   dotspacemacs-verify-spacelpa-archives t

   ;; dotspacemacs-elpa-subdirectory 'emacs-version

   ;; mode: hybrid vim emacs
   dotspacemacs-editing-style 'hybrid

   ;; dotspacemacs-startup-banner 'official
   dotspacemacs-startup-banner nil

   dotspacemacs-startup-lists '((recents . 5)
                                (todos)
                                (projects . 5))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; list use numbers in homepage
   dotspacemacs-show-startup-list-numbers nil

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; new buffer mode
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; scratch mode
   dotspacemacs-scratch-mode 'text-mode

   dotspacemacs-scratch-buffer-persistent nil

   ;; spacemacs theme
   dotspacemacs-themes '(spacemacs-dark)

   ;; dash status: vim-powerline doom spacemacs
   dotspacemacs-mode-line-theme '(vim-powerline  :separator wave :separator-scale 1.5)

   ;; 根据光标状态显示颜色
   dotspacemacs-colorize-cursor-according-to-state t

   ;; font settings
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

   ;; resume last layout: nil
   dotspacemacs-auto-resume-layouts nil

   dotspacemacs-large-file-size 1

   ;; autosave file to .cache
   dotspacemacs-auto-save-file-location 'cache

   ;; ?
   dotspacemacs-max-rollback-slots 4

   ;; disable paste pop state
   dotspacemacs-enable-paste-transient-state nil

   ;; delay about which-key
   dotspacemacs-which-key-delay 0.4

   ;; which-key position
   dotspacemacs-which-key-position 'bottom

   dotspacemacs-switch-to-buffer-prefers-purpose t

   ;; load process bar in the buttom
   dotspacemacs-loading-progress-bar nil

   ;; fullscreen in startup
   dotspacemacs-fullscreen-at-startup nil

   ;; remove title bar
   dotspacemacs-fullscreen-use-non-native t

   ;; maximized startup
   dotspacemacs-maximized-at-startup t

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

   ;; scroll smoothly
   dotspacemacs-smooth-scrolling t

   ;; show scroll bar
   dotspacemacs-scroll-bar-while-scrolling nil

   ;; show relative line number
   dotspacemacs-line-numbers 'relative

   dotspacemacs-folding-method 'evil

   dotspacemacs-smartparens-strict-mode nil

   dotspacemacs-activate-smartparens-mode t

   dotspacemacs-smart-closing-parenthesis t

   ;; highlight delimiters
   ;; 'all or nil, default is nil
   dotspacemacs-highlight-delimiters nil

   ;; relate server
   dotspacemacs-enable-server t
   dotspacemacs-server-socket-dir nil
   dotspacemacs-persistent-server t

   ;; search tools
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   dotspacemacs-show-trailing-whitespace t

   ;; clean whitespace in save
   dotspacemacs-whitespace-cleanup `trailing

   dotspacemacs-use-clean-aindent-mode t

   ;; close swap number
   dotspacemacs-swap-number-row nil

   dotspacemacs-zone-out-when-idle nil

   dotspacemacs-pretty-docs t

   dotspacemacs-home-shorten-agenda-source t

   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()

  ;; change emacs repo's source
  (setq configuration-layer-elpa-archives
        '(("melpa-cn" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
          ;; ("org-cn"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
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

  ;; neotree settings
  (setq neo-theme 'icons)
  (setq neo-vc-integration ' (face) )

  ;; quickly garbage to solve.
  (setq gc-cons-threshold (* 50 1000 1000))

  ;; add analyse in minbuffer
  (add-hook 'emacs-startup-hook
            (lambda ()
              (message "Startup Time: %s"
               ;; "Emacs ready in %s with %d garbage collections."
                       (format "%.2f seconds"
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


(defun dotspacemacs/user-config ()

  ;; warning level
  ;; (setq warning-minimum-level :emergency)

  ;; completion auto global
  (global-company-mode)

  ;; Trigger completion immediately.
  (setq company-idle-delay 0.1)

  ;; Number the candidates (use M-1, M-2 etc to select completions).
  (setq company-show-numbers t)

  ;; exit insert status like vim quickly
  (setq-default evil-escape-key-sequence "jk")

  ;; add git-gutter settings
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
  ;; ?
  all-the-icons-ivy-rich-display-transformers-list

  ;; special symbols 消除短横线
  (set-face-attribute 'nobreak-space nil
                      :background nil
                      :underline nil)

  ;; Slow Rendering
  ;; If you experience a slow down in performance when rendering multiple icons simultaneously,
  ;; you can try setting the following variable
  (setq inhibit-compacting-font-caches t)

  ;; lsp settings
  ;; (use-package lsp-mode
  ;;   :init
  ;;   (setq lsp-keymap-prefix "C-c l")
  ;;   :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
  ;;          (c-mode . lsp)
  ;;          (lsp-mode . lsp-enable-which-key-integration))
  ;;   :commands lsp)

  ;; add space automatically for layer settings
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
    (evil-goggles-use-diff-faces)))




;; self evil
(defun evilified-state--evilify-event (map map-symbol evil-map event evil-value
                                           &optional processed pending-funcs)
  "Evilify EVENT in MAP and return a list of PROCESSED events."
  (if (and event (or evil-value pending-funcs))
      (let* ((kbd-event (kbd (single-key-description event)))
             (map-value (lookup-key map kbd-event))
             (evil-value (or evil-value
                             (lookup-key evil-map kbd-event)
                             (car (pop pending-funcs)))))
        (when evil-value
          (evil-define-key 'evilified map kbd-event evil-value))
        (when map-value
          (add-to-list 'pending-funcs (cons map-value event) 'append))
        (push event processed)
        (setq processed (evilified-state--evilify-event
                         map map-symbol evil-map
                         (evilified-state--find-new-event event) nil
                         processed pending-funcs)))
    (when pending-funcs
      ;; (spacemacs-buffer/warning
      (message
       (concat (format (concat "Auto-evilication could not remap these "
                               "functions in map `%s':\n")
                       map-symbol)
               (mapconcat (lambda (x)
                            (format "   - `%s' originally mapped on `%s'"
                                    (car x) (single-key-description (cdr x))))
                          pending-funcs "\n")))))
  processed)




































;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(evil-want-Y-yank-to-eol nil)
   '(package-selected-packages
     '(dap-mode lsp-treemacs bui treemacs cfrs pfuture posframe yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum which-key wgrep web-mode web-beautify vterm volatile-highlights vimrc-mode uuidgen use-package unfill undo-tree toc-org terminal-here tagedit symon symbol-overlay string-inflection string-edit sphinx-doc spaceline-all-the-icons smex slim-mode shell-pop scss-mode sass-mode restart-emacs request rainbow-delimiters quickrun pytest pyenv-mode py-isort pug-mode prettier-js popwin poetry pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox pangu-spacing overseer org-superstar org-rich-yank org-projectile org-present org-pomodoro org-mime org-download org-cliplink open-junk-file npm-mode nose nodejs-repl neotree nameless mwim multi-term multi-line mmm-mode markdown-toc macrostep lsp-ui lsp-python-ms lsp-pyright lsp-origami lsp-ivy lorem-ipsum livid-mode live-py-mode link-hint json-navigator json-mode js2-refactor js-doc ivy-yasnippet ivy-xref ivy-purpose ivy-hydra ivy-avy indent-guide importmagic impatient-mode hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio gnuplot git-gutter gh-md fuzzy font-lock+ flycheck-pos-tip flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr emmet-mode elisp-slime-nav editorconfig dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish define-word dactyl-mode cython-mode counsel-projectile counsel-css company-web company-anaconda column-enforce-mode clean-aindent-mode centered-cursor-mode blacken auto-yasnippet auto-highlight-symbol auto-compile all-the-icons-ivy-rich aggressive-indent ace-window ace-link ac-ispell)))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(evil-goggles-change-face ((t (:inherit diff-removed))))
   '(evil-goggles-delete-face ((t (:inherit diff-removed))))
   '(evil-goggles-paste-face ((t (:inherit diff-added))))
   '(evil-goggles-undo-redo-add-face ((t (:inherit diff-added))))
   '(evil-goggles-undo-redo-change-face ((t (:inherit diff-changed))))
   '(evil-goggles-undo-redo-remove-face ((t (:inherit diff-removed))))
   '(evil-goggles-yank-face ((t (:inherit diff-changed)))))
  )
