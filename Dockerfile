FROM        mono:4.0.1

COPY        ./src /src
COPY        ./build.sh /
RUN apt-get update
RUN apt-get install -y wget

WORKDIR /usr/lib/nuget
RUN wget https://dist.nuget.org/win-x86-commandline/v3.3.0/nuget.exe -O NuGet.exe

RUN         mkdir /packages

WORKDIR /src
RUN         nuget restore *.sln -Source https://www.nuget.org/api/v2 -OutputDirectory /packages

WORKDIR /
ENTRYPOINT ["/build.sh"]
