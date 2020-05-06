require 'pg'

class Diary

  attr_reader :entries

  def initialize
    @entries = []
    ENV['ENVIRONMENT'] == 'test' ? db = 'diary_test' : db = 'test'
    con = PG.connect :dbname => db, :user => 'student'
    response = con.exec "SELECT name, body FROM diary_entries"
    response.each { |entry|
      @entries << DiaryEntry.new(response["title"],response["body"])
    }
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
