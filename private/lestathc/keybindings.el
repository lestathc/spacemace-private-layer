;; Unset the C-x C-c to make sure I do not kill emacs unnormally
(global-unset-key (kbd "C-x C-c"))
;; Rebind it to C-x C-c y (for confirm) to the original C-x C-c command
(global-set-key (kbd "C-x C-c y") 'save-buffers-kill-terminal)
