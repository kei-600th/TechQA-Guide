class Phrase
  def initialize(text)
    # 文字列を小文字に変換し、正規表現を使用して分割
    @text = text.downcase.split(/[\s,:!&@$%^&.]+/)
  end

  def word_count
    # 各単語の最初と末尾にある引用符を取り除く
    processed_words = @text.map { |word| word.gsub(/\A'|'\z/, '') }

    # 空の文字列を除外
    processed_words.reject!(&:empty?)

    processed_words.tally
  end
end