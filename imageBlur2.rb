class Image

  def initialize (pixel_rows)
    @pixel_rows = pixel_rows
  end

#turns all 0's adjacent to 1 into 1 except edges
  def location
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
  #make a copy of the array to be modified
  #loop through the copied array to find the one
  #at the one do something to change the 0's to 1's around it
  #but make changes to the original array and not the copied array
  #at end loop destroy the copied array
  def copy_array
    array_clone = image.clone
    array_clone.locations do |change|

    end
  end
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

afterImage = Image.new([
  [0, 1, 0, 0],
  [1, 1, 1, 1],
  [0, 1, 1, 1],
  [0, 0, 0, 1]
])

image.location
