FROM gitpod/workspace-full

USER root
# Install deltarpm as it can speed up the upgrade processes, and tar as it's needed for installing Maven
RUN apt-get update 
RUN apt-get install -y deltarpm tar


# Install .NET Core, mono & PowerShell
ENV DOTNET_CLI_TELEMETRY_OPTOUT=true                                                                                    \
    DOTNET_RUNNING_IN_CONTAINER=true                                                                                    \
    DOTNET_USE_POLLING_FILE_WATCHER=true                                                                                \
    NUGET_XMLDOC_MODE=skip


