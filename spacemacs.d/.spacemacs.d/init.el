(defun dotspacemacs/layers ()

  (setq-default
   dotspacemacs-distribution 'spacemacs
   dotspacemacs-enable-lazy-installation 'unused
   dotspacemacs-ask-for-lazy-installation t

   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; layers
   dotspacemacs-configuration-layers
   '(vimscript
     org
     deft
     ivy
     syntax-checking
     auto-completion
     neotree
     better-defaults
     emacs-lisp
     (shell :variables
            shell-default-term-shell "/bin/bash"
            shell-default-full-span nil
            shell-default-height 40
            shell-default-position 'bottom))

   ;; additional packages
   dotspacemacs-additional-packages '(pangu-spacing
                                      centaur-tabs
                                      org-bullets
                                      evil-goggles
                                      git-gutter
                                      all-the-icons-ivy-rich)

   dotspacemacs-frozen-packages '()

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
   dotspacemacs-themes '(doom-one
                         ;; spacemacs-dark
                         )

   ;; dash status: vim-powerline doom spacemacs
   ;; dotspacemacs-mode-line-theme '(vim-powerline  :separator wave :separator-scale 1.2)
   dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.3)

   ;; 根据光标状态显示颜色
   dotspacemacs-colorize-cursor-according-to-state t

   ;; font settings
   dotspacemacs-default-font '("Source Code Variable"
                                                :size 14.0
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


