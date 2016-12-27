(if window-system
    ;; set default  windows size when this emacs start up at gubuntu.
    (custom-set-variables
     '(default-frame-alist '((height . 50)
                             (width . 190)
                             (menu-bar-lines . 14)
                             (tool-bar-lines . 0)))
     )
  )

(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2
                                  tab-width 2
                                  indent-tabs-mode nil)))

(add-hook 'javascript-mode-hook (lambda ()
                                  (lestathc/-setup-web-development-indents 2)))
(add-hook 'web-mode-hook (lambda ()
                           (lestathc/-setup-web-development-indents 2)))

(add-hook 'json-mode-hook (lambda ()
                            (make-local-variable 'js-indent-level)
                            (setq js-indent-level 2)))

(defun lestathc/-setup-web-development-indents (n)
  (setq
   indent-tabs-mode nil
   tab-width 2
   ;; javascript
   javascript-indent-level n
   js2-basic-offset n
   js-indent-level n
   react-mode-offset n
   ;; web
   css-indent-offset n
   web-mode-markup-indent-offset n
   web-mode-css-indent-offset n
   web-mode-code-indent-offset n
   web-mode-attr-indent-offset n)
  )
