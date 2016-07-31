function validate1()
{

    var user1=f3.user.value;
      var password=f3.pwd.value;

if(user1=="")
{
  alert("username is requried");
  return false;
 }

if(password=="")
{
   alert("password is requried");
  return false;
 }
return true;

}


