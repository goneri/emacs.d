;; package --- Summar

(setq load-prefer-newer t)

(require 'cask "/home/goneri/.cask/cask.el")
(cask-initialize)
(require 'use-package)

(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(use-package elpy)
(elpy-enable)
; preserve the windmove binding
(eval-after-load "elpy"
  '(cl-dolist (key '("M-<up>" "M-<down>" "M-<left>" "M-<right>"))
     (define-key elpy-mode-map (kbd key) nil)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ack-and-a-half-arguments
   (quote
    ("--ignore-dir .tox --ignore-dir build --ignore-dir .testrepository")))
 '(ansi-term-color-vector
   [unspecified "#1F1611" "#660000" "#144212" "#EFC232" "#5798AE" "#BE73FD" "#93C1BC" "#E6E1DC"])
 '(bmkp-last-as-first-bookmark-file "/home/goneri/.emacs.d/bookmarks")
 '(compilation-scroll-output (quote first-error))
 '(custom-safe-themes
   (quote
    ("0795e2c85394140788d72d34969be4acb305e4a54149e7237787d9df27832fbb" "6d78a562789b1c1e58d2fd7dcadbc1c88012584ec678f85817a451d4d7b370f0" "1ef7df153ee59ef210acf0060073cd98e4992c9014b4fc7766243a3cb56cc6e4" "255de8fde9647c6a0fbd0c9877ee02b612f8ed3cf5c78162b83ee68dfef05952" "454dc6f3a1e9e062f34c0f988bcef5d898146edc5df4aa666bf5c30bed2ada2e" "96efbabfb6516f7375cdf85e7781fe7b7249b6e8114676d65337a1ffe78b78d9" "c4e6fe8f5728a5d5fd0e92538f68c3b4e8b218bcfb5e07d8afff8731cc5f3df0" "e53cc4144192bb4e4ed10a3fa3e7442cae4c3d231df8822f6c02f1220a0d259a" "de2c46ed1752b0d0423cde9b6401062b67a6a1300c068d5d7f67725adc6c3afb" "013e87003e1e965d8ad78ee5b8927e743f940c7679959149bbee9a15bd286689" "28ea856c2f85b4a908fe72e3dea5e28254b969b93cbe88e7cad1ed2fd19b53a1" "45bd43da80a95b4f5157b1992350eb4207025bdeefb55c68548dcb34bf403124" "0d19ff470ad7029d2e1528b3472ca2d58d0182e279b9ab8acd65e2508845d2b6" "3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" "0521e8bea7954b4d42e9b68390be2a6d4549d15a3f47b391b8c870766f520cf7" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "8b231ba3e5f61c2bb1bc3a2d84cbd16ea17ca13395653566d4dfbb11feaf8567" "297063d0000ca904abb446944398843edaa7ef2c659b7f9087d724bf6f8c1d1f" "97a2b10275e3e5c67f46ddaac0ec7969aeb35068c03ec4157cf4887c401e74b1" "65ae93029a583d69a3781b26044601e85e2d32be8f525988e196ba2cb644ce6a" "bc89fda3d232a3daa4eb3a9f87d6ffe1272fea46e4cf86686d9e8078e4209e2c" "71b42addab167732ebef0aa9aed1a310c6db65090a16182f8fcec2301df1880f" "c2cfe2f1440d9ef4bfd3ef4cf15bfe35ff40e6d431264b1e24af64f145cffb11" "7694bfb46ec19cfc47093783633d8cd4df208d620104910bf5c1c840528a8dd1" "75c9f0b0499ecdd0c856939a5de052742d85af81814e84faa666522c2bba7e85" "93e458ab36b4d904c2e485944d0e1b4d4ad879d83bb6ca5c19a9dac7f6549ee5" "ea97033435e26d4742c0d88de2238ac8d1cb9e6df5eb9a73324382fcefa7118a" "f3b6091bc26ab76c4ba9814685e001f37d0801ee46fd8912026192ffbe832842" "50edb7914e8d369bc03820d2dcde7e74b7efe2af5a39511d3a130508e2f6ac8f" default)))
 '(debian-changelog-mailing-address "goneri@debian.org")
 '(diary-entry-marker (quote font-lock-variable-name-face))
 '(elfeed-feeds
   (quote
    ("http://planet.emacsen.org/atom.xml" "http://www.bortzmeyer.org/feed-full.atom" "http://www.nenuial.org/feed/atom" "http://www.coriolys.org/feed/rss2" "http://frikodisul.net/feed/rss2")))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-sane-defaults)))
 '(highlight-symbol-colors
   (quote
    ("#EFFF00" "#73CD4F" "#83DDFF" "MediumPurple1" "#66CDAA" "DarkOrange" "HotPink1" "#809FFF" "#ADFF2F")))
 '(hl-paren-background-colors
   (quote
    ("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00")))
 '(hl-paren-colors (quote ("#326B6B")))
 '(inhibit-startup-screen t)
 '(ispell-dictionary "francais")
 '(linum-format " %7d ")
 '(notmuch-always-prompt-for-sender t)
 '(notmuch-crypto-process-mime t)
 '(notmuch-saved-searches
   (quote
    ((:name "[enovance] inbox" :query "tag:inbox and not tag:delete and folder:enovance and not tag:killed")
     (:name "[enovance] archive" :query "tag:archive and folder:enovance")
     (:name "[Red Hat] inbox" :query "tag:inbox and not tag:delete and folder:redhat and not tag:killed")
     (:name "[Red Hat] archive" :query "tag:archive and folder:redhat and not tag:memo")
     (:name "[Red Hat] memo" :query "tag:memo and not tag:delete and not tag:archive and not tag:killed")
     (:name "[perso] inbox" :query "tag:inbox and not tag:delete not folder:enovance and not folder:redhat and not tag:killed")
     (:name "[perso] archive" :query "tag:archive and not folder:enovance and not folder:redhat")
     (:name "new" :query "tag:new")
     (:name "last" :query "date:yesterday..today")
     (:name "sent" :query "from:goneri" :count-query "300")
     (:name "follow" :query "tag:follow" :count-query "500"))))
 '(notmuch-search-oldest-first nil)
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" "_darcs" ".tox" ".svn" "build" ".tox")))
 '(pyenv-mode t)
 '(rst-compile-toolsets
   (quote
    ((html "rst2html-with-preview" ".html" nil)
     (latex "rst2latex" ".tex" nil)
     (newlatex "rst2newlatex" ".tex" nil)
     (pseudoxml "rst2pseudoxml" ".xml" nil)
     (xml "rst2xml" ".xml" nil)
     (pdf "rst2pdf" ".pdf" nil)
     (s5 "rst2s5" ".html" nil))))
 '(send-mail-function (quote sendmail-send-it))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#f6f0e1")
 '(vc-annotate-color-map
   (quote
    ((20 . "#e43838")
     (40 . "#f71010")
     (60 . "#ab9c3a")
     (80 . "#9ca30b")
     (100 . "#ef8300")
     (120 . "#958323")
     (140 . "#1c9e28")
     (160 . "#3cb368")
     (180 . "#028902")
     (200 . "#008b45")
     (220 . "#077707")
     (240 . "#259ea2")
     (260 . "#358d8d")
     (280 . "#0eaeae")
     (300 . "#2c53ca")
     (320 . "#0000ff")
     (340 . "#0505cc")
     (360 . "#a020f0"))))
 '(vc-annotate-very-old-color "#a020f0"))