;; oeyoews
(defun dotspacemacs/user-config ()

  ;; cursor center like vim set so=2
  (setq scroll-conservatively 101
        scroll-margin 2)

  ;; neotree settings
  (setq neo-theme 'icons)
  (setq neo-vc-integration ' (face) )

  ;; (use-package org-bullets
  ;;   :custom
  ;;   (org-bullets-bullet-list '("◉" "☯" "○" "☯" "✸" "☯" "✿" "☯" "✜" "☯" "◆" "☯" "▶"))
  ;;   (org-ellipsis "⤵")
  ;;   :hook (org-mode . org-bullets-mode))

  ;; tab navigator
  (use-package centaur-tabs
    :demand
    :config
    (centaur-tabs-mode t)
    :bind
    (:map evil-normal-state-map
	     ("g t" . centaur-tabs-forward)
	     ("g T" . centaur-tabs-backward))
    ; ("C-<prior>" . centaur-tabs-backward)
    ; ("C-<next>" . centaur-tabs-forward)
    )
  (setq centaur-tabs-style "alternate")
  (centaur-tabs-headline-match)
  (setq centaur-tabs-set-icons t)
  (setq centaur-tabs-set-bar 'left)
  (setq centaur-tabs-set-modified-marker t)
  (setq centaur-tabs-modified-marker "*")
  (setq centaur-tabs-cycle-scope 'tabs)

  ;; deft
  (use-package deft
    :bind ("<f8>" . deft)
    :commands (deft)
    :config (setq deft-directory "~/.deft/"
                  deft-extensions '("md" "org")))

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

  ;; ivy icon settings
  (use-package all-the-icons-ivy-rich
    :if window-system
    :ensure t
    :init (all-the-icons-ivy-rich-mode 1))
  (use-package ivy-rich
    :if window-system
    :ensure t
    :init (ivy-rich-mode 1))
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

  ;; Slow Rendering
  ;; If you experience a slow down in performance when rendering multiple icons simultaneously,
  ;; you can try setting the following variable
  (setq inhibit-compacting-font-caches t)

  ;; add space automatically for layer settings
  (use-package pangu-spacing
    :config
    (global-pangu-spacing-mode 1)
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

  ;; 设置 bullet list, 让 headline 变漂亮
  ;; error ?
  ;; (setq org-bullets-bullet-list '("☰" "☷" "☯" "☭"))


  ;; 插入今年的时间进度条
  (defun make-progress (width percent has-number?)
    (let* ((done (/ percent 100.0))
           (done-width (floor (* width done))))
      (concat
       "["
       (make-string done-width ?/)
       (make-string (- width done-width) ? )
       "]"
       (if has-number? (concat " " (number-to-string percent) "%"))
       )))

  (defun insert-day-progress ()
    (interactive)
    (let* ((today (time-to-day-in-year (current-time)))
           (percent (floor (* 100 (/ today 365.0)))))
      (insert (make-progress 30 percent t))
      ))

  (evil-leader/set-key "oit" 'insert-day-progress)

  ;; 打开 org-indent mode
  (setq org-startup-indented t)

  (setq org-remember-clock-out-on-exit t)

  ;; 折叠时不再显示「...」, 换个你喜欢的符号
  (setq org-ellipsis "▼")

  ;; inline image 不用展示实际大小，可以自定义大小显示
  (setq org-image-actual-width '(450))

  (setq org-hierarchical-todo-statistics nil)

  (setq org-html-validation-link nil)

  ;; Let's have pretty source code blocks
  (setq org-edit-src-content-indentation 0
        org-src-tab-acts-natively t
        org-src-fontify-natively t
        org-confirm-babel-evaluate nil
        org-support-shift-select 'always)

  (setq org-default-notes-file "~/temp/demo.org")

  (setq org-refile-targets '("~/temp/demo.org" :maxlevel . 3))


  (setq org-todo-keywords
        '((sequence "TODO" "HACK" "|" "DONE")))

  ;; 调试好久的颜色，效果超赞！todo keywords 增加背景色
  ;; (setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6"   :weight bold))
  ;;                                ("HACK" . (:foreground "white" :background "#2E8B57"  :weight bold))
  ;;                                ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))

  )

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
 '(custom-safe-themes
   '("835868dcd17131ba8b9619d14c67c127aa18b90a82438c8613586331129dda63" "246cd0eb818bfd347b20fb6365c228fddf24ab7164752afe5e6878cb29b0204e" default))
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   '(org-bullets ivy-rtags google-c-style flycheck-ycmd flycheck-rtags disaster cpp-auto-include company-ycmd ycmd request-deferred deferred company-rtags rtags company-c-headers ccls zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme modus-vivendi-theme modus-operandi-theme modus-themes minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme kaolin-themes jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme eziam-theme exotica-theme espresso-theme dracula-theme doom-themes django-theme darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme chocolate-theme autothemer cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme zones dap-mode lsp-treemacs bui treemacs cfrs pfuture posframe yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum which-key wgrep web-mode web-beautify vterm volatile-highlights vimrc-mode uuidgen use-package unfill undo-tree toc-org terminal-here tagedit symon symbol-overlay string-inflection string-edit sphinx-doc spaceline-all-the-icons smex slim-mode shell-pop scss-mode sass-mode restart-emacs request rainbow-delimiters quickrun pytest pyenv-mode py-isort pug-mode prettier-js popwin poetry pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox pangu-spacing overseer org-superstar org-rich-yank org-projectile org-present org-pomodoro org-mime org-download org-cliplink open-junk-file npm-mode nose nodejs-repl neotree nameless mwim multi-term multi-line mmm-mode markdown-toc macrostep lsp-ui lsp-python-ms lsp-pyright lsp-origami lsp-ivy lorem-ipsum livid-mode live-py-mode link-hint json-navigator json-mode js2-refactor js-doc ivy-yasnippet ivy-xref ivy-purpose ivy-hydra ivy-avy indent-guide importmagic impatient-mode hybrid-mode hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio gnuplot git-gutter gh-md fuzzy font-lock+ flycheck-pos-tip flycheck-package flycheck-elsa flx-ido fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-easymotion evil-collection evil-cleverparens evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emr emmet-mode elisp-slime-nav editorconfig dumb-jump drag-stuff dotenv-mode dired-quick-sort diminish define-word dactyl-mode cython-mode counsel-projectile counsel-css company-web company-anaconda column-enforce-mode clean-aindent-mode centered-cursor-mode blacken auto-yasnippet auto-highlight-symbol auto-compile all-the-icons-ivy-rich aggressive-indent ace-window ace-link ac-ispell)))
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
