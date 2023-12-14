FROM redhat/ubi8
RUN mkdir /anujapp
RUN dnf install dotnet-sdk-8.0 -y
COPY . /anujapp/
WORKDIR /anujapp
RUN dotnet build -o anujappbin
CMD ./anujappbin/ashu-webapp --urls=http://0.0.0.0:5001
