FROM redhat/ubi8
RUN mkdir /anujapp
RUN dnf install dotnet-sdk-8.0 -y
COPY . /anujapp/
WORKDIR /anujapp
RUN dotnet build -o anujappbin
RUN dotnet publish -o anuj_publish -p:AssemblyName=anujappbin
CMD ./anuj_publish/anujappbin --urls=http://0.0.0.0:5001
