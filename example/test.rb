require "rubyino" # call lib

rb = Rubyino.new("test") # name of file ino

rb.delay 500    				# => delay(500);
rb.win_pls 'r'  				# => Keyboard.press(KEY_LEFT_GUI);
								#	Keyboard.press('r');
								#	Keyboard.releaseAll(); 
rb.delay 500					# => delay(500);
rb.puts "cmd"					# => Keyboard.print("cmd");
rb.delay 500					# => delay(500);
rb.puts "echo hello world "		# => Keyboard.print("echo hello world");

rb.ter
