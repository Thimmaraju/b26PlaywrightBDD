const {Given, When, Then} = require('@cucumber/cucumber')
// import expect for assertion
const { expect } = require("@playwright/test")




Given('User Launch the Application', async function () {
   

   await page.goto("https://opensource-demo.orangehrmlive.com/web/index.php/auth/login")

})

When('User Enter Valid Username as {string}', async function (username) {

   await page.fill('input[name="username"]', username)
   
})

When('User enter password as {string}',async function (password) {
   
    //await page.fill("input[name='password']", password)

    await page.locator("input[name='password']").fill(password)
 
})


When('User clicks on login button', async function () {
   
   //await  page.click("button[type='submit']")

   await page.locator("button[type='submit']").click()
    
 })

 Then('User should be navigated to dashbaord page', async function () {
   
    await expect(page).toHaveURL('https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index')
  
 })


 Then('User should get login error Message', async function () {
   
    await expect(page.getByText('Invalid credentials')).toBeVisible()
 })


 
