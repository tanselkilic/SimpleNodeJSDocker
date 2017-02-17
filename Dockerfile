#nodeJS'nin son sürümünü indir
FROM node:latest 

MAINTAINER tanselkilic@gmail.com

#Linux'de /src/nodeapp klasörünü aç
RUN mkdir -p /src/nodeapp 
#Bu dosyayı çalışma yeri olarak ata
WORKDIR /src/nodeapp 

#Package.json'u açtığımız klasöre kopyala
COPY package.json /src/nodeapp 
#Package.json içerisinde node paketlerini yükle
RUN npm install 
#Projedeki tüm dosyaları klasöre taşı
COPY . /src/nodeapp 

#Bu portu kullarak uygulamayı yayınla
EXPOSE 8182 
#Uygulamayı çalıştırmak için bu komutu kullan
CMD ["node", "server.js"] 