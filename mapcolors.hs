module Main where

	colors = ["red", "blue", "green"]

	states = head [(tennessee, mississippi, alabama, georgia, florida) |
		tennessee <- colors,
		mississippi <- colors,
		alabama <- colors,
		georgia <- colors,
		florida <- colors,
		tennessee /= mississippi,
		tennessee /= alabama,
		tennessee /= georgia,
		mississippi /= alabama,
		alabama /= georgia,
		florida /= alabama,
		florida /= georgia]
