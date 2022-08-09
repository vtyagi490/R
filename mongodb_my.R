#installing mongoDb client library

#library(devtools)
#install_github(repo = "mongosoup/rmongodb")
# or 
install_github("tc/RMongo")


# connect
library(rmongodb)

#connect to mongodb
channel = mongo.create( host = "localhost")

mongo.is.connected(channel)

# what is in mongodb
mongo.get.databases(channel, db = 'Edwisor)

mongo.get.database.collections(channel, db= 'germenCred')
library(rmongodb)

channel = mongo.connect('Edwisor' , 'localhist', 27017)
