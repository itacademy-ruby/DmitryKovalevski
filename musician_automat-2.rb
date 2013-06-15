module Pay_money

  def pay income_money
    
    if income_money >= @song_cost.to_i 
      puts "Select the song from playlist"
    else
      shortfall = @song_cost.to_i - income_money
      puts "Add #{shortfall} dollars to listen songs from MusicBox"
    end  

  end
  
end

class Musicbox
  $songs = ["Hotel California", "Proper education", "We will rock you"]
  
include Pay_money

  def initialize song_cost
    @song_cost = song_cost
    @current_song = ''  
    @turned_on = false

  end

  def play_music
    puts "'#{@current_song}' is played now!"
  end


  def turn_on
   unless @turned_on  #unless
  @turned_on = true
  puts "Box was turned on!"
    else
    	p 'already turned on'
    end
  end

  def turn_off
  	if @turned_on == true
  @turned_on = false
  puts "Box was turned of!"
    else
    	p 'already turned of'
    end
  end

  def search song_name
    #puts "Enter the name of the song"
    #song_name = gets.chomp
      @current_song = song_name
      
      if $songs.include?(song_name)
        puts "#{song_name} is present in the playlist!"
        play_music
      else 
        puts "Load '#{song_name}' to Musicbox"
        load_song @current_song

      end
  end
 def load_song load

    puts "Push button to save song to the MusicBox"
  $songs << load
 end 
  def status
  	if @turned_on
  		p "Turned on"
  	else 
  		p "Turned_off"
  	end

  end
end


  box = Musicbox.new 10
box.status
box.turn_on
box.status
box.pay 12
box.search "Satisfaction"
p $songs
box.search "We will rock you"

class DiskBox < Musicbox
  
  include Pay_money

  def play_music
    puts "'#{@current_song}' is played now from CD!"
  end

  

end

cd_box = DiskBox.new 12
cd_box.status
cd_box.turn_on
cd_box.status
cd_box.pay 13
cd_box.search "If today was your last day"
p $songs
cd_box.search "We will rock you"