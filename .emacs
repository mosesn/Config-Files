(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/ensime_2.9.1-0.7.6/elisp/")
(add-to-list 'load-path
              "~/.emacs.d/yasnippet-0.6.1c/")
(add-to-list 'load-path "~/.emacs.d/scala-mode2/")

;(require 'haml-mode)
(require 'yasnippet) ;; not yasnippet-bundle
(require 'scala-mode)
;; Load the ensime lisp code...
(require 'ensime)
(require 'go-mode)
(require 'php-mode)
(require 'ido)

(add-hook 'go-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)))

(add-hook 'php-mode-hook
	  '(lambda ()
	     (setq c-basic-offset 4)
	     (setq-default indent-tabs-mode nil)))

;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/yasnippet-0.6.1c/snippets")
;; (setq yas/my-directory "~/.emacs.d/scala-mode/contrib/yasnippet/snippets")
;; (yas/load-directory yas/my-directory)
;; (add-hook 'scala-mode-hook
;; 	  '(lambda ()
;; 	     (yas/minor-mode-on)
;; 	     (setq indent-tabs-mode nil)
;; 	     ))
;; This step causes the ensime-mode to be started whenever
;; scala-mode is started for a buffer. You may have to customize this step
;; if you're not using the standard scala mode.
;; (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
;; MINI HOWTO:
;; Open .scala file. M-x ensime (once per project)

(add-hook 'scala-mode-hook '(lambda ()

  ;; Bind the 'newline-and-indent' command to RET (aka 'enter'). This
  ;; is normally also available as C-j. The 'newline-and-indent'
  ;; command has the following functionality: 1) it removes trailing
  ;; whitespace from the current line, 2) it create a new line, and 3)
  ;; indents it.  An alternative is the
  ;; 'reindent-then-newline-and-indent' command.
  (local-set-key (kbd "RET") 'newline-and-indent)

  ;; Alternatively, bind the 'newline-and-indent' command and
  ;; 'scala-indent:insert-asterisk-on-multiline-comment' to RET in
  ;; order to get indentation and asterisk-insertion within multi-line
  ;; comments.
  ;; (local-set-key (kbd "RET") '(lambda ()
  ;;   (interactive)
  ;;   (newline-and-indent)
  ;;   (scala-indent:insert-asterisk-on-multiline-comment)))

  ;; Bind the 'join-line' command to C-M-j. This command is normally
  ;; bound to M-^ which is hard to access, especially on some European
  ;; keyboards. The 'join-line' command has the effect or joining the
  ;; current line with the previous while fixing whitespace at the
  ;; joint.
  (local-set-key (kbd "C-M-j") 'join-line)

  ;; Bind the backtab (shift tab) to
  ;; 'scala-indent:indent-with-reluctant-strategy command. This is usefull
  ;; when using the 'eager' mode by default and you want to "outdent" a
  ;; code line as a new statement.
  (local-set-key (kbd "<backtab>") 'scala-indent:indent-with-reluctant-strategy)

  ;; and other bindings here
))

(add-hook 'haml-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil)
	     (define-key haml-mode-map "\C-m" 'newline-and-indent)))

(setq ido-enable-flex-matching t)
(setq-default show-trailing-whitespace t)
(setq-default column-number-mode t)
(setq c-default-style "linux")
(ido-mode t)

;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
