/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function setLink()  {
    var logintype = document.loginform.usertype.value;
    var formhandle = document.loginform;
    
    if( logintype == "admin")    {
        formhandle.action = "adminsheet.jsp";
    } else if( logintype == "stud" ) {
        formhandle.action = "studsheet.jsp";        
    }
    
    formhandle.submit();

}