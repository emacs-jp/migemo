(require 'migemo)

(defvar str "これは migemo 検索のテストです。")

(ert-deftest migemo-test-roma/kanji ()
  (should (equal 11 (string-match (migemo-search-pattern-get "kensaku") str))))

(ert-deftest migemo-test-eng/kana ()
  (should (equal 14 (string-match (migemo-search-pattern-get "test") str))))

(ert-deftest migemo-test-notfound ()
  (should-not (string-match (migemo-search-pattern-get "tokyo") str)))
