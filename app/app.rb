module EsExample
  class App < Padrino::Application
    register Padrino::Mailer
    register Padrino::Helpers
    enable :sessions

    ActiveRecord::Base.establish_connection( adapter: 'sqlite3', database: ":memory:" )
    ActiveRecord::Schema.define(version: 1) { create_table(:articles) { |t| t.string :title } }
  end
end

require 'elasticsearch/model'
require 'active_record'
class Article < ActiveRecord::Base;
  include Elasticsearch::Model

  def self.create_all
    Article.create title: 'Quick brown fox'
    Article.create title: 'Fast black dogs'
    Article.create title: 'Swift green frogs'
  end
end