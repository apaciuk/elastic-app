require 'elasticsearch/model'

Elasticsearch::Model.client = Elasticsearch::Client.new log:true,
transport_options: { request: { timeout: 5 } }, host: 'localhost:9200'