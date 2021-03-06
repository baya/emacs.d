;; prevent adding coding information for ruby file
(setq ruby-insert-encoding-magic-comment nil)

;; UTF-8 as default encoding
(set-language-environment "UTF-8")

;; disable back up file
(setq make-backup-files nil)

;; disable tool-bar-mode
(setq tool-bar-mode nil)

;; Interactively Do Things (highly recommended, but not strictly requiredejxs)
(require 'ido)
(ido-mode t)

;; Iswitchb-mode
;; (require 'iswitchb)
;; (iswitchb-mode t)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)
(setq rinari-tags-file-name "TAGS")

;; 括号匹配，但是不跳转
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; yasnippet
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)


;; auto-complete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete)
(global-auto-complete-mode t)
;; (require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
;; (ac-config-default)
(add-to-list 'auto-mode-alist '("\\.erl\\'" . auto-complete-mode))
(add-to-list 'auto-mode-alist '("\\.c\\'" . auto-complete-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . auto-complete-mode))
(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")


;; (defun auto-complete-mode-maybe ()
;;   "No maybe for you. Only AC!"
;;   (unless (minibufferp (current-buffer))
;;     (auto-complete-mode 1)))

;; auto-complete-clang
;;(require 'auto-complete-clang)


;; ruby-mode
(add-to-list 'load-path "~/.emacs.d/ruby-mode")
(autoload 'ruby-mode "ruby-mode.el")
(setq auto-mode-alist
      (cons
       '("\\.rake" . ruby-mode) auto-mode-alist))

(setq auto-mode-alist
      (cons
       '("\\.rb" . ruby-mode) auto-mode-alist))
       

;; markdown-mode
(add-to-list 'load-path "~/.emacs.d/markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
  "Major Mode For editing Markdown files" t)
(setq auto-mode-alist
      (cons
       '("\\.text" . markdown-mode) auto-mode-alist))

(setq auto-mode-alist
      (cons
       '("\\.md" . markdown-mode) auto-mode-alist))

;; ack
(setq exec-path (append exec-path '("/usr/local/bin/")))
(add-to-list 'load-path "~/.emacs.d")
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)
;; ack-and-a-half
(autoload 'ack-and-a-half-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file-same "ack-and-a-half" nil t)
(autoload 'ack-and-a-half-find-file "ack-and-a-half" nil t)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;; The -i tells bash to be interactive, which makes it load the ~/.bashrc file
(setq shell-command-switch "-ic")

;; rsence
;; (setq rsense-home "/Users/kkjgm/opt/rsense")
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)
;; (put 'set-goal-column 'disabled nil)
;; (put 'scroll-left 'disabled nil)

;; config
(setq delete-by-moving-to-trash t)
(put 'narrow-to-region 'disabled nil)

;; color-theme
(add-to-list 'load-path "~/.emacs.d/color-theme")
;;(add-to-list 'load-path "~/.emacs.d/color-theme-solarized")
(require 'color-theme)
;;(require 'color-theme-solarized)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-late-night)))

;; yaml
(add-to-list 'load-path "~/.emacs.d/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; cflow
(autoload 'cflow-mode "cflow-mode")
(setq auto-mode-alist (append auto-mode-alist
			      '(("\\.cflow$" . cflow-mode))))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8) (ruby-compilation-executable . "ruby") (ruby-compilation-executable . "ruby1.8") (ruby-compilation-executable . "ruby1.9") (ruby-compilation-executable . "rbx") (ruby-compilation-executable . "jruby")))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; ruby-block
(require 'ruby-block)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle 'overlay)
;; display to minibuffer
(setq ruby-block-highlight-toggle 'minibuffer)
;; display to minibuffer and do overlay
(setq ruby-block-highlight-toggle t)

;; cucumber feature mode
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

;; font
(set-face-attribute 'default nil :height 110)

;; haml
(require 'haml-mode)

;; org
;; (setq org-todo-keywords
;;      '((sequence "TODO" "DOING" "HANGUP" "|" "DONE" "CANCEL")))

;; slim
(require 'slim-mode)

;; revert buffer
(global-set-key [(control c) r] 'revert-buffer)

;; default directory
(setq default-directory "~/")

;; han
;; (set-frame-font "Menlo")
(set-fontset-font
    (frame-parameter nil 'font)
    'han
    (font-spec :family "Hiragino Sans GB" ))

;; 启动去掉欢迎页面
(setq inhibit-startup-message t)

;; 反显选中区域
(transient-mark-mode t)

;; js code folding
;; M-x hs-hide-block
(add-hook 'js-mode-hook
	  (lambda ()
	    ;; Scan the file for nested code blocks
	    (imenu-add-menubar-index)
	    ;; Activate the folding mode
	    (hs-minor-mode t)))

;; web-mode
;; http://web-mode.org/
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(add-to-list 'auto-mode-alist '("\\.erl\\'" . auto-complete-mode))

;; cl-lib
(add-to-list 'load-path "~/.emacs.d/cl-lib/")
(require 'cl-lib)

;; powerline
;;(add-to-list 'load-path "~/.emacs.d/powerline")
;;(require 'powerline)
;;(powerline-default-theme)

;; delete trailing whitespace
;; (add-hook 'before-save-hook 'delete-trailing-whitespace)

;; zencoding
(add-to-list 'load-path "~/.emacs.d/emmet-mode")
(require 'emmet-mode)

;; (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
;; (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.

(global-set-key (kbd "C-x j") 'emmet-expand-line)
(global-unset-key "\C-j")
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-j") 'newline-and-indent)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


;; ag
;; ag-files
;; ag-regexp
;; ag-project
;; ag-project-files
;; ag-project-regexp
(add-to-list 'load-path "~/.emacs.d/ag.el")
(require 'ag)

;; ESS
(add-to-list 'load-path "~/.emacs.d/ess/lisp/")
(load "ess-site")

;; Goland
(add-to-list 'load-path "~/.emacs.d/go/" t)
(require 'go-mode-load)

;; Enhanced-Ruby-Mode
(add-to-list 'load-path "~/.emacs.d/Enhanced-Ruby-Mode");
(setq enh-ruby-program "~/.rbenv/shims/ruby");
(require 'ruby-mode)

;; Prompt Before Closing Emacs
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(global-set-key (kbd "C-x C-c") 'ask-before-closing)

;; scheme
;; M-x paredit-mode
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)

;; erlang/otp
(setq load-path (cons  "/usr/local/Cellar/erlang/17.1_1/lib/erlang/lib/tools-2.6.15/emacs"
      load-path))
      (setq erlang-root-dir "/usr/local/Cellar/erlang/17.1_1/lib/erlang")
      (setq exec-path (cons "/usr/local/Cellar/erlang/17.1_1/lib/erlang/bin" exec-path))
      (require 'erlang-start)

;; cc-mode
(require 'cc-mode)

(add-to-list 'auto-mode-alist '("\\.c\\'" . c-mode))

;; cedet
;; (global-ede-mode 1)
;; (require 'semantic/sb)
;; (semantic-mode 1)

; (setq c-default-style "linux")

;; c style
;; (setq c-default-style "linux"
;;           c-basic-offset 2)

(c-set-offset 'substatement-open 0)

;; erlang distel
;; (add-to-list 'load-path "~/.emacs.d/distel/elisp")
;; (require 'distel)
;; (distel-setup)

(set-language-environment "UTF-8")


;; scss-mode
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-compile-at-save nil)


;; company-mode
;; (add-to-list 'load-path "~/.emacs.d/company-mode-company-mode-2306c9c")
;; (autoload 'company-mode "company" nil t)

;; crystal-mode
(add-to-list 'load-path "~/.emacs.d")
(autoload 'crystal-mode "crystal-mode" "Major mode for crystal files" t)
(add-to-list 'auto-mode-alist '("\\.cr$" . crystal-mode))
(add-to-list 'interpreter-mode-alist '("crystal" . crystal-mode)