# README

This project was a short and sweet web app I made as a proof of concept to connect to a web server on my local network through a raspberry pi.

## Overview
This app is made with ruby on rails has a simple actions that are coupled with other projects. Those include:

1. Message Board - Display messages to the message board. If you setup your message board in my other repo, then you just need to change the path to your executables in message_board_helper.rb
2. Scoreboard - Change the scores on a scoreboard and keep best friend lights in sync.
3. Best Friend Lamps - Acts as the source of truth for the best friend lamps, and keeps track of the current color.

## Installation
You will need to install a ruby version manager (either rvm or rbenv), you can look at docs online for that it is a simple install. Once you've installed one of them, just download/clone this repo and install the latest ruby version with your version manager through the .ruby-version specification. So if you are using `rvm` for example, you can type `rvm install` to install the latest ruby version. After install run `bundle install` to install all gem dependencies. 

## Starting the server
To start the server run `bin/rails server -b 0.0.0.0`and a rails server will be open at port 3000. To write a message to the screen go to `http://<YOUR PI'S IP ADDRESS>/message_boards/display_message/?message=<MESSAGE YOU WANT HERE>`
  
To set the current color for the best friend lamp go to `http://<YOUR PI'S IP ADDRESS>/message_boards/best_friend_lights/get_color_index/`

To get the current color for the best friend lamp go to `http://<YOUR PI'S IP ADDRESS>/message_boards/best_friend_lights/set_color_index/?color_index=<INDEX HERE>`
