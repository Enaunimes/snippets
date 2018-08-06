(setq inhibit-startup-screen t)
(setq require-final-newline t)
(setq mode-require-final-newline t)

(setq-default line-spacing 3)

(menu-bar-mode -1)
(if window-system
    (tool-bar-mode -1))
(if window-system
    (scroll-bar-mode -1))

(setq backup-inhibited t)

(set-foreground-color "gray80")
(set-background-color "gray14")

(add-to-list 'default-frame-alist
	     '(font . "Consolas-12"))

;; Source Han Serif CN 12 for CJK characters.
(set-fontset-font t 'han
                  (font-spec :family "Source Han Sans CN Medium"))

(setq fill-column 78)

;; Package
(package-initialize 1)
(setq package-check-signature t)


;; ;; Yasnippet
;; (add-to-list 'load-path
;; 	     "~/.emacs.d/elpa/yasnippet-0.8.0")
;; (require 'yasnippet)
;; (yas-global-mode 1)


;; ;; Company
;; (add-to-list 'load-path
;; 	     "~/.emacs.d/elpa/company-0.8.12")
;; (require 'company)
;; (global-company-mode 1)
;; (setq company-idle-delay 0)


;; Org
(setq org-log-done 'time)    ; 'note?
(setq org-todo-keywords
      '((sequence "TODO" "WAITING" "STARTED" "|" "DONE" "CANCELED")))

(setq show-paren-delay 0)
(show-paren-mode 1)

(setq org-todo-keyword-faces
      (quote (("WAITING" :foreground "yellow" :weight bold)
	      ("STARTED" :foreground "gold" :weight bold)
	      ("CANCELED" :foreground "DarkViolet" :weight bold))))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; (setq org-default-notes-file "~/Notes/notes.org")
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline "~/Notes/notes.org" "Tasks")
	 "* TODO %?\n %i\n %a")
	("j" "Journal" entry (file+datetree "~/Notes/journal.org")
	 "* %?\nEntered on %U\n %i\n %a")
	("n" "Notes" entry (file+headline "~/Notes/notes.org" "Notes"))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (org yasnippet-classic-snippets yasnippet company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
