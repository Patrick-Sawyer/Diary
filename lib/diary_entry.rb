class DiaryEntry

  attr_reader :title, :body, :comments, :tags

  def initialize(title, body)
    @title = title
    @body = body
    @comments = []
    @tags = []
  end

  def edit(body)
    @body = body
  end
end