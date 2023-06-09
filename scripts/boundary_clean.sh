# if the data directory is at the same level, clean it
if [[ -d "data" ]]
then 
	echo "data directory exists. Removing texture and voxel files"
	rm -rf data/*.txt
	echo "Texture and voxel files have been removed."
	echo "Looking to clean up data/boundary directory..."
	if [[ -d "data/boundary" ]]
	then
		echo "data/boundary exists, cleaning..."
		rm -rf data/boundary/*.obj
		echo "Removed .obj files from data/boundary."
	fi
fi

rm boundary_detection/*.png



