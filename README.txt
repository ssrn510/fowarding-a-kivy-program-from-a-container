What is this program?
	This is a program that uses docker desktop, in tandem with a bash script and a short python file, in order to print hello world on a kivy window which is forwarded from the container produced with the docker file to the user’s host system. Currently the Dockerfile starts up a centos 7 based container, exposes the 5900 port of the container for networking between the container and the host system, installs all the dependencies for kivy and tigervnc server, and runs a bash script called cmds. cmds contains the commands required to start a vnc server on the container and tells the container to display imageGen.py, which is a python file that uses kivy to display a label that says, “Hello World!”. 

How to run this program
	This program can be run on windows powershell /command line by using the following two commands after cding into the file this program is saved in

	docker build -t Runkivy .
	docker run -ti -p 5900:5900 --rm --device=/dev/tty0 RunKivy

*Note: RunKivy is what I named my image, it can be substituted by any name of your choice as long as you use the same name for both commands
