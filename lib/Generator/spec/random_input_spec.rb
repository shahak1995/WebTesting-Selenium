require 'spec_helper'

describe RandomFormData do

    before(:all) do
      @data = Generator.new.form_data
    end

    it 'should get the first name data and return a string' do
      expect(@data.first_name).to be_kind_of(String)
    end 

    it 'should get the last name data and return a string' do
      expect(@data.last_name).to be_kind_of(String)
    end 

    it 'should get the date data and return a date' do
      expect(@data.date).to be_kind_of(Date)
    end
  end 