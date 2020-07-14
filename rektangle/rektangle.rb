class Rektangle
  def initialize(width, height)
    @width = width
    @height = height
  end


def draw_top_line
  top_line = ''
  top_line << 'A'
  (@width - 2).times do
    top_line << '.'
  end
  top_line << "B\n"
end

def draw_bottom_line
  bottom_line = ''
  bottom_line << 'D'
  (@width - 2).times do
    bottom_line << '.'
  end
  bottom_line << "C\n"
end

def draw_middle_line
  middle_line = ' ' * (@width - 2)
  '.' + middle_line + ".\n"
end

def draw_middle_lines
  middle_lines =  ''
  (@height - 2).times do
    line = draw_middle_line
    middle_lines << line
  end
  middle_lines
end

  def draw
  top_line = draw_top_line
  middle_lines = draw_middle_lines
  bottom_line = draw_bottom_line
  top_line + middle_lines + bottom_line
  end

end