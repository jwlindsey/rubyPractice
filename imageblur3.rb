#redone using marshal load and unless
class Image

  def initialize(array)
    @array = array
  end

  def output_image
    @array.each do |row|
      puts row.join
    end
  end

  def blur(distance=1)
    distance.times do
        #Create a clone of image
      @new_image = Marshal.load(Marshal.dump(@array))
        #Loop through array, find the 1 pixel
      @array.each_with_index do |row, row_index|
        row.each_with_index do |pixel, col_index |
          if pixel == 1
            #Blur the pixel with limits of where to stop
            @new_image[row_index - 1][col_index] = 1 unless row_index == 0
            @new_image[row_index + 1][col_index] = 1 unless (row_index + 1) >= @array.length
            @new_image[row_index][col_index - 1] = 1 unless col_index == 0
            @new_image[row_index][col_index + 1] = 1 unless (col_index + 1) >= row.length

          end
        end
      end
      @array = @new_image
    end
    #clones image and edits the clone
    Image.new(@new_image)

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


new_image = image.blur(2)
new_image.output_image
