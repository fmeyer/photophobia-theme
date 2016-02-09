;;; photophobia-light-theme.el --- A light/dark monocrome Emacs 24 theme.

;; Author: Fernando Meyer <frnmeyer [at] gmail.com>
;; Lincese: see LICENSE
;; Keywords: color, theme, photophobia
;; X-URL: http://github.com/fmeyer/photophobia-theme
;; URL: http://github.com/fmeyer/photophobia-theme
;;
;;  Based on minimal theme

(deftheme photophobia-light "photophobia light theme.")

(let* ((class '((class color) (min-colors 89)))
       (foreground "grey20")
       (background "#D3D1BF" )
       (fringe "#A9A698" )
       (cursor "black")
       (border "#D3D1BF")
       (minibuffer cursor)
       (region "#BEBFAF")
       (comment-delimiter "grey50")
       (comment "grey50")
       (constant foreground)
       (string "grey40")
       (modeline-foreground foreground)
       (modeline-background "gray95")
       (modeline-foreground-inactive comment)
       (modeline-background-inactive background)
       (hl-background region)
       (hl-face-background nil)
       (failure "red")
       (org-background background)
       )
  (setq fci-rule-color comment)
  (custom-theme-set-faces
   'photophobia-light
   ;; basic stuff
   `(default ((,class (:background ,background :foreground ,foreground))))
   `(cursor ((,class (:background ,cursor :inverse-video t))))
   `(vertical-border ((,class (:foreground ,border))))

   ;; minibuffer
   `(minibuffer-prompt ((,class (:foreground ,minibuffer :weight bold))))

   ;; region
   `(region ((,class (:background ,region))))
   `(secondary-selection ((,class (:background ,region))))

   ;; region
   `(fringe ((,class (:background ,fringe))))

   ;; faces
   `(font-lock-builtin-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-constant-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-keyword-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-type-face ((,class (:foreground ,foreground :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,foreground :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,foreground))))

   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment-delimiter))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-doc-face ((,class (:inherit (font-lock-comment-face)))))
   `(font-lock-string-face ((,class (:foreground ,foreground :foreground ,string))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,foreground :background ,region :weight normal))))
   `(isearch-fail ((,class (:foreground ,failure :bold t))))
   `(lazy-highlight
     ((,class (:foreground ,foreground :background ,region))))

   ;; ido-mode
   `(ido-subdir ((,class (:foreground ,foreground :weight bold))))
   `(ido-only-match ((,class (:foreground ,foreground :weight bold))))

   ;; show-paren
   `(show-paren-match
     ((,class (:background ,region))))
   `(show-paren-mismatch
     ((,class (:foreground ,failure :weight bold))))

   ;; modeline
   `(mode-line
       ((,class (:inverse-video unspecified
                                :overline ,border
                                :underline nil
                                :foreground ,modeline-foreground
                                :background ,modeline-background
                                :box (:line-width 1 :color ,background :style unspecified)
                                ))))
     `(mode-line-buffer-id ((,class (:weight bold))))
     `(mode-line-inactive
       ((,class (:inverse-video unspecified
                                :overline ,border
                                :underline nil
                                :foreground ,modeline-foreground-inactive
                                :background ,modeline-background-inactive
                                :box (:line-width 1 :color ,border :style unspecified)
                                ))))

      ;; hl-line-mode
     `(hl-line ((,class (:background ,hl-background))))
     `(hl-line-face ((,class (:background ,hl-face-background))))

     `(org-document-title ((,class (:foreground ,foreground))))

     `(org-link ((,class (:background ,org-background :foreground ,foreground :underline t))))
     `(org-tag ((,class (:background ,org-background :foreground ,foreground))))
     `(org-warning ((,class (:background ,region :foreground ,foreground :weight bold))))
     `(org-todo ((,class (:background ,region :foreground ,foreground :weight bold))))
     `(org-done ((,class (:background ,region :foreground ,foreground :weight bold))))

     `(org-table ((,class (:background ,org-background))))
     `(org-code ((,class (:background ,org-background))))
     `(org-date ((,class (:background ,org-background :underline t))))
     `(org-block ((,class (:background ,org-background))))
     `(org-block-background ((,class (:background ,org-background :foreground ,foreground))))
     `(org-block-begin-line
       ((,class (:background ,org-background :foreground ,comment-delimiter :weight bold))))
     `(org-block-end-line
       ((,class (:background ,org-background :foreground ,comment-delimiter :weight bold))))

     ;; js2-mode
     `(js2-external-variable ((,class (:inherit base-faces :weight bold))))
     `(js2-function-param ((,class (:inherit base-faces))))
     `(js2-instance-member ((,class (:inherit base-faces))))
     `(js2-jsdoc-html-tag-delimiter ((,class (:inherit base-faces))))
     `(js2-jsdoc-html-tag-name ((,class (:inherit base-faces))))
     `(js2-jsdoc-tag ((,class (:inherit base-faces))))
     `(js2-jsdoc-type ((,class (:inherit base-faces :weight bold))))
     `(js2-jsdoc-value ((,class (:inherit base-faces))))
     `(js2-magic-paren ((,class (:underline t))))
     `(js2-private-function-call ((,class (:inherit base-faces))))
     `(js2-private-member ((,class (:inherit base-faces))))
   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'photophobia-light)
