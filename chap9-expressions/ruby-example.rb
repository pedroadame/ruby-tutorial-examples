song_type = if song.mp3_type == :type_jazz
              if song.written < Date.new 1935, 1, 1
                :trad_jazz
              else
                :jazz
              end
            else
              :other
            end
