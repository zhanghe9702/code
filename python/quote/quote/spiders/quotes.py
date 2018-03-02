# -*- coding: utf-8 -*-
from scrapy import Spider
from scrapy.loader import ItemLoader
from quote.items import QuoteItem
from scrapy.loader.processors import MapCompose


class QuotesLoader(ItemLoader):
    desc_out = MapCompose(lambda x:  x.encode('utf-8').decode('unicode_escape').encode('ascii', 'ignore'))
    name_out = MapCompose(lambda x:  x.encode('utf-8').decode('unicode_escape').encode('ascii', 'ignore'))


class QuotesSpider(Spider):
    name = 'quotes'
    allowed_domains = ['http://quotes.toscrape.com/']
    start_urls = ['http://quotes.toscrape.com/']

    def parse(self, response):
        sel = response.xpath('//div[@class="quote"]')
        for (k,s) in enumerate(sel):
            item = QuoteItem()
            loader = QuotesLoader(item, response=response)
            loader.add_xpath('desc', '//div[@class="quote"][%s]//span[@itemprop="text"][1]/text()' % str(k+1))
            loader.add_xpath('name', '//div[@class="quote"][%s]//small[@itemprop="author"][1]/text()' % str(k+1))
            yield loader.load_item()



