# WebTesting-Selenium
### Description
This POM helps to automate tests on a webpage through the use of the seenium web driver and the chrome driver.  Once this is retrieved,the test are done to check each of the elements within the hashes and arrays of the data to see if it is the right data type. Once all the test is done, through the use of RSpec, the test are run to see if they pass or not through the use of Red and Green; Red being a failure and Green being it has passed.

### Languages used
* Ruby

### Tools used
* RSpec
* Chrome Driver
* Selenium WebDriver

### How to download
1. Go onto the github website
2. Search for the repo shahak1995/FilmReviewsAPI
3. Click on the green button on the right to clone or download the repo

### How to use
1. Open the folder through a code editor of your choice
2. In the terminal run bundle to install all of your gems which will create a Gemfile.lock file with all of your dependancies 
3. Make sure your API KEY is within your .env file so that the method calls the API properly to do test from
3. Run RSpec in the terminal to test if you test code have passed or not by typing into the terminal 'rspec'
4. If the test are green, then the test have passed and are working correctly
5. If the test are red, then the test have failed and theres either something wrong with the test code or the method being called

### Challenges (you can include images and code block here)
1. Testing specific keys and elements within the arrays and hashes 
2. Making sure the loops check for the right keys
3. Making sure the method calls the API and prints it out within the terminal

### Learning points
1. Make sure to call the API correctly using the .env folder
2. Make sure the URI is correct when calling the external API
3. Make sure to print methods to check if you are calling parts of the API properly