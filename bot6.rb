# coding: UTF-8
require 'telegram/bot'

token = '1256536550:AAHdvWTfNzgHZnSS_geuVowGW5Q1XvpisCQ'

#Telegram::Bot::Client.run(token, url: 'http://46.4.96.137:8080') do |bot|
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    end
  end
end
