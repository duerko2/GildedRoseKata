package com.gildedrose;

public class GildedRose {
    Item[] items;

    public GildedRose(Item[] items) {
        this.items = items;
    }

    public void updateQuality() {
        for (int i = 0; i < items.length; i++) {

            int quality_change = 0;
            int sellIn_change = 0;

            // determine changes
            switch(items[i].name) {
                case "Aged Brie":
                    quality_change = 1;
                    sellIn_change = -1;
                    if(items[i].sellIn <= 0) {
                        quality_change = 2;
                    }
                    break;
                case "Backstage passes to a TAFKAL80ETC concert":
                    if (items[i].sellIn <= 0) {
                        quality_change = -items[i].quality;
                    } else if (items[i].sellIn <= 5) {
                        quality_change = 3;
                    } else if (items[i].sellIn <= 10) {
                        quality_change = 2;
                    } else {
                        quality_change = 1;
                    }
                    sellIn_change = -1;
                    break;
                case "Sulfuras, Hand of Ragnaros":
                    return;
                default:
                    if (items[i].sellIn <= 0) {
                        quality_change = -2;
                    } else {
                        quality_change = -1;
                    }
                    sellIn_change = -1;
                    break;
            }

            // apply changes
            items[i].quality += quality_change;
            items[i].sellIn += sellIn_change;


            // check for quality bounds
            if(items[i].quality > 50) {
                items[i].quality = 50;
            } else if (items[i].quality < 0) {
                items[i].quality = 0;
            }


        }
    }
}