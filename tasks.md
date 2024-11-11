# Software engineer in Test(SEiT) - Mobile- Take home technical test

# Task Introduction

The aim of this technical home test task is to get a better understanding of your ability to automate test cases for a sample mobile application(Android/iOS) using a native mobile test automation framework. Using our sample application, we would like you to demonstrate your skills by writing native mobile test automation code for the scenarios provided below. We request you to review the instructions carefully before beginning.

# Instructions
1. Store your code on a public hosting repository like Github and send the github repo link to the email address from which you received the home test.
2. We would like **you to choose one platform either iOS or Android**. Choose a native mobile testing framework relevant to your preferred platform- XCUITest for iOS, Espresso for Android.
    1. The iOS codebase can be found [here](https://github.com/bbc/test-technical-assessments/tree/main/automation-swiftui)
    2. The Android codebase can be found [here](https://github.com/bbc/test-technical-assessments/tree/main/Android)
3. We would like you to fork the codebase and use it to write your native automated tests for the test scenarios mentioned in the ‘Test scenarios to automate’ section mentioned below
5. The submitted code project should have the following:
    1. Automated test scripts for each scenario with appropriate assertions
    2. Readme file with your assumptions, running instructions and any external dependencies.
6. Return the test to our representatives 5 working days after you receive it.
7. Please verify if you can open the project in XCode or Android studio based on the plaform you have chosen.
8. If you experience any issues, or require any clarification, please email the following at any time <email addresses>


# Test scenarios to automate

**Scenario 1:** Ensure the user can successfully navigate to and view the content on the landing page

- Launch the app
- Verify that the landing page loads completely.
- Assert that essential content elements on the landing page are visible

**Scenario 2: **Verify that tapping the refresh button updates the last updated time after a loading spinner.

- On the landing page, tap the refresh button.
- Wait for the loading spinner to appear and then disappear.
- Verify that the last updated time is displayed and matches the current timestamp

**Scenario 3:** Verify the user can pick the ‘Technology’ topic from the Topic picker and that the tag link name changes accordingly.

- Open the Topic picker.
- Select ‘Technology’ from the options.
- Verify that the tag link name updates to ‘Go to Technology.’

**Scenario 4:** Verify that selecting the 'Go to Technology' link navigates the user to the correct content page.

- Tap on the 'Go to Technology' link.
- Verify that the user lands on the expected page.
- Scroll to the end of the page content and verify it loads fully.
- Navigate back to the home page

**Scenario 5:** Choose the ‘TV Guide’ topic from the Topic picker and select ‘No’ in the alert confirmation after tapping the ‘Go to TV Guide’ link.

- Open the Topic picker.
- Choose ‘TV Guide’ from the list of options.
- Tap the ‘Go to TV Guide’ link.
- Confirm that an alert dialog appears.
- In the alert dialog, select the "No" option.
- Verify that the user stays on the current page

**Scenario 6:** Choose the ‘TV Guide’ topic from the Topic picker and select ‘Yes’ in the alert confirmation after tapping the ‘Go to TV Guide’ link.

- Open the Topic picker.
- Choose ‘TV Guide’ from the list of options.
- Tap the ‘Go to TV Guide’ link.
- Confirm that an alert dialog appears.
- In the alert dialog, select the "Yes" option.
- Verify that the user is redirected to the appropriate content page.
- Navigate back to the home page

**Scenario 7:** Tap on the Breaking News button and handle the error alert.

- Tap the "Breaking News" button.
- Verify an error confirmation appears 
- Click ‘Ok’ and verify the user remains in a stable app state.

If there are any additional scenarios you think that could be automated for this sample app, please feel to automate them and don’t forget to mention that in your technical home test returns.

Good luck, and thank you for your effort in this technical assessment!

