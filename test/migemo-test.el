;;;; migemo-test.el --- Tests for migemo.el  -*- lexical-binding: t; -*-

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'ert)
(require 'migemo)
(require 'setup-migemo-test)

(defvar migemo-test-str "これは migemo 検索のテストです。")

(ert-deftest migemo-test-roma/kanji ()
  (should (equal 11 (string-match (migemo-search-pattern-get "kensaku") migemo-test-str))))

(ert-deftest migemo-test-eng/kana ()
  (should (equal 14 (string-match (migemo-search-pattern-get "test") migemo-test-str))))

(ert-deftest migemo-test-notfound ()
  (should-not (string-match (migemo-search-pattern-get "tokyo") migemo-test-str)))

;; migemo-test.el ends here
