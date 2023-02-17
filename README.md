# Super Mario UniMaker PS Vita Port v1.2.3.4
This is the repo of the port of the Super Mario UniMaker for the PS Vita. Super Mario UniMaker is a fan game of Super Mario Maker by Nintendo, the original source code can be found [here](https://github.com/ninstar/UniMaker). You can download the PS Vita port on [VitaDB](https://vitadb.rinnegatamante.it/#/info/832).

## Credits
Original game by [NinStar](https://ninstars.itch.io)

Original game page [here](https://ninstars.itch.io/unimaker)

Port by [MEGAgameBoy](https://github.com/MEGAgameBoy)

## Note
For installing custom levels you need to take the '.unis' file and put it in the ux0:app/SMUM30622/games/courses/ folder.
Due to PS Vita limitation yon cannot share the levels created on the PS Vita.
The PS Vita port use a '.univ' file format to save levels. For sharing/exporting levels, see below.

## Sharing/Exporting levels
For sharing/exporting levels you will need to decrypt the '.univ', the best way to do that is by using [Apollo Save Tool](https://github.com/bucanero/apollo-vita/releases) for PS Vita by [bucanero](https://github.com/bucanero).
* First you need to go to Apollo Save Tool and go to Int saves > Super Mario UniMaker > Export decrypted save file then chose the level that you want to export and press X.
* Next your level will be exported in ux0:data/apollo/00/SMUM30622/courses/ you can now transfer your level to a PC using VitaShell USB/FTP connection.
* Finaly make sure to rename file extension form '.univ' to '.unis'.

## Original Credits

- **Creator** - NinStar
- **Code** - Gate, Hello Fangaming, NinStar, Ralphed
- **Art** - Jessé Vieira, Kopejo, NinStar, Neweegee, Nicke, Sednaiur, Shikaternia

## Changelog 1.2.3.4
* Fixed level selection bug

## Changelog 1.2.3.3
* Fixed crash on the level selector
* Fixed the overselection bug on the level selector
* Added a message when they are no custom/saved levels to show
* Replaced web links by qr codes
* Added full joystick support for editor/play modes
