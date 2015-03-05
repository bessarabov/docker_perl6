# perl6 docker image

First of all you need to [install docker](https://docs.docker.com/installation/).

## How to build image

Run the command (it will take a long time to build perl6):

    $ docker build --tag perl6 .


## How to use image

Run the command:

    $ docker run -it perl6 bash

After that you will get inside the working conatiner with perl. And you
will be able to run some Perl6 things, like:

    # ./perl6 -e '@a = 1,2,3; say @a.perl';
    Array.new(1, 2, 3)
