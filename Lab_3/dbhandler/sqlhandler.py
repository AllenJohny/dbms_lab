import mysql.connector
class Mysqlhandler:
  
  def add_user():
   cnx=mysql.connector.connect(user='root',password="march192001",database= 'UserDB')
   cursor=cnx.cursor()
   name=input("enter name: ")
   phone=input("enter phone number: ")
   dob=input("enter dob: ")

   query=("insert into user_data values('%s',%s,'%s')" %(name,phone,dob))

   cursor.execute(query)
   cnx.commit()

  def update_user():
   cnx=mysql.connector.connect(user='root',password="march192001",database= 'UserDB')
   cursor=cnx.cursor()
   name=input("enter name:")
   phone=input("enter new phone number:")
   query=("update user_data set phno=%s where name ='%s'" %(phone,name))

   cursor.execute(query)
   cnx.commit() 

  def delete_user():
   cnx=mysql.connector.connect(user='root',password="march192001",database= 'UserDB')
   cursor=cnx.cursor()
   
   name=input("Enter name for deletion:")
   query=("delete from user_data where name = '%s'"%(name))

   cursor.execute(query)
   cnx.commit()

  def display_users():
   cnx=mysql.connector.connect(user='root',password="march192001",database= 'UserDB')
   cursor=cnx.cursor()

   query=("SELECT * FROM user_data")

   cursor.execute(query)

   myresult = cursor.fetchall()
   for x in myresult:
      print(x)
      return myresult
      
  if __name__=="__main__":
    
   inp=int(input("Adding new user:1 \nUpdating user data:2 \nDeleting a user:3 \nDisplaying all data:4 \n\nSelect input:  "))
   if inp==1 :
    add_user()
   elif inp==2 :
    update_user()
   elif inp==3 :
    delete_user()
   elif inp==4 :
    display_users()
