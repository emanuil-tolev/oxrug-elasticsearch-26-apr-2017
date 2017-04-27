0. download Elasticsearch

    `wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.3.1.zip`

1. extract Elasticsearch

    `unzip elasticsearch-5.3.1.zip`

2. start ruby console

    `padrino c`

3. select your normal relational database data (or create it, in our case)

    `EsExample::App::Article.create_all`

4. create your Elasticsearch index

    `EsExample::App::Article.__elasticsearch__.create_index`

5. index all yer data

    `EsExample::App::Article.import`

6. search in Ruby

    `EsExample::App::Article.search('fox').records.to_a`

7. search direct in Elasticsearch

    open [http://localhost:9200/articles/_search?q=fox](http://localhost:9200/articles/_search?q=fox) in a browser
