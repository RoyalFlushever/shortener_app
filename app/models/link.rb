class Link < ApplicationRecord
  validates :url, presence: true
  validates :url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :visits, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  SLUG_CHARACTERS = ('a'..'z').to_a + ('A'..'Z').to_a

  def short
    i = id

    return SLUG_CHARACTERS[0] if i.zero?

    s = ''
    base = SLUG_CHARACTERS.length
    while i.positive?
      s << SLUG_CHARACTERS[i.modulo(base)]
      i /= base
    end
    s.reverse
  end

  def self.find_short(slug)
    i = 0
    base = SLUG_CHARACTERS.length
    slug.each_char { |c| i = i * base + SLUG_CHARACTERS.index(c) }
    find_by(id: i)
  end
end
