Steps to build:
1. Install Flutter
2. Run flutter pub get
3. Run flutter clean
4. Run flutter build web
5. The contents of the build/web directory can be deployed to the html folder on nginx or any other web server

Deploying to IBM Code Engine
1. Push to Git (/build/ has been removed from the gitignore)
2. Create a new Project in Code Engine
3. Create a new Application in Code Engine
4. Configure to build from source enter repo link
5. Select Dockerfile as the build file (it will copy the build/web directory to the html directory while building the image)

Updating
1. As far as I can tell to make the app config pull a new push from the repo, you have to create a new revision of the config but I am not sure.