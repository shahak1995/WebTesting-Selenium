require 'selenium-webdriver'

class QatoolsForm

  # Page objects
  PRACTICE_FORM_URL = 'https://www.toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD_NAME = 'firstname'
  LAST_NAME_FIELD_NAME = 'lastname'
  DATE_FIELD_ID = 'datepicker'
  SEX_BUTTON_MALE_ID = 'sex-0'

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_firstname_field_value
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)['value']
  end

  def input_lastname_field(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def input_lastname_field_value
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)['value']
  end

  def input_date_field(text)
    @chrome_driver.find_element(:id, 
      DATE_FIELD_ID).send_keys(text)
  end

  def input_date_field_value
    @chrome_driver.find_element(:id, 
      DATE_FIELD_ID)['value']
  end

  def input_sex_male_button_value
    @chrome_driver.find_element(:id, 
      SEX_BUTTON_MALE_ID)['radio']
  end

  def current_url
    @chrome_driver.current_url
  end
end