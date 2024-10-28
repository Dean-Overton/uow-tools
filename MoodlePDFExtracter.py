import time
from selenium import webdriver
from selenium.webdriver.common.by import By
import os

import urllib.request

download_dir = "pdfextract/"

# Set up Selenium webdriver
chrome_options = webdriver.ChromeOptions()
chrome_options.add_experimental_option("prefs", {
    "download.default_directory": "pdfextract",
    "plugins.always_open_pdf_externally": True
})
driver = webdriver.Chrome(options=chrome_options)

# Navigate to the web page
driver.get("https://moodle.uowplatform.edu.au/my/")

# Wait for user to navigate to the desired page
input("Please navigate to the desired page and press Enter to continue...")

# Find all the <a> tags on the page
links = driver.find_elements(by=By.TAG_NAME, value="a")

# Iterate over the links and check if they have a PDF file extension
pdf_links = []
for link in links:
    href = link.get_attribute("href")
    if href.endswith(".pdf"):
        pdf_links.append(href)


# Create the 'pdfextract' folder if it doesn't exist
if not os.path.exists("pdfextract"):
    os.makedirs("pdfextract")

# Download the PDF files
# for pdf_link in pdf_links:
#     print("Downloading", pdf_link)
#     urllib.request.urlretrieve(
#         pdf_link, "pdfextract/" + pdf_link.split("/")[-1])


def is_file_downloading(download_dir):
    for filename in os.listdir(download_dir):
        if filename.endswith('.crdownload'):
            return True
    return False


try:
    pdf_links = driver.find_elements(By.TAG_NAME, "a")
    for link in pdf_links:
        link.click()
        while is_file_downloading(download_dir):
            time.sleep(1)  # Wait for the download to complete

        # Go back to the previous page
        driver.back()
except Exception as e:
    print(f"An error occurred: {e}")

# Close the webdriver
driver.quit()
