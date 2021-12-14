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
end
