class Image

  def initialize (pixel_rows)
    @pixel_rows = pixel_rows
  end

  #spit out the finished image
  def output_image
    @pixel_row.each do |data|
      puts data.join
    end
  end

  #change the ones and zeros to their new states
  def blur(row_index,column_index)
    #go by each row and column adjacent to your location and change to a 1
    @image[row_index-1][column_index] = 1
    @image[row_index][column_index-1] = 1
    @image[row_index][column_index+1] = 1
    @image[row_index+1][column_index] = 1
  end

  #turns all 0's adjacent to 1 into 1 except edges
  def location
    #store the locations somewhere
    locations = []
    #first find the location of all the 1's by looping through each row and column
    @pixel_rows.each.with_index do |row, row_index|
      row.each.with_index do |column, column_index|
        #go over each location of a 1 and store it in a variable
        if column == 1
          locations.push [row_index, column_index]
        end
      end
    end
    #print locations for coder use
    p locations
  end

  #copy the full image array
  def copy_array
    array_clone = image.clone
  end
  
  #loop through the array but chane the original image
  def change
    array_clone.each do |row_index, column_index|
      blur(row_index,column_index)
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
