# This program upload image to imgur.com and output its URL to clipboard,
#### Upload history will be stored in ~/.imgur_history.

## Install:
--------
`./install.sh`


## Uninstall:
----------
`./uninstall.sh`

## For GUI:
---------
You can find the option in context menu in dolphin window manager.
![demo](https://i.imgur.com/o1TAINf.png)

## For CLI:
--------
The command is: 'imgur \<Image-URL\>' . For more `imgur -h|--help`

**The URL of the uploded image will be copied in the clipboard. You can access the history of the clipboard in kde via \<SuperKey\> + \<v\>.**

## For Using your Own Account to upload Image:
1. You must have a imgur account.If not then create your account at [Imgur](http://imgur.com/).
2. Go to [Oauth2](https://api.imgur.com/oauth2/addclient)
> Enter Application name\
> Choose OAuth 2 authorization without callback URL option\
> Enter your Email id\
> And then some description\
> Tick the I'm not a robot option\
> Finally click submit.\

3. Now you will get a client_id and client_secret
4. Pate this link https://api.imgur.com/oauth2/authorize?client_id={CLIENT_ID}&response_type=token in your favourite Editor and 
        Replace the {CLIENT_ID} with your client id and enter it in the browser.
5. Then Click allow to access your data.
6. Don't close the tab yet.Look carefully at your browser search field. imgur.com/#access_token=XXXXXXXXXXXXXXXXXXXXXXXXXXx&expires_in=
7. Now copy the access_token which is the bearer token which is use to access our api from now on. don't loose it otherwise you have to authorise again and have to repeat from Step 4  and you dont want to do that.
8. Now paste the access_token inside the config file i.e $HOME/.config/imgur/config
      Which looks like {"token":"XXXXXXXXXXXXXXXXXXXXXx"}

**You can manage your api application via [App](https://imgur.com/account/settings/apps)**\
Now The image will be uploaded to your imgur account.\
**For more info You can read the official documentation:[Imgur API](https://api.imgur.com/)**
