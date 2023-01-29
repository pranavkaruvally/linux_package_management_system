# Linux Package Management System

GUI for Verilator

## Installation  
Download the `installer.sh` file.  
You can do this either by cloning the repo or directly <a href="https://drive.google.com/file/d/1HVtLxvJNPOGXQtFQGIPhE6OVPPJTsd62/view?usp=share_link">downloading</a> it from Google Drive.

### NOTE
An alternate download link is provided because the `installer.sh` is somewhat of a big file and GitHub doesn't allow files above `100 MiB`  
So, the file was uploaded using `git-lfs` and hence has this bandwidth restriction of `1 GiB`. So, once the `1 GiB` monthly bandwidth is used, downloading the file would not be possible. This Google Drive link was provided to ensure that the `installer.sh` file would be accessible even amidst a wear out of the monthly bandwidth that `git-lfs` provides.  
  


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