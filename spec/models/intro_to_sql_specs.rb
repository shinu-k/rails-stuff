require 'rails_helper'

RSpec.describe "Practice with ActiveRecord", type: :model do
  describe "Where" do
    it "can find records and attributes" do
      #What is the population of the US? 
      us = Country.where(code: 'USA').first
      expect(us.population).to eq(0)
    end

    it "can find records and attributes" do
      #What is the area of the US? 
      us = Country.where(code: 'USA').first
      expect(us.surfacearea).to eq(9363520.0)
    end

    it "can find records and attributes" do
      #What is the population of Canada? 
      canada = Country.where(code: 'CAN').first
      expect(canada.population).to eq(0)
    end

    it "can find records and attributes" do
      #What is the area of Canada? 
      canada = Country.where(code: 'CAN').first
      expect(canada.surfacearea).to eq(0)
    end


    it "can find records via equality comparrison" do
      #List the countries in Europe that have a surface area greater than 200k/km sq.
      countries = Country
        .where(region: 'Europe')
        .where("surfacearea > 200000")
      expect(countries.count).to eq(0)
    end

    it "can find records via equality comparrison" do
      #List the countries in Europe that have a life expectancy of more than 78? 
      countries = Country
        .where(region: 'Europe')
        .where("lifeexpectancy > 78")
      expect(countries.count).to eq(0)
    end

    it "can find records via equality comparrison" do
      #List the countries in Europe that have a life expectancy of less than 77? 
      countries = Country
        .where("lifeexpectancy > 77")
        .where(region: 'Europe')
      expect(countries.count).to eq(0)

    end

    it "can combine comaparisons" do
      #List the countries in Europe that have a life expectancy of less than 77 and surfacearea less than 50K km.? 
      countries = Country
        .where("lifeexpectancy < 77")
        .where("surfacearea > 200000")
        .where(region: 'Europe')
      expect(countries.count).to eq(0)


    end

    it "can find records via equality comparrison" do
      #List the countries that have a population smaller than 30,000,000 and a life expectancy of more than 45? 
      countries = Country
        .where("lifeexpectancy > 45")
        .where("population > 30000000")
      expect(countries.count).to eq(0)
    end

    it "can find records via multiple equality comparrisons" do
      #List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? 
       countries = Country
        .where("lifeexpectancy > 45")
        .where("population > 30000000")
        .where(region: 'Africa')
      expect(countries.count).to eq(0)
   end

    it "can find records using wildcards" do
      #Which countries are something like a republic? 
      #(are there 122 or 143 countries or ?)
      countries = Country
        .where("governmentform LIKE '%Republic%'")
      expect(countries.count).to eq(0)

    end

    it "can have multiple selects" do
      #Which countries are some kind of republic and achieved independence after 1945?
      countries = Country
        .where("governmentform LIKE '%Republic%'")
        .where('indepyear > 1945')
      expect(countries.count).to eq(0)
    end
  end

  describe "Order" do
    it "can use order" do
      # Which country has the shortest, non-null, life expectancy?
      country = Country
        .where.not(lifeexpectancy: nil)
        .order(:lifeexpectancy)
        .limit(1)
        .first
      expect(country.code).to eq('AAA')
    end

    it "can use order" do
      # Which country has the highest life expectancy?
      country = Country
        .order("lifeexpectancy DESC")
        .limit(1)
        .first

      expect(country.code).to eq('AAA')
    end

    it "can use order" do
      #Which is the smallest country by area
      country = Country
        .order(:surfacearea)
        .limit(1)
        .first

      expect(country.code).to eq('AAA')

    end

    it "can use order" do
      #which is the biggest country by area
      country = Country
        .order("surfacearea DESC")
        .limit(1)
        .first

      expect(country.code).to eq('AAA')


    end

    it "can use order" do
      #Which is the smallest country by population
      country = Country
        .order(:population)
        .limit(1)
        .first

      expect(country.code).to eq('AAA')
    end

    it "can use order" do
      #which is the biggest country by population
      country = Country
        .order("population DESC")
        .limit(1)
        .first

      expect(country.code).to eq('CHN')

    end

    it "can comboine order and limit" do
      # Which fifteen countries have the lowest life expectancy?
      countries = Country
        .order(:lifeexpectancy)
        .limit(15)
        .pluck(:name)
      
      ["Aruba"].map do |country|
        expect(countries).to include()
      end
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
