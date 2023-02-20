# doc: https://learn.microsoft.com/en-us/dotnet/core/tools/global-tools-how-to-create

# step 1: Navigate to the folder that contains the .csproj

# step 2: Modify .csproj file with:
<PackAsTool>true</PackAsTool>
<ToolCommandName>mytool</ToolCommandName>
<PackageOutputPath>./nupkg</PackageOutputPath>

# step 3: make a nuget package from the application:
dotnet pack

# step 4: install CLI tool (globally)
dotnet tool install -g --add-source ./nupkg namespace.to.program

# update tool (make a build in VS), remeber to bump the version number, then:
dotnet pack
# update tool (you HAVE to add the source):
dotnet tool update -g --add-source ./nupkg namespace.to.program

# uninstall tool:
dotnet tool uninstall -g mytool