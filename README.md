# Loop iOS Sample - Download test profiles

## Prerequisites:
  * You will need the latest version of XCode (7.3.1 or greater) to run this sample app.
  * You will need to install [Carthage](https://github.com/Carthage/Carthage)

## Build instructions:
These instructions will get you a copy of a Loop sample app for downloading user profiles from the Loop platform for development and testing purposes.

  0. If you haven’t already, signup for a Loop account and create an app on the [Loop Developer Site](https://www.loop.ms)
  0. Get the sample app
    0. Clone this sample app `git clone https://github.com/Microsoft/Loop-Sample-TestUser-IOS.git`
    0. Open it in XCode
    0. Make a copy of `Config/Keys.example.xcconfig` and call it `Config/Keys.xcconfig`
    0. In the `Keys.xcconfig` file provide values for the `LOOP_APP_ID_PROP` and `LOOP_APP_TOKEN_PROP` using your Loop app id and app token from the dashboard.
    0. Touch the `Loop Test User.xcconfig` file
  0. Create test users in the user dashboard at the [Loop Developer Site](https://www.loop.ms)
  0. In the `Keys.xcconfig` file provide values for the `LOOP_USER_ID_PROP` and `LOOP_DEVICE_ID_PROP` using a test user id and device id from the dashboard.
  0. From the command line in the project directory run `carthage update --platform iOS`
  0. Build an run the app

After this is done, you can see the test profiles in your app. You can use the [Loop-Sample-Hello-IOS](https://github.com/Microsoft/Loop-Sample-TestUser-IOS) test app to send more test signals and see them updated in this app. This is the same mechanism using test signals that the Loop uses when it creates home & work profiles. 
