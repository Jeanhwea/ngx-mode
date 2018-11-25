(require 'ngx-ts)

;;;###autoload
(defun ngx-mode ()
  "Activates the appropriate Angular mode for the buffer."
  (interactive)
  (if (equal buffer-file-name nil)
    (message "This doesn't appear to be an Angular component or service.")
    (let ((file-ext (file-name-extension (buffer-file-name))))
      (cond
        ((equal file-ext "ts") (ngx-ts-mode))
        (t (message "This doesn't appear to be an Angular component or service."))))))

(provide 'ngx-mode)
