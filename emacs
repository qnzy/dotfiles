;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; .emacs configuration file ;;
;; yves kunz                 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(defconst inhibit-startup-message t)
;(setq inhibit-splash-screen t)
(setq inhibit-startup-screen t)
(setq initial-scratch-message "")

(indented-text-mode)
(setq visible-bell t)
(setq next-line-add-newlines nil)
(display-time)
(setq line-number-mode t)
(setq column-number-mode t)
(setq frame-title-format
  '("%S: " (buffer-file-name "%f" (dired-directory dired-directory "%b"))))
(set-input-mode nil nil 1)
(show-paren-mode t)
(require 'delsel)
(delete-selection-mode)
(require 'eudc)
(setq delete-key-deletes-forward t)
(setq ps-paper-type 'a4)
(setq buffers-menu-max-size 12)
(require 'recentf)
(recentf-mode 1)

(setq tab-width 4)
(setq auto-mode-alist (append '(("\\.tk"  . tcl-mode)) auto-mode-alist))
(global-hl-line-mode t)

 (autoload 'vhdl-mode "vhdl-mode" "VHDL Editing Mode" t)
 (setq vhdl-upper-case-keywords t)
 (setq vhdl-highlight-names t)
 (setq vhdl-highlight-verilog-keywords t)
 (setq vhdl-standard   '(ams))
 (setq vhdl-speedbar      t)
 (setq vhdl-index-menu    t)

 (autoload `eldo-mode "eldo-mode" "Eldo mode" t)
 (setq auto-mode-alist (cons '("\\.cir$"  . eldo-mode) auto-mode-alist))
 (setq auto-mode-alist (cons '("\\.ckt$"  . eldo-mode) auto-mode-alist))
 (setq auto-mode-alist (cons '("\\.spi$"  . eldo-mode) auto-mode-alist))
 (setq auto-mode-alist (cons '("\\.cdl$"  . eldo-mode) auto-mode-alist))
 (setq auto-mode-alist (cons '("\\.sp$"   . eldo-mode) auto-mode-alist))
 (setq auto-mode-alist (cons '("\\.eldo$"   . eldo-mode) auto-mode-alist))
 (add-hook 'eldo-mode-hook 'turn-on-font-lock '(lambda () (font-lock-mode 3)))


(require 'completion)
(dynamic-completion-mode)

(defun scroll-up-one-line ()
  (interactive)
  (scroll-up 1))

(defun scroll-down-one-line ()
  (interactive)
  (scroll-down 1))

(global-set-key [(control ?.)] 'scroll-up-one-line)        ; C-.
(global-set-key [(control ?,)] 'scroll-down-one-line)      ; C-,

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

(global-font-lock-mode 1)

(setq-default indent-tabs-mode nil)
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                              64 68 72 76 80 84 88 92 96 100 104 108 112))

(setq scheme-program-name "csi -:c")