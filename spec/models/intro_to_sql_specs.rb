require 'rails_helper'

RSpec.describe "Practice with ActiveRecord", type: :model do
  describe "Where" do
    it "can find records and attributes" do
      #What is the population of the US? 
    end

    it "can find records and attributes" do
      #What is the area of the US? 
    end

    it "can find records and attributes" do
      #What is the population of Canada? 
    end

    it "can find records and attributes" do
      #What is the area of Canada? 
      #(starts with 9, ends with million square miles)
    end


    it "can find records via equality comparrison" do
      #List the countries in Europe that have a surface area greater than 200k/km sq.
    end

    it "can find records via equality comparrison" do
      #List the countries in Europe that have a life expectancy of more than 78? 
    end

    it "can find records via equality comparrison" do
      #List the countries in Europe that have a life expectancy of less than 78? 
    end

    it "can combine comaparisons" do
      #List the countries in Europe that have a life expectancy of less than 78 and surfacearea less than 50K km.? 
    end

    it "can find records via equality comparrison" do
      #List the countries in  that have a population smaller than 30,000,000 and a life expectancy of more than 45? 
    end

    it "can find records via multiple equality comparrisons" do
      #List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? 
    end

    it "can find records using wildcards" do
      #Which countries are something like a republic? 
      #(are there 122 or 143 countries or ?)
    end

    it "can have multiple selects" do
      #Which countries are some kind of republic and achieved independence after 1945?
    end
  end

  describe "Order" do
    it "can use order" do
      # Which country has the shortest, non-null, life expectancy?
    end

    it "can use order" do
      # Which country has the highest life expectancy?
    end

    it "can use order" do
      #Which is the smallest country by area
    end

    it "can use order" do
      #which is the biggest country by area
    end

    it "can use order" do
      #Which is the smallest country by population
    end

    it "can use order" do
      #which is the biggest country by population
    end

    it "can comboine order and limit" do
      # Which fifteen countries have the lowest life expectancy?
    end

    it "can comboine order and limit" do
      #Which five countries have the lowest population density? 
    end

    it "can comboine order and limit" do
      #which five countries have the highest population density?
    end

    it "can comboine order and limit" do
      #Which are the 10 smallest countries by area and population?
    end

    it "can comboine order and limit" do
      #Which are the 10 biggest countries, by area and population?
    end
  end
  
  describe "Combining ActiveRecord and Plain Old Ruby (POR)" do
    it "can simplify 'with' queries" do
      #Of the smallest 10 countries, which has the biggest gnp? 
    end

    it "can simplify 'with' queries" do
      #Of the largest 10 countries, which has the smallest gnp? 
    end

    it "can simplify 'with' queries" do
      #Of the smallest 10 countries, which has the biggest per capita gnp?
    end

    it "can simplify 'with' queries" do
      #Of the biggest 10 countries, which has the biggest gnp?
    end

    it "can simplify 'with' queries" do
      #Of the biggest 10 countries, which has the biggest per capita gnp?
    end

    it "can simplify 'aggregate' operations" do
      #What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
    end
  end
end
