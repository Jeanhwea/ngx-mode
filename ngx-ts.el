(require 'typescript-mode)

(defconst ngx-ts-decorator-keywords
  '("@Component"
     "@Directive"
     "@Pipe"
     "@NgModule"
     "@Injectable"))

;; (defconst ngx-ts-ngx-builtin-function-regex
;;   "\\s-ng[a-zA-Z_0-9]+")

;; (defconst ngx-ts-ngx-event-callback-function-regex
;;   "\\s-on[a-zA-Z_0-9]+")


(defvar ngx-ts-font-lock-keywords
  `(
     ;; (,ngx-ts-ngx-event-callback-function-regex . font-lock-doc-face)
     ;; (,ngx-ts-ngx-builtin-function-regex . font-lock-builtin-face)
     (,(regexp-opt ngx-ts-decorator-keywords) . font-lock-builtin-face)))


;;;###autoload
(define-derived-mode ngx-ts-mode typescript-mode "ngx-ts-mode"
  "Major mode for Angular TypeScript"
  (setq typescript-indent-level 2)
  (font-lock-add-keywords nil ngx-ts-font-lock-keywords))


;;;###autoload
(add-to-list 'auto-mode-alist '("\\.component.ts\\'" . ngx-ts-mode))
;;;###autoload
(add-to-list 'auto-mode-alist '("\\.service.ts\\'" . ngx-ts-mode))
;;;###autoload
(add-to-list 'auto-mode-alist '("\\.pipe.ts\\'" . ngx-ts-mode))
;;;###autoload
(add-to-list 'auto-mode-alist '("\\.directive.ts\\'" . ngx-ts-mode))
;;;###autoload
(add-to-list 'auto-mode-alist '("\\.guard.ts\\'" . ngx-ts-mode))
;;;###autoload
(add-to-list 'auto-mode-alist '("\\.module.ts\\'" . ngx-ts-mode))

(provide 'ngx-ts)
