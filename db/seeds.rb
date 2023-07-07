puts "🌱 Seeding superheroes..."

# Create powers
power1 = Power.create(name: 'Sorcery', description: 'Harnesses the powers of magic and can manipulate reality, travel through dimensions, and cast spells. ')
power2 = Power.create(name: 'Agility', description: 'Incredible agility, strength, and ability to cling to walls. Iconic ability to shoot webs and a "spider-sense" that alerts him to danger.')
power3 = Power.create(name: 'Precision', description: 'Skilled marksman and a master archer, with exceptional accuracy and agility, he uses his bow and arrows to fight alongside the Avengers. ')
power4 = Power.create(name: 'Strength',description: 'Has strength and durability with uncontrollable rage, also for his inner struggle to control and channel his incredible power for good.')
power5 = Power.create(name: 'Thunder', description: 'An Asgardian warrior possesses incredible strength, the ability to control lightning, and the power to fly.')

# Create heroes
hero1 = Hero.create(name: 'Clint Barton', super_name: 'Hawk Eye')
hero2 = Hero.create(name: 'Peter Parker', super_name: 'Spiderman')
hero3 = Hero.create(name: 'Bruce Banner', super_name: 'Hulk')
hero4 = Hero.create(name: 'Chris Hemsworth', super_name: 'Lord of thunder')
hero5 = Hero.create(name: 'Stephen Strange', super_name: 'Dr. Strange')

heropower1 = HeroPower.create(strength: "Weak", power_id: power3.id, hero_id: hero1.id)
heropower2 = HeroPower.create(strength: "Strong", power_id: power5.id, hero_id: hero4.id)
heropower3 = HeroPower.create(strength:"Average", power_id: power2.id, hero_id: hero2.id)
heropower4 = HeroPower.create(strength: "Strong", power_id: power4.id, hero_id: hero3.id)
heropower5 = HeroPower.create(strength: "Average", power_id: power1.id, hero_id: hero5.id)

puts "✅ Done seeding!"

