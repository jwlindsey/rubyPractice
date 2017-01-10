class Image

  def initialize (pixel_rows)
    @pixel_rows = pixel_rows
  end

#turns all 0's adjacent to 1 into 1 except edges
  def blur
    #first find the location of all the 1's
    #go over each location of a 1 and do something
    #something is find all adjacent locations
    #convert any adjacent locations within bounds of the image to a 1
    locations = []
    @pixel_rows.each.with_index do |row, row_index|
      row.each.with_index do |column, column_index|
        if column == 1
          locations.push [row_index, column_index]
        end
      end
    end
    p locations
  end
  #do something with the locations to make the edges turn to 1
  def output_image
    @pixel_row.each do |data|
      puts data.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.blur
