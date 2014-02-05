;;; -*- Mode: Emacs-Lisp ; coding: iso-2022-jp-unix -*-;;;

;; ----------------------------------------------------
;; $B4pK\@_Dj(B
;; ----------------------------------------------------

; first directory
(cd "~/")

; load-path
(add-to-list 'load-path "~/.emacs.d/site-lisp")

; $B8@8l(B
(set-language-environment "Japanese")

; $BJ8;z%3!<%I(B
(require 'ucs-normalize)
(prefer-coding-system 'utf-8)
(setq file-name-coding-system 'utf-8-hfs)
(setq local-coding-system 'utf-8-hfs)
(set-clipboard-coding-system 'sjis)

; $B5/F0;~$N2hLL$O$$$i$J$$(B
(setq inhibit-startup-message t)

; $B%9%/%m!<%k$G2~9T$7$J$$(B
(setq next-line-add-newlines nil)

; $B%D!<%k%P!<!"%a%K%e!<%P!<HsI=<((B
(if window-system
    (tool-bar-mode 0))

; $B%?%$%H%k%P!<$K%U%!%$%k$N%U%k%Q%9I=<((B
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

; $B2hLL%9%/%m!<%k;~$N=EJ#9T?t(B
(setq next-screen-context-lines 1)

; 1$B9T$:$D%9%/%m!<%k(B
(setq scroll-step 1)

; shell
(global-set-key [f5] 'shell)

; IM
(setq default-input-method "MacOSX")

;; ----------------------------------------------------
;; $BI=<(4XO"(B
;; ----------------------------------------------------

; $B9THV9f$r:8$KI=<((B
(require 'linum)
(global-linum-mode t)
(set-face-attribute 'linum nil :foreground "IndianRed" :height 0.8)
(setq linum-format "%4d ")

; $B;~4V$rI=<((B
(display-time-mode 1)

; $B9THV9f$r%P!<$KI=<((B
(column-number-mode 1)

; $B%S!<%W2;$rLD$i$5$J$$(B
(setq visible-bell t)
(setq ring-bell-function 'ignore)

; $BBP1~$9$k3g8L$r8w$i$;$k!#(B
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)

; C-x C-f $B$G$N0UL#$NL5$$%Q%9I=<($r%0%l!<%"%&%H$9$k(B
(file-name-shadow-mode t)

; scratch$B%P%C%U%!$N=i4|%a%C%;!<%8$r>C$9(B
(setq initial-scratch-message "")

; yes/no $B$r(B y/n $B$X4JN,2=(B
(fset 'yes-or-no-p 'y-or-n-p)

; $B%j!<%8%g%s$r%O%$%i%$%H(B
(setq-default transient-mark-mode t)

; $B9T4V$r;XDj(B
(setq-default line-spacing 0.2)

; $B%P%C%U%!2hLL30J8;z$N@Z$j5M$aI=<((B
(setq truncate-lines nil)

; $B9TKv$N6uGr$r6/D4I=<((B
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

; $B%&%#%s%I%&=DJ,3d;~$N%P%C%U%!2hLL30J8;z$N@Z$j5M$aI=<((B
(setq truncate-partial-width-windows t)

;; ----------------------------------------------------
;; Look and Feel
;; ----------------------------------------------------

; theme
(if window-system (load-theme 'deeper-blue t))
; solalized
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;; (if window-system (load-theme 'solarized-dark t))

; $BF)2a(B
(if window-system (set-frame-parameter nil 'alpha 95))

; mode line $BJ?LL2=(B
(set-face-attribute 'mode-line          nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

;; ----------------------------------------------------
;; $B%U%)%s%H4XO"(B
;; ----------------------------------------------------

; $B=PE5!'(Bhttp://sakito.jp/emacs/emacs23.html
(if (eq window-system 'ns)
    (progn
      (create-fontset-from-ascii-font "Monaco-12:weight=normal:slant=normal" nil "menlokakugo")
      (set-fontset-font "fontset-menlokakugo"
                        'unicode
                        (font-spec :family "Hiragino Kaku Gothic ProN" :size 14)
                        nil
                        'append)
      (add-to-list 'default-frame-alist '(font . "fontset-menlokakugo"))

      ))

;; ----------------------------------------------------
;; $BJ8;z4XO"(B
;; ----------------------------------------------------

; Tab$BI}(B4
(setq-default tab-width 4)

; $B%$%s%G%s%H$O(BTab$B$G$O$J$/(BSpace
(setq-default indent-tabs-mode nil)

;$B%$%s%G%s%H$O(B4$B%9%Z!<%9(B
(setq-default c-basic-offset 4)

; $BJd40;~$KBgJ8;z>.J8;z$r6hJL$7$J$$(B
(setq completion-ignore-case t)

; $B%j!<%8%g%s$,(Bactive$B$J;~$N5sF0$r(BWindows$B$HF1$8$K$9$k(B
(delete-selection-mode 1)

; $B9T$N@hF,$G(BC-k$B$r0l2s2!$9$@$1$G9TA4BN$r>C5n$9$k(B
(setq kill-whole-line t)

; $B:G=*9T$KI,$:0l9TA^F~$9$k(B
(setq require-final-newline t)

; $BJ#?t$N(B whitespace $B$r:o=|(B
(setq backward-delete-char-untabify-method 'hungry)

; $B%P%C%U%!@Z$jBX$(;~$K%j!<%8%g%s$rJ];}(B
(setq highlight-nonselected-windows t)

;; ----------------------------------------------------
;; $B%-!<%P%$%s%I(B
;; ----------------------------------------------------

; $BJd40(B
(define-key global-map (kbd "C-c C-i") 'dabbrev-expand)

; undo
(define-key global-map (kbd "C-z") 'undo)

; goto-line
(define-key global-map (kbd "M-g") 'goto-line)

; $B$"$kDxEY(B Mac $BI8=`$K=`5r$5$;$k(B
(setq mac-command-key-is-meta nil)
(setq mac-option-modifier 'meta)
(setq mac-command-modifier 'super)
(global-set-key [?\s-c] 'kill-ring-save)
(global-set-key [?\s-v] 'yank)
(global-set-key [?\s-x] 'kill-region)
(global-set-key [?\s-z] 'undo)
(global-set-key [?\s-s] 'save-buffer)
(global-set-key [?\s-q] 'save-buffers-kill-terminal)
(global-set-key [?\s-f] 'isearch-forward)
(global-set-key [?\s-g] 'isearch-repeat-forward)
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\M-h" 'help)

;; ----------------------------------------------------
;; $B%P%C%/%"%C%W4XO"(B
;; ----------------------------------------------------

; $B%P%C%/%"%C%W%U%!%$%k$r$^$H$a$k(B
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/backup"))
            backup-directory-alist))

; $BJ#?t$N%P%C%/%"%C%W@$Be$r4IM}(B
(setq version-control t)

; $B?7$7$$$b$N$r$$$/$D;D$9$+(B
(setq kept-new-versions 5)

; $B8E$$$b$N$r$$$/$D;D$9$+(B
(setq kept-old-versions 5)

; $B3NG'$;$:$K8E$$$b$N$r>C$9(B
(setq delete-old-versions t)

; $B%P!<%8%g%s4IM}2<$N%U%!%$%k$b%P%C%/%"%C%W$r:n$k(B
(setq vc-make-backup-files t)

; Dropbox
(setq auto-save-file-name-transforms
      `((".*/Dropbox/.*" ,temporary-file-directory t)))

