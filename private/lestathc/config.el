(if window-system
    ;; set default  windows size when this emacs start up at gubuntu.
    (custom-set-variables
     '(default-frame-alist '((height . 50)
                             (width . 190)
                             (menu-bar-lines . 14)
                             (tool-bar-lines . 0)))
     )
  )
