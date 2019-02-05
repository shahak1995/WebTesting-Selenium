require 'spec_helper'

describe 'testing the demoqa automation form' do 

  before(:all) do
    @driver = QatoolsForm.new
    @driver.visit_practice_form
    @url = 'https://www.toolsqa.com/automation-practice-form'
    @name = "My name is #{Faker::GameOfThrones.character}, I work at #{Faker::Simpsons.location} and I got killed once and got brang back to life by this lovely witch who afterwards ran away"
    p @name
  end

  context 'testing the positive paths for the form' do

    it 'should land on the registration demo form page' do
      expect(@driver.current_url).to eq @url
    end 

    it 'should accept a first name' do
      @driver.input_firstname_field(@name)
      expect(@driver.input_firstname_field_value).to eq @name
    end 
  end 
end 


