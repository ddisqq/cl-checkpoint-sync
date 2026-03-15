;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

;;;; CL-CHECKPOINT-SYNC - ASDF System Definition
;;;;
;;;; Checkpoint-based fast sync for blockchain clients.
;;;; Pure Common Lisp implementation with no external dependencies.

(asdf:defsystem #:cl-checkpoint-sync
  :name "cl-checkpoint-sync"
  :description "Checkpoint-based fast sync for blockchain state synchronization"
  :version "0.1.0"
  :author "Park Ian Co"
  :license "Apache-2.0"
  :homepage "https://github.com/parkianco/cl-checkpoint-sync"
  :bug-tracker "https://github.com/parkianco/cl-checkpoint-sync/issues"
  :source-control (:git "https://github.com/parkianco/cl-checkpoint-sync.git")

  :depends-on ()  ; Pure CL - no external dependencies

  :serial t
  :components
  ((:file "package")
   (:module "src"
                :components ((:file "package")
                             (:file "conditions" :depends-on ("package"))
                             (:file "types" :depends-on ("package"))
                             (:file "cl-checkpoint-sync" :depends-on ("package" "conditions" "types")))))

  :in-order-to ((asdf:test-op (asdf:test-op #:cl-checkpoint-sync/test))))

(asdf:defsystem #:cl-checkpoint-sync/test
  :name "cl-checkpoint-sync"
  :description "Test suite for cl-checkpoint-sync"
  :depends-on (#:cl-checkpoint-sync)
  :serial t
  :components
  ((:module "test"
    :serial t
    :components
    ((:file "package")
     (:file "test-download")
     (:file "test-types")
     (:file "test-verification")
     (:file "test-download")
     (:file "test-finality"))))
  :perform (asdf:test-op (o c)
             (let ((result (uiop:symbol-call :cl-checkpoint-sync/test :run-tests)))
               (unless result
                 (error "Tests failed")))))
