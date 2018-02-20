Bootstrap: docker
From: openjdk:alpine

%post

    wget http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/Trimmomatic-0.36.zip
    unzip Trimmomatic-0.36.zip
    rm Trimmomatic-0.36.zip
    mv Trimmomatic-0.36 /data/
    echo $HOME
    pwd

%runscript
    java -jar /data/trimmomatic-0.36.jar "$@"
