############################################################
# Dockerfile
############################################################
FROM ymazieres/dotnet:compile
WORKDIR /src
ENV ASPNETCORE_URLS http://+:5000
EXPOSE 5000
COPY src /src/
RUN dotnet restore
ENTRYPOINT ["dotnet", "run"]
