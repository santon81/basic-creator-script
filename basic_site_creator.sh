#!/bin/bash
 # This script organizes files in a specified directory
# It moves all the image files to an "images" directory,
# and all the video files to a "videos" directory.

# Set the source directory and the destination directories
SOURCE_DIR=/path/to/downloads
IMAGES_DIR=/path/to/images
VIDEOS_DIR=/path/to/videos

# Create the destination directories if they don't exist
mkdir -p $IMAGES_DIR
mkdir -p $VIDEOS_DIR

# Move image files to the images directory
find $SOURCE_DIR -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" | while read file
do
    mv "$file" $IMAGES_DIR
done

# Move video files to the videos directory
find $SOURCE_DIR -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mkv" | while read file
do
    mv "$file" $VIDEOS_DIR
done

echo "Files organized!"