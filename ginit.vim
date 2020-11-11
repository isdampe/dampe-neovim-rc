VimRSetLinespacing 1.25

if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
	colorscheme PaperColor
	set background=light
endif
