from nginx
  
RUN apt-get update
RUN apt-get install apt-transport-https -y
RUN apt-get update
RUN  apt-get install wget -y
RUN wget https://packages.microsoft.com/config/ubuntu/21.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN apt-get update
RUN apt-get install dotnet-sdk-5.0 -y
WORKDIR /app
copy webapp/ ./app
RUN dotnet --help