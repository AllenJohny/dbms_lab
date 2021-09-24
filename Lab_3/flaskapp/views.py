from . import app

from dbhandler import Mysqlhandler

@app.route("/user/view",methods=["GET"])
def view_user():
    d1=Mysqlhandler.display_users()
    return str(d1)
   
@app.route("/user/add",methods=["GET","POST"])
def reg_user():
    d2=Mysqlhandler.add_user()
    return "user added"


@app.route("/user/update",methods=["GET","POST"])
def upd_user(): 
   data=Mysqlhandler.update_user()
   return "user updated"

@app.route("/user/delete",methods=["GET","POST"])
def del_user():
   data=Mysqlhandler.delete_user()   
   return "user deleted"
