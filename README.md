# electron-build

* To build an electron app, clone this repo and add steps to add your code into the Docker image. The steps will look like this

     $ ADD . /home/ubuntu/ #Assuming that you are currently on the path which has the code you want to build
     
* Your are now good to build the image. 

     $ docker build -t imagename .
