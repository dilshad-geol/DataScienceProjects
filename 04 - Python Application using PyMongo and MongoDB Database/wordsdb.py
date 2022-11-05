import pymongo as pm #import pymongo module
import datetime
# create a file handle
fh = open('04 - Python Application using PyMongo and MongoDB Database/Vocabulary_set.csv', 'r')
wd_list = fh.readlines()#readlines from file
#remove header form the file
wd_list.pop(0)

#create empty list
vocab_list= []
#run a for loop to iterate through the each line
for rawstring in wd_list:
    word, definition = rawstring.split(',', 1) #specifying a delimiter
    definition = definition.rstrip()
    vocab_list.append({'word':word, 'definition': definition}) # appending the word and definition to empty list
    
# print(vocab_list)


client = pm.MongoClient('mongodb://localhost:27017/') #setting client
db = client['vocab']
# check if data base exists

dbs = client.list_database_names()
vocab_col = db['vocab_list']
vocab_dict = {'word':'cryptic', 'definition':'Secret with a hidden meaning'}
res = vocab_col.insert_one(vocab_dict) # checking to add single document
# print('inserted id:', res.inserted_id)
if 'vocab' in dbs:
    print('Database Exists.')

res = vocab_col.insert_many(vocab_list)# checking to add multiple document
# print('inserted id:', res.inserted_ids) # inserted ids for all documents in database

# get first query
data = vocab_col.find_one()
print(data)

# print entire collection uncomment to get along with _id
# for data in vocab_col.find({}):
#     print(data)
for data in vocab_col.find({}, {'_id':0, 'definition':0}): #excluded id and retrieve only word and definition
    print(data)
    
data = vocab_col.find_one({'word':'boisterous'})  # getting specific word from the database
print(data)
#update documents  
upd = vocab_col.update_one({'word':'boisterous'}, {'$set': {'definition':'rowdy; noisy'}})
print('modified count', upd.modified_count)

data = vocab_col.find_one({'word':'boisterous'})  # checking boisterous updated meaning
print(data)

# update whole database
upd = vocab_col.update_many({filter}, {'$set': {'last_updated UTC:': datetime.datetime.utcnow().strftime('%Y-%m-%d%H%M%SZ')}})
print('modified count', upd.modified_count)

