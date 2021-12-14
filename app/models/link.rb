class Link < ApplicationRecord
  validates :url, presence: true
  validates :url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :visits, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
