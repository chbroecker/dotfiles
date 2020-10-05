-- Default keybindings for launching apps in Hyper Mode
--
-- To launch _your_ most commonly-used apps via Hyper Mode, create a copy of
-- this file, save it as `hyper-apps.lua`, and edit the table below to configure
-- your preferred shortcuts.
function giveMeAt()
  hs.eventtap.keyStrokes('@')
end

function giveMeO()
  hs.eventtap.keyStrokes('ö')
end

function giveMeA()
  hs.eventtap.keyStrokes('ä')
end

function giveMeU()
  hs.eventtap.keyStrokes('ü')
end

function giveMeT()
  hs.eventtap.keyStrokes('~')
end

return {
  { 'i', 'Music' },       -- "I" for "Itunes"
  { 'a', 'Agenda' },      -- "A" for "Agenda"
  { 'b', 'iBooks' },     	-- "B" for "Browser"
  { 'c', 'Calendar' },		-- "C for "Calendar"
  { 'd', 'Things3' }, 		-- "D" for "Do!" ... or "Done!"
  { 'e', 'Visual Studio Code' },  -- "E" for "Editor"
  { 'f', 'Finder' },        -- "F" for "Finder"
  { 'g', 'Mail' }, 	      	-- "G" for "Gmail"
  { 's', 'Safari' },        -- "S" for "Safari"
  { 't', 'iTerm' },         -- "T" for "Terminal"
  { 'm', 'Spotify'},    		-- "M" for "Music"
  { 'n', 'Notes'},		      -- "N" for "Notes"
  { 'p', 'Preview'},    		-- "P" for "Preview"
  { 'l', giveMeAt },
  { ';', giveMeO },
  { "'", giveMeA },
  { '[', giveMeU },
  { 'j', giveMeT },
}
