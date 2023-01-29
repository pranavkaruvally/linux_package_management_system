# Linux Package Management System

GUI for Verilator

## Installation  
Download the `installer.sh` file.  
You can do this either by cloning the repo or directly <a href="https://drive.google.com/file/d/1HVtLxvJNPOGXQtFQGIPhE6OVPPJTsd62/view?usp=share_link">downloading</a> it from Google Drive.

<hr>

### Note
An alternate download link is provided because the `installer.sh` is somewhat of a big file and GitHub doesn't allow files above `100 MiB`  
So, the file was uploaded using `git-lfs` and hence has this bandwidth restriction of `1 GiB`. So, once the `1 GiB` monthly bandwidth is used, downloading the file would not be possible. This Google Drive link was provided to ensure that the `installer.sh` file would be accessible even amidst a wear out of the monthly free bandwidth that `git-lfs` provides.  
<hr>  


Once downloaded open a terminal in the directory in which the installer file has been downloaded.  
Then:
```
chmod +x installer.sh
./installer.sh
```
This will now install the program in a folder named `verilator_gui` inside your `home` directory.  
The program is accessible from the `dist` directory inside the `verilator_gui` directory  
```
cd ~/verilator_gui/dist
```

One could now simply open up the program by
```
./main
```
## Dependencies

The software Verilator does comes packaged inside this program and is installed when running the `installer.sh`.  
The stable version inside the Verilator GitHub repo was compiled along with a `GLIBC 2.31` so that it would support a wide variety of distros especially the Debian based ones that still hasn't moved on to the later versions such as `GLIBC 2.35` or `GLIBC 2.34`.
Additional dependency warnings if any will be displayed in the dialogue box that opens up once the `Build` button is pressed inside the program.