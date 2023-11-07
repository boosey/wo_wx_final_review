Steps to build:
1. Install Flutter
2. Run flutter pub get
3. Run flutter clean
4. Run flutter build web
5. The contents of the build/web directory can be deployed to the html folder on nginx or any other web server

Deploying to IBM Code Engine
1. Push to Git (/build/ has been removed from the gitignore)
2. Build the image with Docker/Podman and push to an external repository (i.e. Dockerhub, quay.io, etc...)
   a. `docker buildx build --platform linux/amd64 --push -t <username>/<imagename>(:<tag> - optional)`
4. Create a new Project in Code Engine
5. Create a new Application in Code Engine
6. Give your Application a Title
7. Configure to build the code from a container image
8. Select Configure Image and enter the configuration information
   a. Registry Server - https://index.docker.io/v1/ (if using Dockerhub)
   b. Registry Access Secret - None if the image is public
   c. Namespace - <username> from step 2a
   d. Repository - <imagename> from step 2a
   e. Tag - <tag> from step 2a (only needed if provided when building the image)
9. Change Min Number of Instances to 1 to allow the application to be permanently available
10. Under Image Start Options, set the Port to 80
11. Click the Blue Create Button to run your container
   
Updating
1. As far as I can tell to make the app config pull a new push from the repo, you have to create a new revision of the config but I am not sure.
