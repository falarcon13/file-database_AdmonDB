# ------------------------------ SQL 2019 ---------------------------------------
# Imagen de Docker Hub
FROM mcr.microsoft.com/mssql/server:2019-CU18-ubuntu-20.04 AS SQL2019

# Variables de entorno del contenedor
ENV MSSQL_SA_PASSWORD=C0ntrol1* ACCEPT_EULA=Y MSSQL_PID=Developer 

# Puerto SQL
EXPOSE 1433

# ------------------------------ MYSQL -------------------------------------------
FROM mysql:8.0.33 AS MySQL8
ENV MYSQL_ROOT_PASSWORD=C0ntrol1*
EXPOSE 3306

# ------------------------------ POSTGRES ----------------------------------------
FROM postgres:latest AS PostgreSQL

ENV POSTGRES_USER=falarcon
ENV POSTGRES_PASSWORD=$0p0rte

EXPOSE 5432

# ------------------------------ ORACLE ------------------------------------------
# Version 9 es la estable

FROM oraclelinux:9

# Establecer las variables
ENV ORACLE_SID=ORCLCDB
ENV ORACLE_PDB=PDB1
ENV ORACLE_CHARACTERSET=AL32UTF8
ENV ORACLE_PASSWORD=$0p0rte

EXPOSE 1521