/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function checkPass()    {
    //function to ensure that password and retype fields do infact
    //contain the same passwords
    
    var pass1 = document.regform.pass1.value;
    var pass2 = document.regform.pass2.value;
    
    if(pass1 === pass2)  {
        console.log("Identical passwords");
    } else {
        console.log("Different passwords");
    }
}

function setLink()  {
    var logintype = document.loginform.usertype.value;
    var formhandle = document.loginform;
    
    if( logintype === "admin")    {
        formhandle.action = "adminsheet.jsp";
    } else if( logintype === "stud" ) {
        formhandle.action = "studsheet.jsp";        
    }
    
    formhandle.submit();
}