from mcr.microsoft.com/dotnet/sdk:5.0
  
RUN apt-get update &&apt-get install unzip
copy ./webapp.zip ./webapp.zip
RUN unzip ./webapp.zip &&rm ./webapp.zip
WORKDIR webapp
EXPOSE 81
ENTRYPOINT dotnet WebApp.dll --urls "http://0.0.0.0:81"
