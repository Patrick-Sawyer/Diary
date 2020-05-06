require 'diary_entry.rb'

describe DiaryEntry do

  subject = DiaryEntry.new("title", "body")

  describe '.title' do
    it 'stores title' do 
      expect(subject.title).to eq "title" 
    end
  end

  describe '.body' do 
    it 'stores body' do 
      expect(subject.body).to eq "body" 
    end
  end

  describe 'edit' do
    it 'updates body' do
      expect(subject.edit("new_body")).to eq "new_body" 
    end
  end

  describe '.comments' do # incomplete
    it 'starts with empty array' do 
      expect(subject.comments).to eq []
    end
  end

  describe '.tags' do # incomplete
    it 'starts with empty array' do 
      expect(subject.tags).to eq []
    end
  end
end