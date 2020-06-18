(*
    Author: Walter Rowe
    Create: June 2020

    1) Look for string "Black & White" and change it to what ever keyword you use for your black and white images.
    2) open the Capture One catalog you want to update and select the All Images collection.
    3) open run this script from Apple ScriptEditor.

    When the script is completed, it will show a list of image names in the results window.

    If you open the Filters tool before running and scroll down to the Keywords filter and your black and white keyword,
    you can watch the counter go up as this script finds and applies your keyword to each image that has the Black and White
    tool enabled (checkbox).
*)

tell application "Capture One 20"
	repeat with eachVariant in (variants whose black and white of adjustments is true)
		tell eachVariant to make keyword with properties {name:"Black & White"}
	end repeat
	set bwnames to name of (variants whose black and white of adjustments is true)
end tell
