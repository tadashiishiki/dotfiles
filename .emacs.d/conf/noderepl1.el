
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;;(setq inferior-js-program-command "node")
;;(setq inferior-js-program-arguments '("--interactive"))
;;(require 'js-comint)


(setq exec-path (append '("/Users/admin/.nvm/versions/node/v8.11.3/bin") exec-path))

(require 'js-comint)

(setq inferior-js-program-command "node")
(setq inferior-js-program-arguments '("--interactive"))

(setenv "NODE_NO_READLINE" "1")

(add-hook 'js2-mode-hook
          (lambda ()
            (local-set-key (kbd "C-x C-e") 'js-send-last-sexp)
            (local-set-key (kbd "C-M-x") 'js-send-last-sexp-and-go)
            (local-set-key (kbd "C-c b") 'js-send-buffer)
            (local-set-key (kbd "C-c C-b") 'js-send-buffer-and-go)
            (local-set-key (kbd "C-c l") 'js-load-file-and-go)))

(find-file "~/javascriptscratch.js")

(command-execute 'js-comint-repl)


;;(setq inferior-js-program-arguments '("--interactive"))

;;(js-comint-repl)

;;after executing the above with M-:
;; M-:  (load "noderepl1")
;; and
;; M-x  js-comint-repl
