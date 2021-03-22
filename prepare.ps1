$option = $args[0]

if(!$option -or $option -eq "help")
{
	echo "Arguments:"
	echo "make... runs cmake"
	echo "clean... deletes the build-directory"
	echo "build [DEBUG|RELEASE|ALL]... builds the debug or release library"
}
elseif(($option -eq "make") -or (!$option))
{
    if(!(Test-Path build))
    {
		mkdir build
    }
    cd build
    cmake ../
    cd ..
}
elseif($option -eq "clean")
{
    if(Test-Path build)
    {
        echo "Removing old build directory..."
        Remove-Item -Path build -Recurse
    }
    else
    {
        echo "Already clean."
    }
}
elseif($option -eq "build")
{
	if(!(Test-Path build))
    {
        echo "Build directory doesn't exist."
    }
    else
    {
		if(!$args[1] -or $args[1] -eq "help")
		{
			echo "Build targets: DEBUG or RELEASE"
		}
		
		[bool] $built = $false
		
        cd build
        if($args[1] -eq "DEBUG" -or $args[1] -eq "ALL")
        {
            echo "Building debug..."
            devenv /build Debug lodepng.sln
            echo "Finished build."
            echo "Copying library..."
			
			copy-item "./Debug/lodepng.lib" "../lodepng-beef/dist/Debug-Win64/lodepng.lib" -Force
			$built = $true
        }
        
		if($args[1] -eq "RELEASE" -or $args[1] -eq "ALL")
        {
            echo "Building release..."
            devenv /build Release lodepng.sln
            echo "Finished build."
            echo "Copying library..."
			
			copy-item "./Release/lodepng.lib" "../lodepng-beef/dist/Release-Win64/lodepng.lib" -Force
			$built = $true
        }
		
		if($built -eq $false)
		{
			echo "No built attempted."
		}
        cd ..
    }
}