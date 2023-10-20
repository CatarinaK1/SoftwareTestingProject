# TrinitySoftwareTesting
This is our assignment for the Software Testing course. It involves using RobotFramework to run 10 distinct test cases on the www.jimms.fi website. 2023


## Robot Framework:

Install the Robot Framework, which is an open-source test automation framework. To install run the command:
```
pip install robotframework
```


### SeleniumLibrary For Web Testing with Robot Framework:
Running this command installs the latest Selenium and Robot Framework versions, but it's necessary to install browser drivers separately. The --upgrade option can be omitted when installing the library for the first time.

```
pip install --upgrade robotframework-seleniumlibrary
pip install webdrivermanager
```

### Webdriver
Install browser and operating system specific browser drivers for the browser used in the tests. More information about drivers can be found from Selenium documentation.

To install a browser driver, download the browser driver, these exercises were made utilizing Chrome so it is required to install  `chromedriver`, and place it into a directory that is in PATH.
Drivers for different browsers can be found via Selenium documentation or by searching for the term selenium chrome browser driver.

You can also use the tool called WebdriverManager which finds the latest version of the webdrivers, then download and link/copy it into the right location.

```
pip install webdrivermanager
webdrivermanager chrome --linkpath /usr/local/bin
#Or
webdrivermanager chrome
```
