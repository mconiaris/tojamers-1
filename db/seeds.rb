User.destroy_all

ryan    = User.create(name: "Ryan Parks", email: "rnparks@gmail.com", company: false, phone: "9177502397", password: "intheory")
fritz  = User.create(name: "Andrew Fritz", email: "a_fritz@yahoo.com", company: false, phone: "6467509999", password: "sweetroutes")
toro    = User.create(name: "Toro Rojo", email: "toro@nasa.gov", company: true, phone: "1-800-575-3535", password: "redbulls")
obama  = User.create(name: "Obama", email: "obama@gmail.com", company: true, phone: "1-900-ilv-taxes", password: "fourmoreyears")
chuck  = User.create(name: "Chuck Berry", email: "chuck_berry@rocknroll.com", company: false, phone: "650-323-2121", password: "johnnybgood")
keith  = User.create(name: "Keith Ricards", email: "keith_richards@rocknroll.com", company: false, phone: "212-333-1212", password: "brownsugar")
moon    = User.create(name: "Keith Sailor Moon", email: "keith_moon@underworld.com", company: true, phone: "666-666-6666", password: "whereisthebeer")
prince  = User.create(name: "Prince", email: "prince@strange.com", company: true, phone: "917-995-6565", password: "littleredcorvette")
