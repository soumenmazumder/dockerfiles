from mcr.microsoft.com/dotnet/runtime:5.0
  
RUN apt-get update &&apt-get install unzip
copy ./webapp.zip ./webapp.zip
RUN unzip ./webapp.zip &&rm ./webapp.zip
WORKDIR ./webapp
RUN ls
ENTRYPOINT dotnet WebApp.dll --urls "http://0.0.0.0:81" &

