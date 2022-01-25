;;; init.el -*- lexical-binding: t; -*-

;; This file controls what Doom modules are enabled and what order they load
;; in. Remember to run 'doom sync' after modifying it!

;; NOTE Press 'SPC h d h' (or 'C-h d h' for non-vim users) to access Doom's
;;      documentation. There you'll find a "Module Index" link where you'll find
;;      a comprehensive list of Doom's modules and what flags they support.

;; NOTE Move your cursor over a module's name (or its flags) and press 'K' (or
;;      'C-c c k' for non-vim users) to view its documentation. This works on
;;      flags as well (those symbols that start with a plus).
;;
;;      Alternatively, press 'gd' (or 'C-c c d') on a module to browse its
;;      directory (for easy access to its source code).

(doom! :input
       ;; chinese

       :completion
       yasnippets
       company          ; the ultimate code completion backend
       ivy                 ; a search engine for love and life

       :ui
       doom              ; what makes DOOM look the way it does
       hl-todo           ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       indent-guides     ; highlighted indent columns
       (modeline   )       ; snazzy, Atom-inspired modeline, plus API
       neotree           ; a project drawer, like NERDTree for vim
       tabs              ; a tab bar for Emacs
       unicode           ; extended unicode support for various languages
       vc-gutter

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       (format +onsave)  ; automated prettiness
       snippets          ; my elves. They type so I don't have to

       :emacs
       (dired +icons)            ; making dired pretty [functional]
       (ibuffer +icons)        ; interactive buffer management

       :checkers
       syntax              ; tasing you for every semicolon you forget
       grammar           ; tasing grammar mistake every you make

       :tools
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       lsp                 ; M-x vscode
       rgb                 ;creating color strings

       :lang
       ;;cc                ; C > C++ == 1
       zig
       emacs-lisp          ; drown in parentheses
       sh
       markdown
       (org +roam2 +pretty +present)

       :config
       literate
       (default +bindings +smartparens))
