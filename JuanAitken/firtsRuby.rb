require "selenium-webdriver"

driver = Selenium::WebDriver.for :firefox
driver.get"www.google.com"
driver.quit
driver.close