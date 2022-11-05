import pymongo as pm

# form the database connection
conn = pm.MongoClient("mongodb://localhost:27917/")
db = conn["users"]
#task 2 Create Collection
user_col = db["users_col]"]
user = {'user': 'Dilshad', 'startdate': '01222022', 'enddate' : '02122022' }
res = user_col.insert_one(user)
user2 ={ 'user': 'Awais', 'startdate': '11102020', 'enddate': '12132022'}
res2 = user_col.insert_one(user2)
print("inserted id :", res.inserted_id)
data = user_col.find_one({'user':'Dilshad'})
print(data)