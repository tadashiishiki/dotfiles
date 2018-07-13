
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

	

(require 'slime-autoloads)

(setq inferior-lisp-program "/usr/local/bin/sbcl")

(slime-setup '(slime-fancy slime-indentation))

(slime)



