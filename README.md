## Build

docker build . -t labmono

## Run
docker run -dp 8501:8501 --mount type=bind,src=$(pwd),dst=/mnt/negatives/ labmono

###### Autor
Jorge Manuel De León Pinelo
jmdeleonpi@gmail.com