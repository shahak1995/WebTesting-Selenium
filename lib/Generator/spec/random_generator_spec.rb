require 'spec_helper'

describe RandomPostcodes do

  context 'requesting information on the postcode API by getting random data' do

    before(:all) do
      @postcodes_array = Generator.new.postcodes.random_array(rand(2..10))

    end

    it 'should return an array' do
      expect(@postcodes_array).to be_kind_of(Array)
    end 

    it 'should be an array length between 2 and 10' do
      expect(@postcodes_array.length).to be_between(2,10)
    end 

    it 'should be a string data type when retrieving data' do
      @postcodes_array.each do |result|
        expect(result).to be_kind_of(String)
      end 
    end 

    it 'should have a maximum of 8 characters in the postcode' do
      @postcodes_array.each do |character|
        expect(character.length).to be_between(5,9)
      end 
    end
  end
end