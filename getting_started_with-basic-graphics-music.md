Getting started with Basic-graphics-music examples
--------------------------------------------------

Requirements
1. Ubuntu 23.10.
2. git.
3. Intel FPGA board DE10-Lite.


Step 1 download Intel Quartus
-----------------------------

[Go to](https://www.intel.com/content/www/us/en/software-kit/795187/intel-quartus-prime-lite-edition-design-software-version-23-1-for-linux.html)
and download Quartus Lite Edition 23.1.  
![download page](https://github.com/sisaphilip/myconfigs/blob/main/Pictures/0.png)


Step 2 Running the installer
----------------------------

![Right click on installer and go to properties](https://github.com/sisaphilip/myconfigs/blob/main/Pictures/1.png)

![Set installer executable as program](https://github.com/sisaphilip/myconfigs/blob/main/Pictures/mm.png)

Sellect Devices, check add on button, agree to licence and click download 
![GUI](https://github.com/sisaphilip/myconfigs/blob/main/Pictures/2.png)  

![download progress](https://github.com/sisaphilip/myconfigs/blob/main/Pictures/3.png)  

Installation Completed  
![download done](https://github.com/sisaphilip/myconfigs/blob/main/Pictures/5.png)  

Step 3 Running Quartus
----------------------

Double click on desktop icon  
**OR**  
Navigate to installation directory in bin directory in command line  
and type  
> ./quartus  
![GUI](https://github.com/sisaphilip/myconfigs/blob/main/Pictures/8.png)  

Step 4 Installing git
---------------------

Open terminal and type  
> sudo apt-get install git  

Step 5 download Basic-graphics-music
------------------------------------

In terminal, at a desired location clone the main directory from github  
> git clone https://github.com/yuri-panchul/basics-graphics-music  

Step 6 Setup and Sellecting FPGA board.
-----------------------------
Connect your FPGA board via usb cable  
![board connection]()  

Open the downloaded directory on your pc in terminal  
![CLI]()  
Run the bash script  
> ./check_setup_and_choose_fpga_board.bash  

Sellect the corresponding number of your boards DE10-lite is 16 and press ENTER  
![Board sellection]()  

Choose N when prompted with choice to use Qurtus GUI  
![CLI choice]()  

Step 7 Running Shift register example
-------------------------------------

Navigate to shift register example by typing  
> cd labs/08_shift_register  

![08 shift register example location]()  

To Run synthesis in **CLI** run the script  
> ./03_synthesize_for_fpga.bash  

After a successful synthesis the image bellow should appear  
![success display]()  

Ensure all the LED switches are off  
![board with switches off]()  

Press Reset button, KEY 0 to observe how logic 1 get shifted accross the registers  
![board after reset pressed]()  


You can run other scripts in the directory depending on what you want to do  


For any questions
> sisaphilip@gmail.com






