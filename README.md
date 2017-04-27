# Basic introduction to Elasticsearch and a common Ruby integration for apps using ActiveRecord

by Emanuil Tolev

Say hi: [@emanuil_tolev on Twitter](https://twitter.com/emanuil_tolev).

1. download Elasticsearch

    `wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.3.1.zip`

1. extract Elasticsearch

    `unzip elasticsearch-5.3.1.zip`
    
1. start Elasticsearch

    `./elasticsearch-5.3.1/bin/elasticsearch`

1. start ruby console

    `padrino c`

1. select your normal relational database data (or create it, in our case)

    `EsExample::App::Article.create_all`

1. create your Elasticsearch index

    `EsExample::App::Article.__elasticsearch__.create_index`

1. index all yer data

    `EsExample::App::Article.import`

1. search in Ruby

    `EsExample::App::Article.search('fox').records.to_a`

1. search direct in Elasticsearch

    open [http://localhost:9200/articles/_search?q=fox](http://localhost:9200/articles/_search?q=fox) in a browser

1. Read the [list of queries Elasticsearch is capable of](https://www.elastic.co/guide/en/elasticsearch/reference/current/query-dsl.html) and the [list of aggregations it can do](https://www.elastic.co/guide/en/elasticsearch/reference/current/search-aggregations.html). Seriously - just read the several lines in the documentation table of contents. It will give you a great overview of what it can do for search and rolling up / analysing data. It could inspire your next useful feature that would have been quite complicated to do without ES.