{
config,
pkgs,
...
}: {
	xsession.windowManager.bspwm = {
		enable = true;
		settings = {
			split_ratio = 0.52;
			borderless_monocle = true;
			gapless_monocle = true;

			border_width = 2;
			window_gap = 12;

            normal_border_color = "#282828";
            active_border_color = "#689d6a";
            focused_border_color = "#d65d0e";
		};
		monitors = {
			eDP-1 = [
				"web"#1
				"term"#2
				"build"#3
				"file"#4
				"music"#5
				"conf"#6
				"git"#7
				"misc"#8
				"chat"#9

			];
		};
	};
	services.sxhkd = {
		enable = true;
		keybindings = {
			"super + Return" = "alacritty";
			"super + p" = "dmenu_run";

			"super + Escape" = "pkill -USR1 sxhkd";

			"super + alt + {q,r}" = "bspc {quit,wm -r}";
			"super + {_,shift + }w" = "bspc node -{c,k}";
			"super + m" = "bspc desktop -l next";
			"super + y" = "bspc node newest.marked.local -n newest.!automatic.local";
			"super + g" = "bspc node -s biggest.window";

			"super + {t,shift + t,s,f}" = "bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";
			"super + ctrl + {m,x,y,z}" = "bspc node -g {marked,locked,sticky,private}";

			"super + {_,shift + }{h,j,k,l}" = "bspc node -{f,s} {west,south,north,east}";
			"super + {p,b,comma,period}" = "bspc node -f @{parent,brother,first,second}";
			"super + {_,shift + }c" = "bspc node -f {next,prev}.local.!hidden.window";
			"super + bracket{left,right}" = "bspc desktop -f {prev,next}.local";
			"super + {grave,Tab}" = "bspc {node,desktop} -f last";
			"super + {o,i}" = "bspc wm -h off; bspc node {older,newer} -f; bspc wm -h on";
			"super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

			"super + ctrl + {h,j,k,l}" = "bspc node -p {west,south,north,east}";
			"super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";
			"super + ctrl + space" = "bspc node -p cancel";
			"super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";

			"super + alt + {h,j,k,l}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";
			"super + alt + shift + {h,j,k,l}" = "bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}";
			"super + {Left,Down,Up,Right}" = "bspc node -v {-20 0,0 20,0 -20,20 0}";
		};
	};
}
