  class Recipe < ActiveRecord::Base
    attr_accessible :title, :content

      # def as_json(options={})
      #   super(:only => [:title])
      # end
  end