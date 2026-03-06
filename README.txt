# Beezy Boombox – Setup & Installation Guide

This is the installation guide for the last working version of the Beezy Boombox script.

------------------------------------------------------------
INSTALLATION
------------------------------------------------------------

1. Create the folder:
resources/[qb]/beezy-boombox

2. Place these files inside:
fxmanifest.lua
config.lua
client.lua
server.lua
html/
    index.html
    style.css
    script.js

3. Add this to your server.cfg:
ensure beezy-boombox

------------------------------------------------------------
ITEM SETUP (QBCORE)
------------------------------------------------------------

Open:
qb-core/shared/items.lua

Add this item:

['beezy_boombox'] = {
    name = 'beezy_boombox',
    label = 'Beezy Boombox',
    weight = 500,
    type = 'item',
    image = 'beezy_boombox.png',
    unique = false,
    useable = true,
    shouldClose = true,
    description = 'Portable music player'
},

Add an icon named:
beezy_boombox.png
to your inventory images folder.

------------------------------------------------------------
USAGE
------------------------------------------------------------

Place the boombox:
1. Give yourself the item:
/giveitem [id] beezy_boombox 1

2. Use the item from your inventory.
3. The boombox spawns on the ground in front of you.

Interact with the boombox using qb-target:
- Open Boombox → opens the menu
- Pick Up → deletes the boombox

Menu controls:
- Enter a YouTube URL
- Adjust volume
- Play / Stop
- Close menu
- Press ESC to close

------------------------------------------------------------
WHAT THIS VERSION INCLUDES
------------------------------------------------------------

- Working boombox placement
- Working qb-target menu
- ESC closes UI
- No dark tint
- No inventory removal
- No shared audio
- No distance fading
- No fancy UI

This is the stable baseline version.

------------------------------------------------------------
TROUBLESHOOTING
------------------------------------------------------------

Menu doesn’t open:
- Ensure qb-target is running
- Check F8 console for errors
- Make sure html/script.js is loading

Boombox doesn’t place:
- Confirm the model exists: prop_boombox_01
- Ensure the item is usable in QBCore

UI looks tinted:
- Confirm background: transparent !important; is in style.css

------------------------------------------------------------
FILE OVERVIEW
------------------------------------------------------------

fxmanifest.lua – Resource manifest
config.lua – Item + model settings
client.lua – Placement, qb-target, UI control
server.lua – Item usable event
html/index.html – UI layout
html/style.css – UI styling
html/script.js – UI logic
