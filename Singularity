Bootstrap: docker
From: ubuntu

%environment
    VADER=badguy
    LUKE=goodguy
    SOLO=someguy
    export VADER LUKE SOLO

%labels
   Maintainer Vanessasaur

##############################
# foo
##############################

%apprun foo
    exec echo "RUNNING FOO"

%applabels foo
   BESTAPP=FOO
   export BESTAPP

%appinstall foo
   touch foo.exec

%appenv foo
    SOFTWARE=foo
    export SOFTWARE

%apphelp foo
    This is the help for foo.

%appfiles foo
   avocados.txt


##############################
# bar
##############################

%apphelp bar
    This is the help for bar.

%applabels bar
   BESTAPP=BAR
   export BESTAPP

%appinstall bar
    touch bar.exec

%appenv bar
    SOFTWARE=bar
    export SOFTWARE
