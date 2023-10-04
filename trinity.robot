*** Comments ***
# Group Members:

# Edem Quashigah
# Roy Liu
# Catarina Kaucher
# Marika Duhhanina


*** Settings ***
Library     SeleniumLibrary
Library     String
Library     XML


*** Variables ***
${website}              http://jimms.fi
${browser}=             Firefox
${searchElement}=       PS5


*** Test Cases ***
Open Webpage
    Open Browser    ${website}    Chrome    options=add_experimental_option("detach", True)

    Maximize Browser Window



# Edem (Task 1)
Landing Page
    # Do all product categories have a "landing page"
    # Get count of elements in the vertical path
    ${count}=    Get Element Count    xpath:/html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[*]/a

    # Iterate through all the elements
    FOR    ${index}    IN RANGE    1    ${count}+1
        Log    ${index}
        ${testElement}=    Set Variable
        ...    xpath:/html/body/header/div/div[1]/jim-drilldown-mega-menu/nav/ul/li[${index}]/a
        Log    ${testElement}
        ${text}=    Get Text    ${testElement}
        Log    ${text}

        # Check to make sure that each element has an 'href'
        ${testAttributes}=    Get Element Attribute    ${testElement}    href
        Run Keyword And Continue On Failure    Should Not Be Empty    ${testAttributes}
    END
    # close browser.
    Close Browser
    # End of task 1



# Task 2 - Marika Duhhanina
Search feature from main page
    Open Browser    https://www.jimms.fi/    ${browser}
    Maximize Browser Window
    Click Element    xpath://*[@id="searchinput"]
    Input Text    name:q    ${searchElement}
    Press Keys    name:q    ENTER

# take a screenshot from first product
    Set Screenshot Directory    C:\\Python311\\python\\Softwate_Testing\\TrinitySoftwareTesting
    Wait Until Page Contains Element    xpath:/html/body/main/div[2]/div/div[2]/div[5]/div/div[1]/product-box    3
    Capture Element Screenshot    xpath:/html/body/main/div[2]/div/div[2]/div[5]/div/div[1]/product-box

# drill down to product page
    Click Element    xpath://*[@class="product-box-name"]

# check that there is smething in product page what matches to keyword what was used in search
    Page Should Contain    ${searchElement}
    Close Browser
# End of Task 2 - Marika Duhhanina



# Roy (Tasks 3 & 4)
Find the button "Lisää koriin" from a product page and take a screenshot of the button's element
    Open Browser
    ...    https://www.jimms.fi/fi/Product/Show/187202/ls34bg850suxen/samsung-34-odyssey-oled-g8-kaareva-175hz-oc-wqhd-pelimonitori-tarjous-norm-1249-00
    ...    Chrome
    ...    options=add_experimental_option("detach", True)
    # Maximize Browser Window

    Page Should Contain Link
    ...    xpath:/html/body/main/div[1]/div[2]/div[1]/jim-product-cta-box/div/div[4]/div[2]/addto-cart-wrapper/div/a

    Set Screenshot Directory    C:\\Users\\royha\\OneDrive - Hämeen ammattikorkeakoulu\\Python\\TrinitySoftwareTesting
    Capture Element Screenshot
    ...    xpath:/html/body/main/div[1]/div[2]/div[1]/jim-product-cta-box/div/div[4]/div[2]/addto-cart-wrapper/div/a/span

    Close Browser
    # End of tasks 3 & 4



# Catarina (Task 5)
Test If Possible to Add Items to Cart
    Open Browser    ${website}    Chrome    options=add_experimental_option("detach", True)
    Maximize Browser Window
    # Add 5 items to cart
    Add to Cart
    ...    xpath://*[@id="fp-suggestions-carousel1-slide02"]/div/product-box/div[2]/div[3]/addto-cart-wrapper/div/a
    Add to Cart
    ...    xpath://*[@id="fp-suggestions-carousel2-slide05"]/div/product-box/div[2]/div[3]/addto-cart-wrapper/div/a
    Add to Cart
    ...    xpath://*[@id="fp-suggestions-carousel2-slide03"]/div/product-box/div[2]/div[3]/addto-cart-wrapper/div/a
    Add to Cart
    ...    xpath://*[@id="jim-main"]/div[7]/div/div/div[2]/div/div[1]/product-box/div[2]/div[3]/addto-cart-wrapper/div/a
    Add to Cart
    ...    xpath://*[@id="jim-main"]/div[8]/div/div/div[2]/div/div[2]/product-box/div[2]/div[3]/addto-cart-wrapper/div/a

    Close Browser
    # End of task 5



*** Keywords ***
Add to Cart
    [Arguments]    ${cartAdd}
    Sleep    1s
    Run Keyword and Ignore Error    Scroll Element Into View    ${cartAdd}
    Sleep    1s
    Click Element    ${cartAdd}

#6. Search "Odyssey OLED G8" and click into it and add it into the shopping cart (Roy)
    #
    #
    #
    #
    #




#7. Check if the product is in the shopping cart and make a screenshot of the cart icon (Catarina)
    #
    #
    #
    #





# Task 8 - Marika Duhhanina
#8. Click "SIIRRY KASSALLE", fill out the form and click "SEURAAVA>>" (Marika)
    #
    #
    #
    #



#9. Choose "Nouto Turku" from the list and click "SEURAAVA>>"  (Marika)
    #
    #
    #
    #

#10. Choose "Ennakkomaksu" and click "SEURAAVA>>", also verify the information we filled out in the form are correct (Edem)
    #
    #
    #
    #
    