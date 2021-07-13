git clone https://github.com/soumenmazumder/webapp.git &&git clone https://github.com/soumenmazumder/dockerfiles.git &&zip -r webapp.zip ./webapp/ &&cd dockerfiles &&cp /root/webapp.zip webapp.zip &&git config --global user.email "soumen.mazumder@gmail.com" &&git config --global user.name "Soumen Mazumder"


docker tag 882eeea86c8f somu2002/myrepo:dotnet5.0
docker login
docker push somu2002/myrepo:dotnet5.0
kubectl run --generator=run-pod/v1 myapp --image=somu2002/myrepo:dotnet5.0
kubectl get pods
kubectl describe pod myapp
kubectl expose pod myapp --port=8080 --target-port=81
kubectl get svc
curl http://10.106.194.189:8080docker push somu2002/myrepo:dotnet5.0


