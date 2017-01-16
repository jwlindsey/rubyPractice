class Image

  def initialize (pixel_rows)
    @pixel_rows = pixel_rows
  end

  #spit out the finished image
  def output_image
    @pixel_rows.each do |data|
      puts data.join
    end
  end

  #change the ones and zeros to their new states
  def blur(row_index, column_index)
    #go by each row and column adjacent to your location and change to a 1
    @pixel_rows[row_index-1][column_index] = 1
    @pixel_rows[row_index][column_index-1] = 1
    @pixel_rows[row_index][column_index+1] = 1
    @pixel_rows[row_index+1][column_index] = 1
    #this will add an extra one to the end of the row, how do you terminate it?
  end

  #finds the 1 data
  def location
    #store the locations somewhere
    locations = []
    #first find the location of all the 1's by looping through each row and column
    @pixel_rows.each.with_index do |row, row_index|
      row.each.with_index do |column, column_index|
        #go over each location of a 1 and store it in a variable
        if column == 1 #change this logic to determine if there is a 1
          locations.push [row_index, column_index]
        end
      end
    end
    #print locations for coder use
    p locations
    #return location values
    return locations
  end

  #loop through the 1's coordinates and changes the original image
  def change
    ones_coordinates = locations
    #loops through each coordinates pair
    one_coordinates.each do |coordinate|
      #applies blur method to each coordinate pair
      blur(row_index, column_index)
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

#this is your goal output
afterImage = Image.new([
  [0, 1, 0, 0],
  [1, 1, 1, 1],
  [0, 1, 1, 1],
  [0, 0, 0, 1]
])

image.location

image.change
