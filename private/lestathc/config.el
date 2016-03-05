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
