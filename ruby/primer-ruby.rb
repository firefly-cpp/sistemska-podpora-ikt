#!/usr/bin/env ruby

# podatki o novem uporabniku
uporabnik = 'uporabnik1'
geslo = 'mojegeslo'
domaci_imenik = "/home/#{uporabnik}"

# ustvarimo uporabnika
`sudo useradd -m -d #{domaci_imenik} -s /bin/bash #{uporabnik}`

# nastavimo geslo za uporabnika
`echo "#{uporabnik}:#{geslo}" | sudo chpasswd`

puts "#{uporabnik} uspesno ustvarjen."
