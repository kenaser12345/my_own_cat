
require 'bundler/setup'
require 'discordrb'
require 'yaml'

CONFIG = OpenStruct.new YAML.load_file 'config.yml'
bot = Discordrb::Bot.new token: CONFIG.TOKEN

bot.message(content: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.message(content: '!cat get a cat') do |event|
  
end

bot.run