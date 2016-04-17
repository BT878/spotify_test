# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

################ Your Code begins from this line onwards #

# 1) User is able to list all the songs: √

class Playlist

	def self.list
	 p Song.all
	end

### 2) User is able to add new song into the playlist

	def self.add(no, title, artist, duration)
		Song.create(no: "#{no}", title: "#{title}", artist: "#{artist}", duration: "#{duration}")
		puts "#{title} has been added"
	end

### 3 User is able to update the song details

	def self.update(no, title, artist, duration)
		song = Song.find(no)
		song.update(no: no, title: title, artist: artist, duration: duration)
	end

### 4) User is able to remove any song from playlist
	def self.delete(no)
		song = Song.find(no)
		song.destroy
	
	end

# s1 = Playlist.add("Love Yourself", "Justin Bieber", "3:51")
# s2 = Playlist.add("Stitches", "Shawn Mendez", "3:59")
# s3 = Playlist.add("Sugar", "Maroon 5", "5:01")
#Playlist.update(1,"Love Yourself", "Justin Bieber", "3:50")
#Song.destroy(3)
#Song.update(2)
#Song.delete(2) #i.e. "Stitches"
end
# ### ARGV ###

	user_input = ARGV[0]
	case user_input
		when "list"
			Playlist.list
		when "add" 
			Playlist.add(ARGV[1], ARGV[2], ARGV[3], ARGV[4])
			puts "Song added!"
		when "update"
			Playlist.update(ARGV[1], ARGV[2], ARGV[3], ARGV[4])
 			puts "Song has been updated!"
		when "delete"
			Playlist.delete(ARGV[1])
			puts "Song has been deleted!" 
	end


