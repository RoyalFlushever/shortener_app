require 'rails_helper'

RSpec.describe Link, type: :model do
  let(:link) { Link.new(url: 'https://example.com') }

  it 'is valid' do
    expect(link).to be_valid
  end

  it 'should be of class Link' do
    expect(subject.class).to eq Link
  end

  describe 'Database table' do
    it { should have_db_column :id }
    it { should have_db_column :url }
    it { should have_db_column :title }
    it { should have_db_column :visits }
    it { should have_db_column :created_at }
    it { should have_db_column :updated_at }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:url) }
    it { should validate_numericality_of(:visits).only_integer }
    it 'Not valid url format' do
      expect(Link.new(url: 'example.com').valid?).to eq(false)
    end

  end

  describe 'Shorteners' do
    it 'create correct shot version for record' do
      website = Link.create(url: 'https://example.com', id: 1)
      expect(website.short).to eq('b')
    end

    it 'return correct website for slug' do
      website = Link.create(url: 'https://example.com', id: 1)
      expect(Link.find_short('b')).to eq website
    end

    it 'return nil for not existing website' do
      expect(Link.find_short('bd')).to eq nil
    end

    it 'can be created up to 10 times per day' do
      count = 0
      10.times do |_|
        website = Link.new(url: 'https://example.com', remote_ip: '127.0.0.1')
        count += 1 if website.save
      end
      expect(count).to eq(10)
    end

    it 'can not be created more than 10 times per day' do
      count = 0
      11.times do |_|
        website = Link.new(url: 'https://example.com', remote_ip: '127.0.0.1')
        count += 1 if website.save
      end
      expect(count).to be <= 10
    end
  end
end
