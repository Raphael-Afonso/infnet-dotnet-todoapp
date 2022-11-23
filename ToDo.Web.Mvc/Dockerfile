#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build
WORKDIR /src
COPY ["ToDo.Web.Mvc/ToDo.Web.Mvc.csproj", "ToDo.Web.Mvc/"]
COPY ["ToDo.Domain/ToDo.Domain.csproj", "ToDo.Domain/"]
COPY ["ToDo.Infra.Data/ToDo.Infra.Data.csproj", "ToDo.Infra.Data/"]
RUN dotnet restore "ToDo.Web.Mvc/ToDo.Web.Mvc.csproj"
COPY . .
WORKDIR "/src/ToDo.Web.Mvc"
RUN dotnet build "ToDo.Web.Mvc.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ToDo.Web.Mvc.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ToDo.Web.Mvc.dll"]