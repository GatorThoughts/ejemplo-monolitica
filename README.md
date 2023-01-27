## Build

docker build . -t labmono

## Run
docker run -dp 8501:8501 --mount type=bind,src=$(pwd),dst=/mnt/negatives/ labmono