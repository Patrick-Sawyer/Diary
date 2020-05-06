class Diary

  attr_reader :entries

  def initialize(db_entries = [])
    @entries = db_entries
  end

  def add(entry)
    @entries << entry
  end

  def list_titles
    titles = []
    @entries.each { |entry|
      titles << entry.title
    }
    titles
  end

  def delete(entry)
    @entries.delete(entry)
  end
end