(use-package pallet :init (pallet-mode))

;elpy(use-package frame
;elpy  :init (toggle-frame-fullscreen)
;elpy  :config (setq blink-cursor-blinks 0))

;fout-la-merge(use-package highlight-symbol
;fout-la-merge  :init
;fout-la-merge  (hook-modes progish-modes
;fout-la-merge    (highlight-symbol-mode)
;fout-la-merge    (highlight-symbol-nav-mode))
;fout-la-merge  :config (setq highlight-symbol-idle-delay 0))

;(use-package volatile-highlights
;  :init (volatile-highlights-mode))

(use-package rainbow-mode
  :init
  (add-hook 'prog-mode-hook (rainbow-mode 1))
)

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(use-package powerline
  :init (powerline-default-theme)
  :config
  (setq powerline-default-separator 'utf-8))

(use-package ag
  :config
  (setq ag-reuse-buffers t
        ag-highlight-search t))

;;;;; Navigation & Search

(use-package anzu
  :bind (("s-q" . anzu-query-replace))
  :init (global-anzu-mode))

(use-package imenu
  :init
  (use-package imenu-anywhere
    :bind (("s-r" . imenu-anywhere)))
  (setq imenu-auto-rescan t))

(use-package ace-jump-buffer
  :init
  (make-ace-jump-buffer-function "shellish"
    (with-current-buffer buffer
      (not (derived-mode-p 'comint-mode))))
  :config
  (setq ajb-home-row-keys t))

(use-package projectile
  :idle (projectile-cleanup-known-projects)
  :config
  (setq projectile-enable-caching t
        projectile-tags-command "ripper-tags -R -f TAGS")
  :init
  (projectile-global-mode))

(use-package helm-swoop
  :config
  (bind-key "s-f" #'helm-swoop-from-isearch isearch-mode-map)
  (bind-key "s-f" #'helm-multi-swoop-all-from-helm-swoop helm-swoop-map)
  (setq helm-swoop-speed-or-color t
        helm-multi-swoop-edit-save t
        helm-swoop-use-line-number-face t
        helm-swoop-pre-input-function (lambda ())))

(use-package smex
  :bind (([remap execute-extended-command] . smex)
         ("s-P" . smex))
  :init
  (smex-initialize)
  (setq smex-save-file (expand-file-name ".smex-items" user-emacs-directory)))

(use-package flycheck
  :commands global-flycheck-mode
  :idle (global-flycheck-mode 1)
  :config (setq-default flycheck-disabled-checkers '(html-tidy notmuch emacs-lisp-checkdoc)))


(use-package puppet-mode
  :mode (("\\.pp$" . puppet-mode)))

(use-package enh-ruby-mode
  :mode (("\\.rake$" . enh-ruby-mode)
         ("\\.gemspec$" . enh-ruby-mode)
         ("\\.ru$" . enh-ruby-mode)
         ("Rakefile$" . enh-ruby-mode)
         ("Gemfile$" . enh-ruby-mode)
         ("Capfile$" . enh-ruby-mode)
         ("Puppetfile$" . enh-ruby-mode)
         ("Guardfile$" . enh-ruby-mode))
  :init
  (progn
    (add-hook 'enh-ruby-mode-hook 'robe-mode)
    (add-hook 'robe-mode-hook 'ac-robe-setup)))

(setq load-prefer-newer t)
(use-package auto-compile)
(auto-compile-on-load-mode 1)

(setq browse-url-generic-program (executable-find "firefox")
          browse-url-browser-function 'browse-url-generic)

(scroll-bar-mode 0)
(blink-cursor-mode 0)
(tool-bar-mode -1)

;;;;(use-package flx-ido)
;;;;(ido-mode 1)
;;;;(ido-everywhere 1)
;;;;(flx-ido-mode 1)
;;;;;; disable ido faces to see flx highlights.
;;;;(setq ido-enable-flex-matching t)
;;;;(setq ido-use-faces nil)

;(add-to-list 'load-path "/home/goneri/notmuch/emacs")

(use-package notmuch)
; (autoload 'notmuch "notmuch" nil t)
;(autoload 'notmuch-search "notmuch" nil t)
;(autoload 'notmuch-hello "notmuch-hello" nil t)
;(autoload 'notmuch-show "notmuch-show" nil t)
(setq notmuch-search-oldest-first nil)
(setq notmuch-always-prompt-for-sender t)
;; Sign messages by default.
    (add-hook 'message-setup-hook 'mml-secure-sign-pgpmime)
;; http://www.guru-group.fi/~too/nottoomuch/nottoomuch-addresses/
(use-package notmuch-address)
(setq notmuch-address-command "/home/goneri/nottoomuch/nottoomuch-addresses.sh")
(notmuch-address-message-insinuate)

(define-key notmuch-show-mode-map "b"
  (lambda (&optional address)
    "Bounce the current message."
    (interactive "sBounce To: ")
    (notmuch-show-view-raw-message)
    (message-resend address)))

(defun notmuch-show-tag-delete ()
  "mark message as delete"
  (interactive)
  (notmuch-search-tag '("+delete" "-inbox" "-new")))
(define-key notmuch-search-mode-map "D" 'notmuch-show-tag-delete)

(defun notmuch-tree-tag-delete ()
  "mark thread as delete"
  (interactive)
  (notmuch-tree-tag-thread '("+delete" "-inbox" "-new")))
(define-key notmuch-tree-mode-map "D" 'notmuch-tree-tag-delete)

(defun notmuch-show-tag-archive ()
  "mark message as archive"
  (interactive)
  (notmuch-search-tag '("+archive" "-inbox" "+seen")))
(define-key notmuch-search-mode-map "A" 'notmuch-show-tag-archive)

(defun notmuch-tree-tag-archive ()
  "mark thread as archive"
  (interactive)
  (notmuch-tree-tag-thread '("+archive" "-inbox" "+seen")))
(define-key notmuch-tree-mode-map "A" 'notmuch-tree-tag-archive)

(defun notmuch-show-tag-killed ()
  "mark message as killed"
  (interactive)
  (notmuch-search-tag '("+killed" "-inbox")))
(define-key notmuch-search-mode-map "K" 'notmuch-show-tag-killed)

(defun notmuch-tree-tag-killed ()
  "mark message as killed"
  (interactive)
  (notmuch-tree-tag-thread '("+killed" "-inbox")))
(define-key notmuch-tree-mode-map "K" 'notmuch-tree-tag-killed)

(defun notmuch-show-tag-seen ()
  "mark message as seen"
  (interactive)
  (notmuch-search-tag '("+seen" "-inbox" "-unread")))
(define-key notmuch-search-mode-map "S" 'notmuch-show-tag-seen)

(defun notmuch-tree-tag-seen ()
  "mark thread as archive"
  (interactive)
  (notmuch-tree-tag-thread '("+seen" "-inbox" "-unread")))
(define-key notmuch-tree-mode-map "S" 'notmuch-tree-tag-seen)


; Addr
(setq user-mail-address "goneri@lebouder.net")
(setq user-full-name "Gonéri Le Bouder")

; gnus
(use-package gnus)
(setq nnml-directory "~/gnus-mail")
(setq message-directory "~/gnus-mail")

(setq gnus-select-method
      '(nnimap "gmail"
               (nnimap-address "imap.gmail.com")
               (nnimap-server-port 993)
               (nnimap-stream ssl)))

; https://github.com/naiquevin/sphinx-doc.el/blob/master/README.md
;(add-hook 'python-mode-hook (lambda ()
;                                  (use-package sphinx-doc)
;                                  (sphinx-doc-mode t)))


(add-hook 'prog-mode-hook (lambda ()
			    (setq whitespace-style '(face trailing lines-tail tabs space-before-tab))
(setq whitespace-line-column 80)
(whitespace-mode t)))
;	(setq-default whitespace-style '(face trailing lines empty indentation::space))
;	(setq-default whitespace-line-column 80)

; trailing white spaces
; http://www.emacswiki.org/emacs/ShowWhiteSpace
;(add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
;(add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
;(add-hook 'font-lock-mode-hook 'hc-highlight-trailing-whitespace)

; evil
;(use-package evil)
;(evil-mode 1)
;(evil-set-initial-state 'elfeed-search 'emacs)
;(evil-set-initial-state 'elfeed-search-mode 'emacs)
;(evil-set-initial-state 'elfeed-show-mode 'emacs)

; http://ergoemacs.org/emacs/emacs_buffer_management.html
; (defalias 'list-buffers 'ibuffer)


; https://github.com/ymln/dotfiles/blob/master/.emacs
(use-package helm-ag)
(defun do-in-root (f)
  (if (projectile-project-p)
    (funcall f (projectile-project-root))
    (error "You're not in project")))
(defun helm-do-ag-in-root ()
  (interactive)
  (do-in-root 'helm-do-ag))
(defun do-ag-in-root (string)
  (interactive (list (read-from-minibuffer "Search string: " (ag/dwim-at-point))))
  (do-in-root '(lambda (root) (ag/search string root))))
; end https://github.com/ymln/dotfiles/blob/master/.emacs

; cperl
(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4)

; Projectile
(use-package projectile)
(projectile-global-mode) ;; to enable in all buffers


(global-set-key (kbd "C-c r") 'projectile-run-shell-command-in-root)
(global-auto-revert-mode 1)

;(global-set-key (kbd "C-c h") 'helm-projectile)
(global-set-key (kbd "C-c h") 'projectile-find-file)
;(global-set-key (kbd "C-c a") 'helm-do-ag-in-root)
(global-set-key (kbd "C-c a") 'projectile-ack)
(global-set-key (kbd "C-c g") 'projectile-grep)
(global-set-key (kbd "C-c b") 'projectile-ibuffer)

(global-set-key (kbd "C-c i") 'helm-imenu)
(setq projectile-completion-system 'ido)
;(setq projectile-completion-system 'helm) ← provoque des soucis avec projectile quand on veut switcher de projet
;(setq projectile-remember-window-configs t)
;(setq projectile-switch-project-action 'projectile-dired)
;; flx-ido looks better with ido-vertical-mode


;(use-package tabbar-ruler)
;(tabbar-ruler-group-by-projectile-project)
;(global-set-key (kbd "C-<left>") 'tabbar-ruler-backward)
;(global-set-key (kbd "C-<right>") 'tabbar-ruler-forward)


(use-package ido
  :init (ido-mode)
  (use-package ido-ubiquitous
    :init
    (ido-mode 1)
    (ido-ubiquitous-mode))
  (use-package flx-ido
    :init (flx-ido-mode)
    :config (setq flx-ido-use-faces nil))
  (use-package ido-vertical-mode
    :init (ido-vertical-mode)
    :config
    (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right))
  :config
  (setq ido-cannot-complete-command 'exit-minibuffer
        ido-use-virtual-buffers t
        ido-auto-merge-delay-time 2
        ido-create-new-buffer 'always))


;;;;(defun sd/ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;;;;  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;;;;  (define-key ido-completion-map (kbd "<down>") 'ido-next-match)
;;;;  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
;;;;  (define-key ido-completion-map (kbd "<up>") 'ido-prev-match))

;; Use ido everywhere
;(use-package ido-ubiquitous)
;(ido-ubiquitous-mode 1)


(autoload 'gnus-alias-determine-identity "gnus-alias" "" t)
(add-hook 'message-setup-hook 'gnus-alias-determine-identity)

(use-package gnus-alias)
(gnus-alias-init)
(add-hook 'message-load-hook 'gnus-alias-select-identity)
(setq gnus-alias-verbosity                              9
      gnus-alias-point-position                       'empty-header-or-body
      gnus-alias-default-identity                     "home"
      gnus-alias-unknown-identity-rule                'andesi
      gnus-alias-overlay-identities                   nil
      )
;;;;; Define two identities, "home" and "work"
(setq gnus-alias-identity-alist
      '(("home"
         nil ;; Does not refer to any other identity
         "Gonéri Le Bouder <goneri@lebouder.net>" ;; Sender address
         nil ;; No organization header
         nil ;; No extra headers
         nil ;; No extra body text
         "~/.signature")
       ("debian"
         nil ;; Does not refer to any other identity
         "Gonéri Le Bouder <goneri@debian.org>" ;; Sender address
         nil ;; No organization header
         nil ;; No extra headers
         nil ;; No extra body text
         "~/.signature")
        ("enovance"
         nil
         "Gonéri Le Bouder <goneri.lebouder@enovance.com>"
         nil ;; "eNovance"
         nil ;; (("Fcc" . "/home/goneri/Maildir/enovance/sent")) ;;
         nil
         "~/.signature")
        ("redhat"
         nil
         "Gonéri Le Bouder <goneri@redhat.com>"
         nil ;; "eNovance"
         nil ;; (("Fcc" . "/home/goneri/Maildir/enovance/sent")) ;;
         nil
         "~/.signature")))
;;;;; Use "home" identity by default
(setq gnus-alias-default-identity "home")
;;;;; Define rules to match work identity
(setq gnus-alias-identity-rules
      '(
       ("enovance" ("any" ".*enovance\\.com.*" both) "enovance")
       ("enovance" ("any" ".*redhat\\.com.*" both) "enovance")
       ("debian" ("any" "debian\\.org" both) "debian" )
       )
)
; Determine identity when message-mode loads
(add-hook 'message-setup-hook 'gnus-alias-determine-identity)


;; fontify the whole line for headings (with a background color)
;; (setq org-fontify-whole-heading-line t)
;; (set-face-attribute 'org-level-1 nil :height 120)

; http://ergoemacs.org/emacs/emacs_using_register.html
;; after copy Ctrl+c in X11 apps, you can paste by `yank' in emacs
(setq x-select-enable-clipboard t)

;; after mouse selection in X11, you can paste by `yank' in emacs
(setq x-select-enable-primary t)

;(add-to-list 'load-path "/home/goneri/.emacs.d/modules/google-contacts.el")
;(use-package google-contacts)
;(use-package google-contacts-message)

(setq-default display-buffer-reuse-frames t
              cursor-type 'bar
              cursor-in-non-selected-windows nil
)


(defun notmuch-show-copy-gerrit-entry-url ()
      (interactive)
      (let ((raw (shell-command-to-string
                  (concat notmuch-command
                          " show --format=raw "
                          (notmuch-show-get-message-id)
        ))))
        (if (string-match "X-Gerrit-ChangeURL: <\\(.*\\)>" raw)
            (let ((url (match-string 1 raw)))
              (browse-url url)
              (message "Opening url: %s" url)))
        (if (string-match "Subject: Bug#\\([0-9]+\\): " raw)
            (let ((bug_id (match-string 1 raw)))
          (browse-url (format "http://bugs.debian.org/%s" bug_id))
              (message "Opening url: http://bugs.debian.org/%s" bug_id)))

;        (if (string-match "X-Gerrit-ChangeURL: <\\(.*\\)>" raw)
;            (let ((url (match-string 1 raw)))
;              (browse-url url)
;              (message "Opening url: %s" url))
;          (error "No X-Entry-URL header present"))))
))

(define-key notmuch-show-mode-map "G" 'notmuch-show-copy-gerrit-entry-url)

;; sending mail
(setq message-send-mail-function 'message-send-mail-with-sendmail
      sendmail-program "/usr/bin/msmtp"
      user-full-name "Gonéri Le Bouder")

;; Choose account label to feed msmtp -a option based on From header in Message buffer;
;; This function must be added to message-send-mail-hook for on-the-fly change of From address
;; before sending message since message-send-mail-hook is processed right before sending message.
(defun cg-feed-msmtp ()
  (if (message-mail-p)
    (save-excursion
      (let* ((from
           (save-restriction
         (message-narrow-to-headers)
         (message-fetch-field "from")))
         (account
           (cond
         ;; I use email address as account label in ~/.msmtprc
         ((string-match "goneri@lebouder.net" from)"goneri@lebouder.net")
         ((string-match "goneri@redhat.com" from)"goneri@redhat.com")
         ((string-match "goneri@debian.org" from)"goneri@debian.org")
         ((string-match "goneri@rulezlan.org" from)"goneri@rulezlan.org")
         ;; Add more string-match lines for your email accounts
         ((string-match "goneri.lebouder@enovance.com" from)"goneri.lebouder@enovance.com"))))
    (setq message-sendmail-extra-arguments (list '"-a" account)))))) ; the original form of this script did not have the ' before "a" which causes a very difficult to track bug --frozencemetery

(setq message-sendmail-envelope-from 'header)
(add-hook 'message-send-mail-hook 'cg-feed-msmtp)
;(setq message-sendmail-extra-arguments '("--read-envelope-from"))

;(add-to-list 'load-path "/home/goneri/.emacs.d/modules/elfeed")
;(use-package elfeed)

;(add-to-list 'load-path "/home/goneri/.emacs.d/modules/twittering-mode")
;(use-package twittering-mode)

; broken with the new powerline
(use-package nyan-mode
  :init
  (nyan-mode 1)
  :config
  (nyan-start-animation)
)

; Font mono
;(variable-pitch-mode 1)

; customize-themes
; tommyh tango-plus mccarth ritchie soft-stone soft-morning adwaita espresso tango moe-light leuven
; fond noir: spolsky spacegray birds-of-paradise-plus naquadah grandshell heroku moe-dark purple-haze
; Avis, j'aime beaucoup et moe-light moe-dark

;(load-theme 'ritchie t)
;(load-theme 'tango-plus t)
;(load-theme 'tommyh t)

; mon préféré sauf qu'il n'y a pas assez de contraste sur les polices
;(load-theme 'moe-light t)

; chouette mes trop sombres par rapport au navigateur
;(load-theme 'heroku t)

;(load-theme 'soft-morning t)

;(load-theme 'leuven t)  # Tres simple avec fond clair

;(load-theme 'moe-dark t)
;(use-package bash-completion)
;(bash-completion-setup)


;(load-theme 'occidental t)
(use-package moe-theme)
(moe-light)
(setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))
(setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(2.0 1.7 1.5 1.3 1.1 1.0))
(use-package moe-theme-switcher)

(savehist-mode 1)
;; save history between sessions
(setq savehist-additional-variables    ;; also save...
  '(search-ring regexp-search-ring compile-history)    ;; search and history
  savehist-file "~/.emacs.d/savehist") ;; where to save
(savehist-mode t)                      ;; do customization before a; http://nileshk.com/2009/06/13/prompt-before-closing-emacs.html
(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(when window-system
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))


(global-set-key (kbd "<f11>") 'magit-status)
(global-set-key (kbd "<f12>") 'projectile-switch-project)
(global-set-key (kbd "<f2>") 'projectile-compile-project)

;(notmuch-show-insert-text/plain-hook (quote (notmuch-wash-convert-inline-patch-to-part notmuch-wash-wrap-long-lines notmuch-wash-tidy-citations notmuch-wash-elide-blank-lines notmuch-wash-excerpt-citations)))

(autoload 'smex "smex")
(global-set-key (kbd "M-x") 'smex)

(use-package recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)


;; http://ternjs.net/doc/manual.html#emacs
(add-to-list 'load-path "/home/goneri/tern/emacs")
(autoload 'tern-mode "tern.el" nil t)
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
;elpy(eval-after-load 'tern
;elpy   '(progn
;elpy      (use-package tern-auto-complete)
;elpy      (tern-ac-setup)))
; https://github.com/songuo/emacs24-songguo/blob/a9516d1eef76f8cbf57162ff73cabe755c2171ea/songuo-shell.el
;; Include the following only if you want to run
;; bash as your shell.
;; Set up Emacs to run bash as its primary shell.
(setq shell-file-name "bash")
(setq shell-command-switch "-c")
(setq explicit-shell-file-name shell-file-name)
(setenv "SHELL" shell-file-name)
(setq explicit-sh-args '("-login" "-i"))

;elpy(setq indent-tabs-mode nil)
;elpy(add-hook 'prog-mode-hook (lambda ()
;elpy                                (setq whitespace-line-column 80)
;elpy                                (whitespace-mode t)
;elpy                                (setq whitespace-style '(face trailing lines-tail tabs space-before-tab))
;elpy                                (use-package git-gutter-mode)
;elpy                (setq git-gutter-mode t)
;elpy                                (setq indent-tabs-mode nil)
;elpy                               ))
(add-hook 'sh-mode-hook (lambda ()
        (use-package auto-complete)
        (auto-complete-mode)
        (setq sh-basic-offset 4)
        (setq indent-tabs-mode nil)))


;; Find → C-f
(global-set-key (kbd "C-f") 'isearch-forward) (define-key isearch-mode-map "\C-f" 'isearch-repeat-forward)

; http://wikemacs.org/wiki/Python
;  apt-get install cscope
;  pip install pycscope
;  # in project base dir:
; find . -name '*.py' > cscope.files
(use-package xcscope)
(cscope-minor-mode)

; match pep257 error
(add-to-list
  'compilation-error-regexp-alist
  '("^\\(.+\\):\\([0-9]+\\) in " 1 2))

; https://github.com/benma/visual-regexp-steroids.el/
(use-package visual-regexp-steroids)
; (define-key global-map (kbd "C-c r") 'vr/replace)
; (define-key global-map (kbd "C-c q") 'vr/query-replace)
;; if you use multiple-cursors, this is for you:
; (define-key global-map (kbd "C-c m") 'vr/mc-mark)
;; to use visual-regexp-steroids's isearch instead of the built-in regexp isearch, also include the following lines:
(define-key esc-map (kbd "C-r") 'vr/isearch-backward) ;; C-M-r
(define-key esc-map (kbd "C-s") 'vr/isearch-forward) ;; C-M-s


(defun make-backup-file-name (FILE)
  (let ((dirname (concat "~/.backups/emacs/"
                         (format-time-string "%y/%m/%d/"))))
    (if (not (file-exists-p dirname))
        (make-directory dirname t))
    (concat dirname (file-name-nondirectory FILE))))

; elpy https://github.com/jorgenschaefer/elpy
;(use-package package)
;(add-to-list 'package-archives
;             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

;(package-initialize)
;(elpy-enable)

; Menlo 10
;(set-default-font "Menlo 10") ;;; set default font
;(setq default-frame-alist '((font . "Menlo 10"))) ;;; set default font for emacs --daemon / ema
(set-default-font "Fantasque Sans Mono-12")

;;;Gonéri(custom-set-faces
;;;Gonéri ;; custom-set-faces was added by Custom.
;;;Gonéri ;; If you edit it by hand, you could mess it up, so be careful.
;;;Gonéri ;; Your init file should contain only one such instance.
;;;Gonéri ;; If there is more than one, they won't work right.
;;;Gonéri '(default ((t (:background nil))))
;;;Gonéri '(highlight-indentation-current-column-face ((t (:background "pink1"))) t)
;;;Gonéri '(highlight-indentation-face ((t (:background "snow2"))) t))


(undo-tree-mode 1)
(global-undo-tree-mode)

; TODO, conflict with windmove
;(drag-stuff-mode t)

; http://www.emacswiki.org/emacs/WindMove
(windmove-default-keybindings 'meta)

;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
; '(default ((t (:background nil :family "Fantasque Sans Mono" :foundry "unknown" :slant normal :weight normal :height 120 :width normal))))
; '(highlight-indentation-current-column-face ((t (:background "pink1"))))
; '(highlight-indentation-face ((t (:background "snow2"))))
; '(notmuch-crypto-part-header ((t (:foreground "burlywood"))))
; '(notmuch-message-summary-face ((t (:background "pink")))))

; http://superuser.com/questions/555034/double-mouse-1-selects-text-and-symbol-in-emacs
(modify-syntax-entry ?_ "w")

;(use-package yasnippet)
;(setq yas-snippet-dirs
;      '("~/.emacs.d/snippets"                 ;; personal snippets
;))
;(define-key yas-minor-mode-map (kbd "<tab>") nil)
;(define-key yas-minor-mode-map (kbd "TAB") nil)
;(define-key yas-minor-mode-map (kbd "<f3>") 'yas-expand)
;(yas-global-mode 1)

; http://stackoverflow.com/questions/3072648/cucumbers-ansi-colors-messing-up-emacs-compilation-buffer
(use-package ansi-color)
(defun colorize-compilation-buffer ()
  (toggle-read-only)
  (ansi-color-apply-on-region (point-min) (point-max))
  (toggle-read-only))
(add-hook 'compilation-filter-hook 'colorize-compilation-buffer)

;(use-package gh-pulls)
;(use-package magit-gh-pulls)
;(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

(setq multi-term-program "/usr/bin/fish")
;(when (featurep 'python) (unload-feature 'python t)) 

(use-package swiper)

(provide '.emacs)
