# README

This app was developed as part of the selection process for the position o Junior Backend Developer at Marley Spoon.

## Running the app

To run the app, follow the following steps:

1. Clone or fork this repository
2. On your terminal, run `bundle install `
3. Run `yarn install`
4. Set your environment variables. In linux:
   ```
   touch .env

   echo -e "CONTENTFUL_SPACE_ID=kk2bw5ojx476 \nCONTENTFUL_ENVIRONMENT_ID=master \nCONTENTFUL_ACCESS_TOKEN=7ac531648a1b5e1dab6c18b0979f822a5aad0fe5f1109829b8a197eb2be4b84c" > .env
   ```
5. Run `rails server`
6. Visit `localhost:3000/` and the app should be running.

## Additional info

The app was made in the suggested time-frame of 3-4 hours. Some things to be improved with more time:

1. More interactive and engaging front end, using a modern framework such as React
2. The logic could be further separated from the controller and views by making good use of classes and modules
3. Better controlling data with local storage and cache, limiting the number of requests to the API
4. Testing could be improved

Thanks for the opportunity. Feedback on this work is greatly appreciated!
