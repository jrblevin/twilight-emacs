;;; twilight-theme.el --- Twilight Color Theme for Emacs.

;; Copyright (C) 2008 Marcus Crafter <crafterm@redartisan.com>
;; Copyright (C) 2015-2016 Jason Blevins <jrblevin@sdf.org>

;; Author: Marcus Crafter
;;	Jason Blevins
;; Adapted-By: Yesudeep Mangalapilly
;; Keywords: textmate twilight color theme
;; URL: https://github.com/jrblevin/twilight-emacs
;; Version: 1.1

;; This file is NOT a part of GNU Emacs.

;;; License:

;; MIT License
;; -----------
;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use,
;; copy, modify, merge, publish, distribute, sublicense, and/or
;; sell copies of the Software, and to permit persons to whom the
;; Software is furnished to do so, subject to the following
;; conditions:
;;
;; The above copyright notice and this permission notice shall
;; be included in all copies or substantial portions of the
;; Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
;; OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
;; FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
;; OTHER DEALINGS IN THE SOFTWARE.

;;; Usage:
;;
;; Defines a colour scheme resembling that of the original TextMate
;; Twilight colour theme.  To use add the file to your
;; `custom-theme-directory' and run `M-x customize-themes'.
;; Alternatively, you may add the following to your init file:
;;
;;     (load-theme 'twilight t)
;;
;; Credits due to the excellent TextMate Twilight theme.
;;
;; Thanks to Travis Jeffery for ido-mode and fixes to the
;; minibuffer-prompt to fit in with the rest of the theme.

;;; Code:

(deftheme twilight
  "TextMate Twilight theme for GNU Emacs.")

(let ((tw-bg-2        "#000000")
      (tw-bg-1        "#111111")
      (tw-bg          "#141414")
      (tw-bg+2        "#212121")
      (tw-bg+3        "#313131")
      (tw-bg+4        "#4b474c")
      (tw-bg+5        "#5f5a60")
      (tw-bg+8        "#8f8a80")
      (tw-fg-d        "#d4d0c8")
      (tw-fg-c        "#cacaca")
      (tw-fg          "#f8f8f8")
      (tw-wt          "#ffffff")
      (tw-rd-1        "#a3472c")
      (tw-rd          "#cf6a4c")
      (tw-mg-1        "#ef2929")
      (tw-mg          "#ee799f")
      (tw-dark-org    "#9b703f")
      (tw-med-org     "#efa510")
      (tw-light-org   "#f2b73f")
      (tw-pale-org    "#cda869")
      (tw-dark-grn-1  "#5a6340")
      (tw-dark-grn    "#646d4a")
      (tw-med-grn     "#8f9d6a")
      (tw-blu-1       "#5d6c84")
      (tw-blu         "#7587A6")
      (tw-cy-1        "#41595c")
      (tw-cy          "#5d8084")
      (tw-pale-pur    "#89788a")
      (tw-med-pur     "#9b859d"))

  (custom-theme-set-variables
   'twilight
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'twilight
   `(default ((t (:background ,tw-bg :foreground ,tw-fg))))
   `(cursor ((t (:background ,tw-pale-org))))
   `(buffers-tab ((t (:background ,tw-bg :foreground ,tw-fg-c))))

   `(font-lock-warning-face ((t (:background ,tw-mg :foreground ,tw-bg-2))))
   `(font-lock-builtin-face ((t (:foreground ,tw-pale-pur))))
   `(font-lock-comment-face ((t (:foreground ,tw-bg+5 :italic t))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,tw-bg+5))))
   `(font-lock-constant-face ((t (:foreground ,tw-rd))))
   `(font-lock-doc-string-face ((t (:foreground ,tw-med-org))))
   `(font-lock-function-name-face ((t (:foreground ,tw-dark-org))))
   `(font-lock-keyword-face ((t (:foreground ,tw-pale-org))))
   `(font-lock-preprocessor-face ((t (:foreground ,tw-rd))))
   `(font-lock-string-face ((t (:foreground ,tw-med-grn))))
   `(font-lock-type-face ((t (:foreground ,tw-pale-pur))))
   `(font-lock-variable-name-face ((t (:foreground ,tw-blu))))
   `(font-lock-warning-face ((t (:background ,tw-mg :foreground ,tw-mg-1))))
   `(font-lock-reference-face ((t (:inherit font-lock-constant-face)))) ; obsolete
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,tw-light-org))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,tw-mg-1))))

   `(minibuffer-prompt ((t (:foreground ,tw-bg+5))))
   `(fringe ((t (:background ,tw-bg-2 :foreground ,tw-bg+5))))
   `(linum ((t (:background ,tw-bg :foreground ,tw-bg+3))))
   `(linum-highlight-face ((t (:inherit linum :foreground ,tw-pale-org))))
   `(hl-line ((t (:background ,tw-bg+2))))
   `(mode-line ((t (:background ,tw-fg-c :foreground ,tw-bg-2))))
   `(mode-line-inactive
     ((t (:background ,tw-bg-1 :foreground ,tw-bg+4
          :box (:line-width -1 :color ,tw-bg+4)))))
   `(gui-element ((t (:background ,tw-fg-d :foreground ,tw-bg-2))))
   `(region ((t (:background ,tw-bg+3))))
   `(shadow ((t (:foreground ,tw-bg+4))))
   `(highlight ((t (:background ,tw-bg-1))))
   `(highline-face ((t (:background ,tw-cy))))
   `(link ((t :foreground ,tw-blu, :underline t)))
   `(link-visited ((t :foreground ,tw-blu-1, :underline t)))
   `(tooltip ((t (:background ,tw-fg-d :foreground ,tw-bg))))
   `(widget-field ((t (:background ,tw-bg+8))))
   `(text-cursor ((t (:background ,tw-pale-org :foreground ,tw-bg-2))))
   `(escape-glyph ((t (:foreground ,tw-cy))))
   `(underline ((nil (:underline nil))))
   `(yas/field-highlight-face ((t (:background ,tw-bg+2))))
   `(mumamo-background-chunk-submode ((t (:background ,tw-bg+2))))

   ;; Ido
   `(ido-subdir ((t (:foreground ,tw-rd))))
   `(ido-first-match ((t (:foreground ,tw-med-grn))))
   `(ido-only-match ((t (:foreground ,tw-med-grn))))

   ;; Enhanced-Ruby-Mode
   `(ruby-string-delimiter-face  ((t (:foreground ,tw-dark-grn-1))))
   `(ruby-regexp-delimiter-face ((t (:foreground ,tw-light-org))))
   `(ruby-heredoc-delimiter-face ((t (:foreground ,tw-med-pur))))
   `(ruby-op-face ((t (:foreground ,tw-pale-org))))

   ;; Magit
   `(magit-item-highlight ((((class color) (background dark))
                            (:background ,tw-bg+2))))
   `(magit-header ((((class color) (background dark))
                    (:foreground ,tw-dark-org))))
   `(magit-diff-add ((((class color) (background dark))
                      (:background  ,tw-med-grn))))
   `(magit-diff-del ((((class color) (background dark))
                      (:background ,tw-rd))))

   ;; Org
   `(org-hide ((((background dark)) (:foreground ,tw-bg))))
   `(org-clock-overlay ((t (:foreground ,tw-wt))))
   `(outline-4 ((t (:foreground ,tw-bg+8))))

   ;; Diff
   `(diff-header ((t (:background ,tw-bg+5))))
   `(diff-file-header ((t (:inherit diff-header))))
   `(diff-removed ((t (:background ,tw-rd))))
   `(diff-changed ((t (:background ,tw-pale-org))))
   `(diff-added ((t (:background  ,tw-med-grn))))

   ;; term
   `(term-color-black ((t (:foreground ,tw-bg+3 :background ,tw-bg))))
   `(term-color-red ((t (:foreground ,tw-rd :background ,tw-rd-1))))
   `(term-color-green ((t (:foreground ,tw-med-grn :background ,tw-dark-grn))))
   `(term-color-yellow ((t (:foreground ,tw-med-org :background ,tw-pale-org))))
   `(term-color-blue ((t (:foreground ,tw-blu :background ,tw-blu-1))))
   `(term-color-magenta ((t (:foreground ,tw-mg :background ,tw-mg-1))))
   `(term-color-cyan ((t (:foreground ,tw-cy :background ,tw-cy-1))))
   `(term-color-white ((t (:foreground ,tw-fg-c :background ,tw-bg+5))))
   `(term-default-fg-color ((t (:inherit term-color-white))))
   `(term-default-bg-color ((t (:inherit term-color-black))))))

(provide-theme 'twilight)

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;; Local Variables:
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
;;; twilight-theme.el ends here
