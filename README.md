# WebTesting-Selenium
### Description
This POM helps to automate tests on a webpage through the use of the selenium web driver and the chrome driver. Once the url for the webpage has been retrieved, you test the specific fields and enter the value within them to see if it inputs when test run. Once all the test is done, through the use of RSpec, the test are run to see if they have passed or not by automating the values into the specific fields. 

### Languages used
* Ruby

### Tools used
* RSpec
* Chrome Driver
* Selenium WebDriver

### How to download
1. Git clone 'https://github.com/shahak1995/WebTesting-Selenium'
2. Run 'bundle' in the terminal to install the gems
3. Run 'rspec'

### How to use
1. Open the folder through a code editor of your choice
2. In the terminal run bundle to install all of your gems which will create a Gemfile.lock file with all of your dependancies 
3. Make sure you enter your URL at the top of the DemoQAForm file in which you want to do test on
3. Run RSpec in the terminal to test if you test code have passed or not by typing into the terminal 'rspec'
4. If your test has ran succesfully, then it will say it has passed
5. If your test has didnt run succesfully, then it will say it has failed and show you the error

### Challenges (you can include images and code block here)
1. Testing the buttons on the form page
2. Finding the element to test for each of the fields
3. Making the instances for the generator code with faker

### Learning points
1. Set up the file structure first for the Generator files
2. Make sure the URL is correct when putting it in the code
3. Make sure the fields you are testing are correct when doing tests