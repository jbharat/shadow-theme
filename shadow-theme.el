;;; shadow-theme.el

;; Copyright (C) 2017 John Olsson

;; Author: Bharat Joshi <jbharat@outlook.com>
;; Maintainer: Bharat Joshi <jbharat@outlook.com>
;; URL: https://github.com/jbharat/shadow-theme
;; Created: 22th July 2017
;; Version: 1.0.0
;; Keywords: color-theme, dark, dark background, bright colors

;; This file is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation, either version 3 of the License,
;; or (at your option) any later version.

;; This file is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this file.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Bright colors over dark background with italics in fonts.
;; Created specifically for Operator Mono font
;; Inspired by Molokai-theme

;;; Code:

(deftheme shadow
  "Shadow emacs theme")

(let
    (
     (bg                     "#0B080F")
     (fg                     "#F8F8F2")
     (seperator              "#271C33")
     (cursor                 "#F8F8F0")
     (face1                  "#66D9EF")
     (face2                  "#A6E22E")
     (face3                  "#F92672")
     (face4                  "#AE81FF")
     (face5                  "#A2DAE5")
     (face6                  "#D3F296")
     (face7                  "#FF5996")
     (face8                  "#D9C4FF")
     (bg1                    "#403D3D")
     (m1                     "#F6FF59")
     (m2                     "#FD971F")
     (m3                     "#EF5939")
     (m4                     "#960050")
     (m5                     "#BCA3A3")
     (m6                     "#272822")
     (m7                     "#FF0000")
     (diff1                  "#232526")
     (ml-inactive-face       "#BCBCBC")
     (ml-active-face         "#050302")
     (comment-face           "#465457")
     (warning-bg-face        "#333333")
     (full-white             "#FFFFFF")
     (full-black             "#000000")
     (white-smoke            "white-smoke")
     (hightlight             "#C4BE89")
     (line-highlight         "#271C33")
   )


(custom-theme-set-faces
 'shadow

 ;; default stuff
 `(default ((t (:background ,bg :foreground ,fg))))
 `(vertical-border ((t (:foreground ,seperator))))
 `(fringe ((t (:background ,bg))))
 `(cursor ((t (:background ,cursor))))
 `(bold ((t (:weight bold))))
 `(bold-italic ((t (:weight bold :slant italic))))
 `(custom-face-tag ((t (:foreground ,face1 :weight bold))))
 `(custom-state ((t (:foreground ,face2))))
 `(italic ((t (:slant italic))))
 `(region ((t (:background ,bg1))))
 `(underline ((t (:underline t))))

 ;; diff
 `(diff-added ((t (:foreground ,face2 :weight bold))))
 `(diff-context ((t (:foreground ,fg))))
 `(diff-file-header ((t (:foreground ,face1 :background nil))))
 `(diff-indicator-added ((t (:foreground ,face2))))
 `(diff-indicator-removed ((t (:foreground ,face3))))
 `(diff-header ((t (:foreground ,fg :background ,diff1))))
 `(diff-hunk-header ((t (:foreground ,face4 :background ,diff1))))
 `(diff-removed ((t (:foreground ,face3 :weight bold))))


 `(escape-glyph ((t (:foreground ,m1))))
 `(minibuffer-prompt ((t (:foreground ,face1))))

 ;; powerline/modeline
 `(mode-line ((t (:foreground ,fg :background ,ml-active-face
                              :box (:line-width 1 :color ,seperator :style released-button)))))
 `(mode-line-inactive ((t (:foreground ,ml-inactive-face :background ,bg ))))
 `(powerline-active1 ((t (:inherit mode-line :background ,bg))))
 `(powerline-active2 ((t (:inherit mode-line :background ,bg))))
 `(powerline-inactive1 ((t (:inherit mode-line-inactive :background ,bg))))
 `(powerline-inactive2 ((t (:inherit mode-line-inactive :background ,bg))))

 ;; font
 `(font-lock-builtin-face ((t (:foreground ,face2))))
 `(font-lock-comment-face ((t (:foreground ,comment-face :slant italic))))
 `(font-lock-comment-delimiter-face ((t (:foreground ,comment-face :slant italic))))
 `(font-lock-constant-face ((t (:foreground ,face4))))
 `(font-lock-doc-face ((t (:foreground ,m1 :slant italic))))
 `(font-lock-function-name-face ((t (:foreground ,face3 :slant italic))))
 `(font-lock-keyword-face ((t (:foreground ,face1))))
 `(font-lock-negation-char-face ((t (:weight bold))))
 `(font-lock-preprocessor-face ((t (:foreground ,face2))))
 `(font-lock-regexp-grouping-backslash ((t (:weight bold))))
 `(font-lock-regexp-grouping-construct ((t (:weight bold))))
 `(font-lock-string-face ((t (:foreground ,m1))))
 `(font-lock-type-face ((t (:foreground ,face1))))
 `(font-lock-variable-name-face ((t (:foreground ,face3))))
 `(font-lock-warning-face ((t (:foreground ,full-white (quote :background) ,warning-bg-face))))

 ;; highlighting
 `(highlight ((t (:foreground ,full-black :background ,hightlight))))
 `(hl-line ((t (:background ,line-highlight))))
 `(lazy-highlight ((t (:foreground ,comment-face :background ,full-black))))

 ;; ido
 `(ido-first-match ((t (:foreground ,face2 :weight bold))))
 `(ido-only-match ((t (:foreground ,face2))))
 `(ido-subdir ((t (:foreground ,m2))))

 ;; isearch
 `(isearch ((t (:foreground ,hightlight :background ,full-black))))
 `(isearch-fail ((t (:foreground ,full-white :background ,warning-bg-face))))

 ;; outline
 `(outline-1 ((t (:foreground ,face1))))
 `(outline-2 ((t (:foreground ,face2))))
 `(outline-3 ((t (:foreground ,face3))))
 `(outline-4 ((t (:foreground ,face4))))
 `(outline-5 ((t (:foreground ,face5))))
 `(outline-6 ((t (:foreground ,face6))))
 `(outline-7 ((t (:foreground ,face7))))
 `(outline-8 ((t (:foreground ,face8))))

 ;; delimiters
 `(rainbow-delimiters-depth-1-face ((t (:inherit outline-1))))
 `(rainbow-delimiters-depth-2-face ((t (:inherit outline-2))))
 `(rainbow-delimiters-depth-3-face ((t (:inherit outline-3))))
 `(rainbow-delimiters-depth-4-face ((t (:inherit outline-4))))
 `(rainbow-delimiters-depth-5-face ((t (:inherit outline-5))))
 `(rainbow-delimiters-depth-6-face ((t (:inherit outline-6))))
 `(rainbow-delimiters-depth-7-face ((t (:inherit outline-7))))
 `(rainbow-delimiters-depth-8-face ((t (:inherit outline-8))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground ,face1))))

 ;; others
 `(secondary-selection ((t (:background ,m6))))
 `(shadow ((t (:foreground ,comment-face))))
 `(widget-inactive ((t (:background ,m7))))

 ;; undo-tree
 `(undo-tree-visualizer-active-branch-face ((t (:inherit default))))
 `(undo-tree-visualizer-current-face ((t (:foreground ,m3))))
 `(undo-tree-visualizer-default-face ((t (:inherit shadow))))
 `(undo-tree-visualizer-register-face ((t (:foreground ,m1))))
 `(undo-tree-visualizer-unmodified-face ((t (:foreground ,face1))))

 ;; helm-buffer
 `(helm-buffer-file ((t (:inherit font-lock-builtin-face :foreground ,face1))))
 `(helm-ff-executable ((t (:foreground ,white-smoke))))
 `(helm-ff-file ((t (:inherit font-lock-builtin-face :foreground ,white-smoke))))
 `(helm-prefarg ((t (:foreground ,face4))))
 `(helm-selection ((t (:background ,line-highlight :foreground ,face3 :slant italic))))
 `(helm-buffer-directory ((t (:foreground ,face3))))
 `(helm-ff-directory ((t (:foreground ,face3))))
 `(helm-source-header ((t (:background ,full-black :foreground ,full-white
                                       :weight bold :height 1.3 :family "Sans Serif"))))
 `(helm-swoop-target-line-block-face ((t (:background ,full-black :foreground ,face3 :slant italic))))
 `(helm-swoop-target-line-face ((t (:background ,full-black :foreground ,face3 :slant italic))))

  ;; company
  `(company-tooltip ((t (:background ,bg :foreground ,full-white))))
  `(company-template-field ((t (:background: ,bg :foreground ,full-white))))
  `(company-tooltip-selection ((t (:background ,line-highlight :foreground ,face3 :slant italic))))
  `(company-echo-common ((t (:foreground ,face3))))
  `(company-scrollbar-bg ((t (:background ,seperator))))
  `(company-scrollbar-fg ((t (:background ,line-highlight))))
  `(company-tooltip-annotation ((t (:foreground ,face3))))
  `(company-tooltip-annotation-selection ((t (:inherit company-tooltip-annotation))))
  `(company-tooltip-common ((t (:foreground ,face8))))
  `(company-preview ((t (:background ,line-highlight :foreground ,face3 :slant italic))))
  '(company-preview-common ((t (:inherit company-preview ))))
  ;; '(company-preview-search ((t (:inherit company-preview :background "lime green"))))

 ))

(provide-theme 'shadow)
