function validate1()
{
    var to=f1.sel1.value;
    var from=f1.sel2.value;
   var date1=f1.date.value;
 if(to=="")
 {
 alert("From field is requried");
 return false;
}
if(from=="")
{
    alert("To field is requried");
 return false;
}


if(date1=="")
 {
  alert("Date field is requried");
  return false;
 }
 if (from==to)
 {
 alert("Both From and To should not be same");
 return false;
  }

  return true;

}