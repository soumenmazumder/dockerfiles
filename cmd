git clone https://github.com/soumenmazumder/webapp.git &&git clone https://github.com/soumenmazumder/dockerfiles.git &&zip -r webapp.zip ./webapp/ &&cd dockerfiles &&cp /root/webapp.zip webapp.zip &&git config --global user.email "soumen.mazumder@gmail.com" &&git config --global user.name "Soumen Mazumder"


docker tag 882eeea86c8f somu2002/myrepo:dotnet5.0
docker login
docker push somu2002/myrepo:dotnet5.0


