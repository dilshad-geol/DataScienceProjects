import pymongo as pm

# form the database connection
conn = pm.Mongoclient("mongodb://localhost:27017/")
db =conn["pets"]
#task 2 Create Collection
pet_col = db["pet_col"]
pet = {'name': 'bob', 'breed': 'hound mix' }
res - pet_col.insert_one(pet)
print("inserted id", res.inserted_id)