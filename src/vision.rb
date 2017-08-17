# Imports the Google Cloud client library
require "google/cloud/vision"

# Your Google Cloud Platform project ID
GOOGLE_APPLICATION_CREDENTIALS='./boardest-5eff1a72b180.json'
project_id = "boardest-177105"


# Instantiates a client
vision = Google::Cloud::Vision.new project: project_id

# The name of the image file to annotate
file_name = "./images/test_board.jpeg"

# Performs label detection on the image file
labels = vision.image(file_name).labels

puts "Labels:"
labels.each do |label|
 puts label.description
end