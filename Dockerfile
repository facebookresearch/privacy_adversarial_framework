# Build stage
FROM node:18 as build

ENV NODE_OPTIONS=--openssl-legacy-provider

RUN apt-get update --fix-missing && apt-get install -y jq 

WORKDIR /src

RUN git clone https://github.com/mitre-attack/attack-navigator.git .

WORKDIR /src/nav-app

RUN git fetch --tags && git checkout v4.8.2

# give user permissions
RUN chown -R node:node ./

COPY ./paf_navigator.json src/assets/paf_navigator.json

RUN jq '.versions[0].domains += [{ \                                                                                                                                                          
    "name": "Privacy Adversarial Framework (PAF)", \
    "identifier": "paf", \
    "data": ["assets/paf_navigator.json"] \
    }]' src/assets/config.json > src/assets/config.json.tmp && mv -f src/assets/config.json.tmp src/assets/config.json

# install packages and build 
RUN npm install --unsafe-perm 

RUN npm install --force -g @angular/cli@11

RUN mkdir /output && ng build --outputPath=/output

FROM nginx:1.25.1-alpine
COPY --from=build /output /usr/share/nginx/html