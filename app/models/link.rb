class Link < ApplicationRecord
  validates :url, presence: true
  validates :url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :visits, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  after_create :get_title

  SLUG_CHARACTERS = ('a'..'z').to_a + ('A'..'Z').to_a

  def save
    if Link.where({ created_at: Date.today.all_day, remote_ip: remote_ip }).count >= 10
      errors.add(:title, "Url can not be created more than 10 times per day")
      return nil
    end

    super
  end

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

  private

  def get_title
    LoadTitleJob.perform_later(id)
  end
end
