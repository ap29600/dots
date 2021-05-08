default:
	echo $(CURDIR)

conf = sxhkd river sway mako starship.toml picom.conf fontconfig foot

scripts = autostarter powerprofile swayidle-manager

linkscript-%: %
	ln -snf $(CURDIR)/$< ~/.local/bin/$<

link-%: %
	ln -snf $(CURDIR)/$< ~/.config/$< 

install: $(foreach f, $(conf), link-$(f)) $(foreach f, $(scripts), linkscript-$(f))
