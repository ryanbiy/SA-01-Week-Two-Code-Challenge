kamala = Hero.create(name: 'Kamala Khan', super_name: 'Ms. Marvel')
doreen = Hero.create(name: 'Doreen Green', super_name: 'Squirrel Girl')
gwen = Hero.create(name: 'Gwen Stacy', super_name: 'Spider-Gwen')

strength_power = Power.create(name: 'Super Strength', description: 'Gives the wielder super-human strengths')
flight_power = Power.create(name: 'Flight', description: 'Gives the wielder the ability to fly through the skies at supersonic speed')

HeroPower.create(hero: kamala, power: strength_power, strength: 'Strong')
HeroPower.create(hero: kamala, power: flight_power, strength: 'Average')
HeroPower.create(hero: doreen, power: strength_power, strength: 'Weak')
HeroPower.create(hero: gwen, power: flight_power, strength: 'Strong')
