echo Downloading packages...

$package = "jquery-2.2.4"

wget -OutFile nuget.exe https://dist.nuget.org/win-x86-commandline/v3.3.0/nuget.exe
wget -OutFile "$package.min.js" "https://code.jquery.com/jquery-2.2.4.min.js"
wget -OutFile "$package.js" "https://code.jquery.com/jquery-2.2.4.js"
wget -OutFile "$package.min.map" "https://code.jquery.com/jquery-2.2.4.min.map"

echo Building NuGet package...

mkdir pkg\lib
mkdir pkg\tools
mkdir pkg\content
mkdir pkg\content\Scripts
mkdir pkg\content\Scripts\jQuery

cp -Force $package* pkg\content\Scripts\jQuery\

.\nuget.exe pack pkg\jQuery.NuGet.nuspec

