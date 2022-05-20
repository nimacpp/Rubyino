class Rubyino
@@lines = [
"#include \"Keyboard.h\"\n",
"void typeKey(uint8_t key)
{
Keyboard.press(key);
delay(50);
Keyboard.release(key);
}",
"/* Init function */
void setup() 
{
// Begining the Keyboard stream
Keyboard.begin();"];
  def initialize(path)
  @@path = path+".ino"
  end
  def puts(text)
    @@lines.push "Keyboard.print(\"#{text}\");"
  end
  def enter
    @@line.push "typeKey(KEY_RETURN);"
  end
  def win_pls(key)
    @@lines.push "Keyboard.press(KEY_LEFT_GUI);\nKeyboard.press('#{key[0]}');\nKeyboard.releaseAll();"
  end
  def select(array)
    for i in array
      @@lines.push "Keyboard.press('#{i}');"
    end
      @@lines.push "Keyboard.releaseAll();"
  end
  def show
    return " #{@@path}||#{@@lines}"
  end
  def delay(num)
    @@lines.push "delay(#{num});"
  end
  def ter
    @@lines.push "  // Ending stream \nKeyboard.end();\n}\n/* Unused endless loop */\nvoid loop() {}"
    file = File.open(@@path, "w")
    for i in @@lines
      file.puts "#{i}\n"
    end
  end
  def arduino(text)
    @@lines.push text
  end
end
