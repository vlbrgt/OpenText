# OpenText
Created with XOJO 2021r1.1 -> https://www.xojo.com/download/  
Using MBS Complete Plug-in Set 21.4 -> https://www.monkeybreadsoftware.de/xojo/pricing.shtml  
Both license (XOJO + MBS) are needed for building the App  

## What is OpenText  
OpenText is a tool that displays a pdf file, or a page in a pdf book, when a registration is selected on a Yamaha keyboard.

## Features  
- Supports up to 10,000 individual song files or a similar number of pages in each of 12 Song Books.
- Song Files display in a single window as multiple tabs. Song book pages display in a single window.  
   There is no need to clear the screen or fiddle with PC controls.
- OpenText uses free PDF readers to view files.
- Original files are not modified.
- Works with all recent PSR/CVP/Tyros/Genos/PSR-SX instruments and Windows based computers

## How it works  
Normally, selecting a registration does not send any identifying message to the PC.  
So there is no way for the PC to respond to a specific change in the instrument setup.  
OpenText works around this limitation by creating a special midi song file.
This file, when loaded by depressing the registration button,  
sends a message which triggers the display of an individual pdf file or a page from a song book on the PC screen.

