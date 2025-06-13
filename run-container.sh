# !/bin/bash
DATA_DIR=$1
DATE=$2

if [ ! -d "$DATA_DIR" ]; then
    echo "Error: Data dir '$DATA_DIR' does not exist."
    echo "Usage: $0 DATA_DIR [DATE]"
    exit 1
fi

# docker run --rm -v $(pwd)/$DATA_DIR:/data taxi-rides-outlier-detection /data $DATE

docker run --rm -v $(pwd -W)/$DATA_DIR:/app/data taxi-rides-outlier-detection data $DATE

# !/bin/bash

# DATA_DIR=$1
# DATE=$2

# # Check if data directory exists
# if [ ! -d "$DATA_DIR" ]; then
#     echo "Error: Data dir '$DATA_DIR' does not exist."
#     echo "Usage: $0 DATA_DIR [DATE]"
#     exit 1
# fi

# # Get absolute path to data directory
# ABS_PATH="$(cd "$DATA_DIR" && pwd)"

# # Run Docker with proper volume mount and quoting
# if [ -z "$DATE" ]; then
#     docker run --rm -v "$ABS_PATH:/data" taxi-rides-outlier-detection /data
# else
#     docker run --rm -v "$ABS_PATH:/data" taxi-rides-outlier-detection /data "$DATE"
# fi
