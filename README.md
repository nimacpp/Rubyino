# Rubyino
Translate ruby to arduino 
## install with gem 
``` gem install rubyino  ``` 

### or

```
git clone https://github.com/nimacpp/Rubyino.git 
cd Rubyino
bundle install 
```
# use Rubyino
## start use 
``` rb = Rubyino.new("namefile") ```
## for print 
``` rb.puts "hello world"  #=> Keyboard.print("hello world"); ```
## for delay
``` rb.delay 500           #=> delay(500); ```
## for translate 
``` rb.ter # for give output ```
