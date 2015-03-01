# Mod-pack

Welcome to the GitHub page of our private modpack. This is manly used to create the modpack itself the whole group together.

You can make any changes you want here, as long as everyone in the group is ok with it, and it fulfills with the [spreadsheet](https://docs.google.com/spreadsheets/d/1oWWrh99X2nWmeZeLGyfQeNNoEBU-4pSW2jZV4QNTKw0/edit#gid=0)'s data.
 You can do so by using the pullrequest feature inside GitHub. This works for both adding new mods to the list, updating them or modifying the config files.
 
If you don't want to wait for a release version of the modpack, you can download this repository as a .zip and use the build.bat file.

*Warning: this modpack requires of previous installation of Forge 10.13.2.1291. This can be found in the downloads folder.*

## Folder structure

The main repository is divided in three main folders: Client, Server and Common:

- **Common**: mods and config files used both by the server and the client are saved here.
- **Client**: client-specific mods and config files are saved here. Most of them are optional, but recommended. It also includes client-specific stuff such as the forge jar redistributable and various .json files used by the minecraft launcher.
- **Server**: server-specific mods and config files are saved here. None of these should matter to you, since only one of us is going to actually use these and host the server. It contains other server-specific stuff such as the server .jar.

## Build program

This program is manly used for testing and generating releases. It only combines the right files for every "platform" or "side", but is used for convenience.

There are a couple actions available within this program: one for building on each side and another one to clean the *build* folder (which is ignored by the .gitignore).
