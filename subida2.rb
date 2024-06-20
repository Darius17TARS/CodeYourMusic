use_bpm 90
guitar_col = "/Users/dariusrucker/Desktop/sonicpi/guitarcol.wav"
buergerprotest = "/Users/dariusrucker/Desktop/sonicpi/buergerprotest.wav"
teil3 = "/Users/dariusrucker/Desktop/sonicpi/test3.wav"
guitar_gret = "/Users/dariusrucker/Desktop/sonicpi/guitar2.wav"
a = 0
v12 = 0

numberNormal = (sample_duration guitar_col)
number = (sample_duration guitar_col) * 12

define :ye do
  live_loop :dcc do
    if "x-x-x-x-x-x-xxxx".ring.tick == "x" then #16stc 0.25 -> next //
      sample :drum_cymbal_closed, amp: 5
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dbh do
    if "xx--x---x---x---".ring.tick == "x" then
      sample :bd_haus
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dsh do
    
    if "--x---x---x---x-".ring.tick == "x" then
      sample :drum_snare_hard
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dc do
    
    if "--x-x---x----x--".ring.tick == "x" then
      sample :drum_cowbell, amp: 0.6
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
end


define :transition1 do
  live_loop :dcc do
    if "x-x-x-x-x-x-xxxx".ring.tick == "x" then #16stc 0.25 -> next //
      sample :drum_cymbal_closed, amp: 5
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dbh do
    if "xx--x---x---x---".ring.tick == "x" then
      sample :bd_haus
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dsh do
    
    if "--x---x---x---x-".ring.tick == "x" then
      sample :drum_snare_hard
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dc do
    
    if "--x-x---x----x--".ring.tick == "x" then
      sample :drum_cowbell, amp: 0.6
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
end

define :acdc do
  a= 0
  stop if (get :mortem)
  in_thread do
    stop if (get :mortem)
    use_bpm 90
    loop do
      stop if (get :mortem)
      if a < 2 then
        stop if (get :mortem)
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col)
        
      end
      stop if (get :mortem)
      a = a + 1
      if a > 2 then
        stop if (get :mortem)
        sample :drum_snare_hard, amp: 0.75
        sleep (sample_duration guitar_col) / 2
        sample :drum_snare_hard, amp: 0.75
        sleep (sample_duration guitar_col) / 2
        
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 4
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 4
        
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 8
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 8
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 16
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 16
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 16
        sample :drum_snare_hard, amp: 1
        sleep (sample_duration guitar_col) / 16
        a = 0
      end
      stop if (get :mortem)
    end
    stop if (get :mortem)
  end
  stop if (get :mortem)
end


define :queen do
  v12 = 0
  
  
  in_thread do
    use_bpm 90
    stop if (get :demise
    loop do
      stop if (get :demise)
      if v12 < 11 then
        sample guitar_col
      end
      if v12 == 11 then
        with_fx :mono do
          sample guitar_col, amp: 3.5, attack:0.5, decay:1 , release:1
        end
        stop if (get :demise)
      end
      stop if (get :demise)
      sleep sample_duration guitar_col
      v12 = v12 +1
    end
    stop if (get :demise)
  end
  
end












define :queen2 do
  stop if (get :decease)
  
  live_loop :doo do
    sleep (sample_duration guitar_col) * 4
    sample :drum_cymbal_hard, pan: 1, amp: 1.5
    
    sample :drum_splash_hard, pan: -1, amp: 1.5
    stop if (get :decease)
    
  end
  stop if (get :decease)
  
end


define :secondPart do
  
  sample buergerprotest, amp: 1.5
  
  sleep (sample_duration buergerprotest)
  sample buergerprotest, amp: 1.5
  set :jimmy, true
  
end


define :both do
  sample guitar_col
  sleep sample_duration(guitar_col)
  sample guitar_col
  sleep sample_duration(guitar_col)
  sample guitar_col
  sleep sample_duration(guitar_col)
  with_fx :gverb do
    sample :drum_cowbell
  end
  sample guitar_gret
  sleep sample_duration(guitar_gret)
  with_fx :gverb do
    sample :drum_cowbell
  end
end




  


define :cottonJoe do
  stop if (get :eye)
  in_thread do
    stop if (get :eye)
    
    sample teil3, amp: 1.5
    stop if (get :eye)
  end
  
end


define :acdc2 do
  a= 0
  stop if (get :mortem)
  in_thread do
    stop if (get :mortem)
    use_bpm 90
    loop do
      stop if (get :mortem)
      if a < 2 then
        stop if (get :mortem)
        sample :drum_snare_hard, amp: 0.25
        sleep (sample_duration guitar_col)
        
      end
      stop if (get :mortem)
      a = a + 1
      if a > 2 then
        stop if (get :mortem)
        sample :drum_snare_hard, amp: 0.45
        sleep (sample_duration guitar_col) / 2
        sample :drum_snare_hard, amp: 0.45
        sleep (sample_duration guitar_col) / 2
        
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 4
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 4
        
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 8
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 8
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 16
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 16
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 16
        sample :drum_snare_hard, amp: 0.5
        sleep (sample_duration guitar_col) / 16
        a = 0
      end
      stop if (get :mortem)
    end
    stop if (get :mortem)
  end
  stop if (get :mortem)
end
define :queen2 do
  stop if (get :decease)
  
  live_loop :doo do
    sleep (sample_duration guitar_col) * 4
    sample :drum_cymbal_hard, pan: 1, amp: 1
    
    sample :drum_splash_hard, pan: -1, amp: 1
    stop if (get :decease)
    
  end
  stop if (get :decease)
  
end 
define :test2 do
  live_loop :dcc do
    if "x-x-x-x-x-x-xxxx".ring.tick == "x" then #16stc 0.25 -> next //
      
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dbh do
    if "xx--x---x---x---".ring.tick == "x" then
      
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dsh do
    
    if "--x---x---x---x-".ring.tick == "x" then
      
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
  live_loop :dc do
    
    if "--x-x---x----x--".ring.tick == "x" then
      sample :drum_cowbell, amp: 0.5
    end
    sleep (sample_duration guitar_col)/ 16
    stop if (get :kill)
  end
end 