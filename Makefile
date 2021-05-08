default:
	echo $(CURDIR)

conf = sxhkd river sway mako starship.toml

scripts = autostarter powerprofile

linkscript-%: %
	ln -sf $(CURDIR)/$< ~/.local/bin/$<

link-%: %
	ln -sf $(CURDIR)/$< ~/.config/$< 

install: $(foreach f, $(conf), link-$(f)) $(foreach f, $(scripts), linkscript-$(f))
