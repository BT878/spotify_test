# require 'csv'

# class PlaylistImporter
#   def self.import(filename)
#     csv = CSV.new(File.open(filename), :headers => true
#       array = ['no','title', 'artist', 'duration']
   
#     csv.each do |row|       #for each row the row is converted into a hash
#       row = row.to_hash
#       hash = {}
#         row.each do |field, value|
#           hash[field] = value
#             hash.keep_if {|k, v| array.include? k }
#           end
#         Playlist.create(hash)
#     end
#   end
# end
# # IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# # AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby playlist_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end

