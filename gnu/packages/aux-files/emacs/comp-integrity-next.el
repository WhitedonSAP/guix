(require 'ert)

(eval-when-compile
  (defmacro expect-feature (&optional feature)
    `(progn
       (eval-when-compile
         (or (not ',feature)
             (require ',feature)))))

  (defmacro expect-native (fun &optional feature)
    `(progn
       (expect-feature ,feature)
       (should (native-comp-function-p (symbol-function ',fun)))))


  (defmacro expect-native-if-bound (fun &optional feature)
    `(and (expect-feature ,feature)
          (boundp ',fun)
          (should (native-comp-function-p (symbol-function ',fun)))))

  (defmacro expect-builtin (fun &optional feature)
    `(should (primitive-function-p (symbol-function ',fun)))))

(expect-native abbrev-mode)
(expect-native backquote-process)
(expect-native mode-line-widen)
(expect-native buffer-menu)
(expect-native button-mode)
(expect-native byte-run-strip-symbol-positions)
(expect-native case-table-get-table)
(expect-native cconv-convert)
(expect-native use-default-char-width-table)
(expect-native cl-generic-p)
(expect-native cl-struct-define)
(expect-native-if-bound x-setup-function-keys)
(expect-native encode-composition-rule)
(expect-native custom-declare-face)
(expect-native minibuffer-prompt-properties--setter)
(expect-native custom-add-choice)
(expect-native debug-early)
(expect-native display-table-slot disp-table)
(expect-native dnd-open-file)
(expect-native dos-mode25 dos-fns)
(expect-native find-file-text dos-w32)
(expect-native-if-bound dynamic-setting-handle-config-changed-event)
(expect-native easy-menu-item-present-p)
(expect-native eldoc-mode)
(expect-native electric-indent-mode)
(expect-native elisp-mode-syntax-propertize)
(expect-native getenv)
(expect-native epa-file-find-file-hook)
(expect-native face-list)
(expect-native find-file-noselect)
(expect-native fill-region)
(expect-native font-lock-change-mode)
(expect-native font-lock-add-keywords)
(expect-native-if-bound fontset-plain-name)
(expect-native format-read)
(expect-native frame-edges)
(expect-native-if-bound fringe-mode)
(expect-native help-quick)
(expect-native-if-bound image-type)
(expect-native indent-region)
(expect-native indian-compose-regexp)
(expect-native msdos-setup-keyboard term/internal)
(expect-native isearch-abort)
(expect-native iso-transl-set-language)
(expect-native jit-lock-mode)
(expect-native jka-compr-build-file-regexp)
(expect-native keymap-global-set)
(expect-native forward-sexp)
(expect-native lisp-string-in-doc-position-p)
(expect-native ls-lisp-set-options ls-lisp)
(expect-native macroexp-compiling-p)
(expect-native map-y-or-n-p)
(expect-native menu-find-file-existing)
(expect-native completion-boundaries)
(expect-native egyptian-shape-grouping)
(expect-native mouse-double-click-time)
(expect-native convert-define-charset-argument)
(expect-native coding-system-change-eol-conversion)
(expect-native store-substring mule-util)
(expect-native-if-bound mouse-wheel-change-button)
(expect-native advice-function-mapc)
(expect-native comment-string-strip)
(expect-builtin obarray-make)
(expect-native obarray-map)
(expect-native oclosure-type)
(expect-native forward-page)
(expect-native sentence-end)
(expect-native show-paren-function)
(expect-native pgtk-dnd-init-frame pgtk-dnd)
(expect-native prog-context-menu)
(expect-native-if-bound regexp-opt)
(expect-native get-register)
(expect-native query-replace-descr)
(expect-native rfn-eshadow-setup-minibuffer)
(expect-native read-multiple-choice)
(expect-native-if-bound scroll-bar-scale)
(expect-native gui-select-text)
(expect-native seq-first)
(expect-native hack-read-symbol-shorthands)
(expect-native next-error-find-buffer)
(expect-native exit-splash-screen)
(expect-native buffer-local-boundp)
(expect-native syntax-propertize-multiline)
(expect-native tab-bar-mode)
(expect-native tabulated-list-put-tag)
(expect-native text-mode)
(expect-native timer-activate)
(expect-native tool-bar-mode)
(expect-native tooltip-mode)
(expect-native tty-color-desc)
(expect-native ucs-normalize-hfs-nfd-comp-p ucs-normalize)
(expect-native uniquify-item-p)
(expect-native vc-mode)
(expect-native emacs-version)
(expect-native define-widget)
(expect-native window-right)
(expect-native x-dnd-init-frame x-dnd)
(expect-native-if-bound x-handle-no-bitmap-icon)
