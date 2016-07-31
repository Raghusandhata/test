function validate()
{
    var firstname=f2.st7.value;
    var middlename=f2.st8.value;
    var lastname=f2.st9.value;
    var gender=f2.st16.value;
    var  CardType=f2.st17.value;
    var  Cardholdersname=f2.st10.value;
    var  Cardnumber=f2.st11.value;
    var  Securitycode=f2.st12.value;
    var  addressline1=f2.st13.value;
    var   addressline2=f2.st14.value;
    var  DOGOcode=f2.st15.value;
var numbers = /^[0-9]+$/;


    if(firstname=="")
    {
        alert("Firstname is Requried");
        return false;
        }

        if(middlename=="")
    {
        alert("Middlename is Requried");
        return false;
        }



if(gender=="")
{alert("Gender is Requried");
  return false;
 }

if(CardType=="")
{alert("CardType is Requried");
  return false;
 }

if( Cardholdersname=="")
{alert(" Cardholdersname is Requried");
  return false;
 }
if(addressline2=="")
{
    alert("addressline2 is Requried");
  return false;
 }
if(addressline1=="")
{alert("Addressline1 is Requried");
  return false;
 }
if(DOGOcode=="")
{alert("DOGOcode is Requried");
  return false;
 }
if( Cardnumber=="")
{alert("Cardnumber is Requried");
  return false;
 }


if(Securitycode=="")
{alert("Securitycode is Requried");
  return false;
 }



if( Cardnumber.match(numbers)&&Securitycode.match(numbers))
{
return true;
}
else{
 alert("Cardnumber/Securitycode must be numeric");
 return false;
}


return true;

}