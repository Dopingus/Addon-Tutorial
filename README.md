# Addon Tutorial

Clone this to your Tree of Savior directory. When the game loads, you should see a message on every fps update.

You can edit `data/addon_d/helloaddon/helloaddon.lua` and reload it while in game. Open the developer console and use this command to reload it:

`dofile("../data/addon_d/helloaddon/helloaddon.lua");`

When you're ready to package it up as a standalone ipf, package the following together:

`data/addon_d/helloaddon/helloaddon.lua`
`helloaddon/addon_d.ipf/helloaddon/helloaddon.xml`

These two files should go in the same ipf and the structure should look the same as it does in the `helloaddon` folder.
