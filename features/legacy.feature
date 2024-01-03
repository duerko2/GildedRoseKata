Feature: Gilded Rose behaviour of the legacy code

Scenario: Aged Brie increases in quality the older it gets
	Given an item named "Aged Brie" with quality 9 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 10

# A brie past its sell by date increases in quality twice as fast
Scenario: Aged Brie increases in quality twice as fast after sell by date
	Given an item named "Aged Brie" with quality 9 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 11

Scenario: Aged Brie never goes above 50 in quality
	Given an item named "Aged Brie" with quality 50 and which has to be sold in 5 days
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 50

Scenario: Backstage passes increases in quality the older it gets
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 30 and which has to be sold in 40 days
	When a day has passed
	Then it has to be sold in 39 days
	And its quality is 31

Scenario: Backstage passes increases in quality by two when its sellIn is 10 days or less
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 30 and which has to be sold in 10 days
	When a day has passed
	Then it has to be sold in 9 days
	And its quality is 32

Scenario: Backstage passes increases in quality by three when its sellIn is 5 days or less
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 30 and which has to be sold in 5 days
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 33

Scenario: Backstage passes drops to 0 in quality after the concert
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 30 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 0

	# 	- Once the sell by date has passed, Quality degrades twice as fast
Scenario: Normal items degrade twice as fast when sell by date has passed
	Given an item named "Normal Item" with quality 10 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 8


Scenario: Stinky Rat decreases in quality the older it gets
	Given an item named "Stinky Rat" with quality 5 and which has to be sold in 3 days
	When a day has passed
	Then it has to be sold in 2 days
	And its quality is 4

Scenario: Stinky Rat never goes below 0 in quality
	Given an item named "Stinky Rat" with quality 0 and which has to be sold in 3 days
	When a day has passed
	Then it has to be sold in 2 days
	And its quality is 0

Scenario: Sulfuras doesn't change in quality or sellIn
	Given an item named "Sulfuras, Hand of Ragnaros" with quality 100 and which has to be sold in 500 days
	When a day has passed
	Then it has to be sold in 500 days
	And its quality is 100


#Scenario: Conjured items degrade in quality twice as fast as normal items
#	Given an item named "Conjured Spirit Rat" with quality 10 and which has to be sold in 3 days
#	When a day has passed
#	Then it has to be sold in 2 days
#	And its quality is 8





