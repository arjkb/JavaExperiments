<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Register New Student </title>
        <script src ="myscript.js"> </script>
        <link href ="css/mystyle.css" rel = "stylesheet" type="text/stylesheet">
    </head>
    <body>
        <h1 id = "reg_head" > NEW STUDENT REGISTRATION </h1>
        <form name = "regform" action = "regstud_handler.jsp">
            <table id = "reg_table">
                <tr>
                    <td class = "reg_element"> Student ID </td>
                    <td class = "reg_element"> <input type ="text" name ="id" /> </td>
                </tr>                
                <tr>
                    <td class = "reg_element"> Student Name </td>
                    <td class = "reg_element"> <input type ="text" name ="studName" /> </td>
                </tr>
                <tr>
                    <td class = "reg_element"> Password </td>
                    <td class = "reg_element"> <input type ="text" name ="pass1" /> </td>
                </tr>
<!--            <tr>
                    <td class = "reg_element"> Retype </td>
                    <td class = "reg_element"> <input type ="text" name ="pass2" onblur="checkPass()" /> </td>
                </tr>
-->              
                <tr>
                    <td class = "reg_element"> </td>
                    <td class = "reg_element"> <input type ="submit" value = "Register" /> </td>
                </tr>
            </table>
        </form>
        <br />
        <footer>
            <small>
            This is an open-source project             
            <br /> Developed by Arjun Krishna Babu
            <br /> Source code availiable at <a href = "https://github.com/arjunkbabu" target="_blank"> 
                                        https://github.com/arjunkbabu
                                        </a>
            </small>
        </footer>         
    </body>
</html>
