;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-checkpoint-sync)

(define-condition cl-checkpoint-sync-error (error)
  ((message :initarg :message :reader cl-checkpoint-sync-error-message))
  (:report (lambda (condition stream)
             (format stream "cl-checkpoint-sync error: ~A" (cl-checkpoint-sync-error-message condition)))))
