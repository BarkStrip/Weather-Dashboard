<!DOCTYPE html>
<html>

    <head>
        <title>5-day Forecast</title>
        <link rel = "icon" href = "./images/favicon.ico" type = "image/x-icon">
        <link rel="stylesheet" href="./styles/mystyle.css">
    </head>


    <body style="background-color:lightsteelblue">


        <?php
            $city = $_GET['city'] ?? 'Newark'; 
            $servername = "127.0.0.1";
            $username = "db_user";
            $password = "MyStr0ngP@ssw0rd123!";
            $dbname = "weatherDB";

            // Create connection
            $conn = new mysqli($servername, $username, $password, $dbname);
            // Check connection
            if ($conn->connect_error) {
              die("Connection failed: " . $conn->connect_error);
            }

            $sql = "SELECT period, temperature, short_desc, long_desc FROM $city" ; #SET CUSTOM VALUE
            $result = $conn->query($sql);

            echo
            "
 
             <form> 
              <div class='w3-container'>
                <label for='cities'>Choose your city:</label> 
                <select name='city' id='city' >
                <optgroup label='Cities:'>
                  <option value='Newark'>Newark</option>
                  <option value='Hoboken'>Hoboken</option>
                  <option value='Trenton'>Trenton</option>
                  <option value='Princeton'>Princeton</option>
                  <option value='Belmar'>Belmar</option>
                </optgroup>
                </select>
                <input type='submit'>
              </div>
            </form>
            

            <div class='w3-container'> 
              <h1>
                <img src='./images/weather_cutout.ico' alt='Weather' width='50' height='50'>
                Weather Report in $city, NJ:
              </h1>
            </div>
             
            

             <br></br>
            
             " ;
             
            

            echo "<table border='1'>";
            
            //$favoriteCity = $_POST["city"]; 
            //echo $favoriteCity;

            while($row = $result->fetch_assoc())
            {
            echo "<tr> <th>" . $row['period'] .
                 "</th> </tr> <tr> <td> <link rel = 'icon' href = './images/weather_cutout.ico' type = 'image/x-icon'>
                 " . $row['short_desc'] . " <br> <br> "
                        . $row['temperature'] . " <br> <br> "
                        . $row['long_desc'] . "</td> </tr>";
            }
            echo "</table>";
                  
            $conn->close();

        ?>        
        
    </body>
</html>