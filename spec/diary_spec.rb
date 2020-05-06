require 'diary'

describe Diary do
  let(:diary_entry1) { double(title: "entry_1", body: 'blah blah', comments: ["Brill","Lame"], tags: ["Cows", "Pigs"]) }
  let(:diary_entry2) { double(title: "entry_2", body: 'blah blah', comments: ["Brill","Lame"], tags: ["Cows", "Pigs"]) }
  let(:diary_entry3) { double(title: "entry_3", body: 'blah blah', comments: ["Brill","Lame"], tags: ["Cows", "Pigs"]) }
  subject(:diary) { Diary.new }

  describe '.entries' do
    it 'returns entries' do
      expect(diary.entries).to eq []
    end
  end

  describe '.list_titles' do 
    it 'returns array of titles' do 
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.list_titles).to eq ["entry_1", "entry_2"]
    end
  end

  describe '.add' do
    it 'adds diary entries to the diary' do
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      expect(diary.entries).to include diary_entry1 and diary_entry2
    end
  end

  describe '.delete' do 

    it 'deletes diary entry' do
      diary.add(diary_entry1)
      diary.add(diary_entry2)
      diary.delete(diary_entry2)
      expect(diary.entries).to eq [diary_entry1]
    end
  end
end

# describe DiaryEntry do 

#   describe '.title' do 

#   end

#   describe '.body' do 

#   end

#   describe 'edit' do 

#   end

#   describe '.comments' do 

#   end

#   describe '.tags' do 

#   end
# end