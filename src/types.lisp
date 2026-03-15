;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-checkpoint-sync)

;;; Core types for cl-checkpoint-sync
(deftype cl-checkpoint-sync-id () '(unsigned-byte 64))
(deftype cl-checkpoint-sync-status () '(member :ready :active :error :shutdown))
