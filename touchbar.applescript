tell application "System Events"
	set num to count (every process whose name is "Spotify")
end tell

if num > 0 then
	tell application "Spotify"
		set playState to (player state as text)
		if playState is equal to "playing" then
			set trackName to name of current track
			set artistName to artist of current track
			set albumName to album of current track
			set trackInfo to trackName & " | " & artistName & " | " & albumName
		else
			set trackInfo to "Nothing playing"
		end if
		return trackInfo
	end tell
else
	set trackInfo to ""
	return trackInfo
end if
