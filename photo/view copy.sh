#/bin/bash

for x in {1..200}
do
    curl -d "ImageID=2131281211&ImageKey=XGrJCZz&method=rpc.image.like" http://www.tf-photoscapes.com/Portfolio/i-XGrJCZz
    echo $x
done
