from ubuntu
  
RUN apt-get update &&apt-get install apt-transport-https -y &&apt-get update &&apt-get install wget -y &&wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb &&dpkg -i packages-microsoft-prod.deb &&apt-get update &&apt-get install dotnet-sdk-5.0 -y &&apt-get install unzip -y
WORKDIR .
copy ./webapp.zip ./webapp.zip
RUN unzip ./webapp.zip
RUN rm ./webapp.zip
ENTRYPOINT dotnet /webapp/WebApp.dll --urls "http://0.0.0.0:81" &

