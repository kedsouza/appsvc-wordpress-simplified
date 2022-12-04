# WordPress App Service Simplified

## Get Started

This repo contains a repo of a custom docker image based of the official wordpress image, built and ready to be deployed to Azure App Service. Deploying via the below botton will also create an Azure MySQL Flexible Server. 

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fwordpressimplified.blob.core.windows.net%2Fapp-svc-wordpress-simplified-json%2Fmain.json)

## Use Cases
This project is designed to help small business sites or personal projects using wordpress be quickly deployed to Azure App Service. The out of the box preformance for the site and the wp-admin page should be comparable to other hosting solutions.

For customers looking for a more enterprise grade solution with virtual network intergration, redis plugins, seemless Azure CDN  intergration for wordpress on app services please refer to this offering offically maintained by the Microsoft Azure Product Group.

https://learn.microsoft.com/en-us/azure/app-service/quickstart-wordpress 

## Reasoning behind this repo. 
- The offical app service wordpress offering forces creating of a Azure Virtual Network with the MySQLResource being behind a private endpoint. This can be intimidating for new users using Azure to understand and maintain this setup. This this setup will improve the simplicity as opposed to using the offical App Service WordPress Offering, by creating the bare minimal Azure Resrouces (App Service / MySQL Server) to have your site functional on Azure. 
-  This image is based of the offical wordpress image from dockerhub: https://hub.docker.com/_/wordpress. The changes to the official image are designed to be minimal in order to stick closer to the original image from wordpress. All changes are commented in the repo files. You can find the built image on dockerhub using the following link: https://hub.docker.com/r/keegan15/appsvcwordpresssimple/tags

## Limitations / Disclaimer
- The size of your Wordpress Content plus the image must be under 15GB, per app service plan, this cannot be modified. You can check the usage percentage by naviagating to your *App Service on the Azure Portal -> Diagnose and Solve Problems -> Searching for "Linux - Host Disk Space Usage"*.  
- This is a personal project and not officially supported by the Microsoft Azure App Service Product Group. Feel free to post create issues on this repo however support will be provided on a *best effort basis*.







