


const { Given, When, Then } = require('@cucumber/cucumber')
// import expect for assertion
const { expect } = require("@playwright/test")


When('user clicks on PIM menu', async function () {
    
    await page.locator('a[href="/web/index.php/pim/viewPimModule"]').click()

});



When('user clicks on Add employee sub menu', async function () {
  
    await page.locator('a[class="oxd-topbar-body-nav-tab-item"]').nth(1).click()
});



When('user enter firstname as {string}', async function (firstname) {
     
    await page.locator('input[class="oxd-input oxd-input--active orangehrm-firstname"]').fill(firstname)

});



When('user enter lastname as {string}', async function (lasname) {
    
    await page.locator('input[class="oxd-input oxd-input--active orangehrm-lastname"]').fill(lasname)

});



When('user clicks on save button', async function () {
   
    await page.locator("//button[@type='submit']").click()
});



Then('user should get success message', async function () {
    
    await expect(page.locator("//h6[text()='Personal Details']")).toBeVisible()

})


Then('user should see error message for firstname and lastname', async function () {
    
    await expect(page.locator("//span[text()='Required']").nth(0)).toBeVisible()
    await expect(page.locator("//span[text()='Required']").nth(1)).toBeVisible()


})