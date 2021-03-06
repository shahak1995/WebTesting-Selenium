require 'spec_helper'

describe 'testing the demoqa automation form' do 

  before(:all) do
    @driver = QatoolsForm.new
    @driver.visit_practice_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @firstname = Generator.new.form_data.first_name
    @lastname = Generator.new.form_data.last_name
    @date = Generator.new.form_data.date
  end

  context 'testing the positive paths for the form' do

    it 'should land on the registration demo form page' do
      expect(@driver.current_url).to eq @url
    end

    it 'should accept a first name' do
      @driver.input_firstname_field(@firstname)
      expect(@driver.input_firstname_field_value).to eq @firstname
    end

    it 'should return first name value as a String' do
      @driver.input_firstname_field(@firstname)
      expect(@driver.input_firstname_field_value).to be_a(String)
    end

    it 'should accept a last name' do
      @driver.input_lastname_field(@lastname)
      expect(@driver.input_lastname_field_value).to eq @lastname
    end

    it 'should return last name value as a String' do
      @driver.input_lastname_field(@lastname)
      expect(@driver.input_lastname_field_value).to be_a(String)
    end

    it 'should return the date to be string' do
      @driver.input_date_field(@date)
      expect(@driver.input_date_field_value).to be_a(String)
    end

    it 'should click on the male button and be equal to male' do
      @driver.input_sex_male_button
      expect(@driver.input_sex_male_button_value).to eq 'Male'
    end

    it 'should click on the female button and be equal to female' do
      @driver.input_sex_female_button
      expect(@driver.input_sex_female_button_value).to eq 'Female'
    end
  end
end
