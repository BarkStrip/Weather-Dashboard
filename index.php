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



            // ------------------------- update_city.sh block -----------------------|
            // This checks if the weather data for the selected city is stale        |
            // To switch to batch updates (all cities), delete this block (lns 30-57)|
            // and run weather.sh instead.                                           |
            
            // Check if data is stale and fetch fresh data if needed
            $timestamp_query = "SELECT UPDATE_TIME FROM information_schema.tables 
            WHERE table_schema = 'weatherDB' AND table_name = '$city'";
            $timestamp_result = $conn->query($timestamp_query);
            $needs_update = true;


            if ($timestamp_result) {
                $row = $timestamp_result->fetch_assoc();
                if ($row && $row['UPDATE_TIME'] !== null) {
                    $last_update = strtotime($row['UPDATE_TIME']);
                    $needs_update = (time() - $last_update) > 3600; // 1 hour
                } else {
                    // Handle the case where UPDATE_TIME is null (e.g., treat as stale)
                    $needs_update = true;
                }
            }

            if ($needs_update) {
              exec("cd scripts && ./update_city.sh $city");
            }
            //                                                                       |
            // ______________________________________________________________________|

            $sql = "SELECT period, temperature, short_desc, long_desc FROM $city" ; #SET CUSTOM VALUE
            $result = $conn->query($sql);

            echo
            "
 
             <form> 
              <div class='w3-container'>
                <label for='cities'>Choose your city:</label> 
                <select name='city' id='city' >
                <optgroup label='Cities:'>
                  <option value='Newark'" . ($city == 'Newark' ? ' selected="selected"' : '') . ">Newark</option>
                  <option value='Hoboken'" . ($city == 'Hoboken' ? ' selected="selected"' : '') . ">Hoboken</option>
                  <option value='Trenton'" . ($city == 'Trenton' ? ' selected="selected"' : '') . ">Trenton</option>
                  <option value='Princeton'" . ($city == 'Princeton' ? ' selected="selected"' : '') . ">Princeton</option>
                  <option value='Belmar'" . ($city == 'Belmar' ? ' selected="selected"' : '') . ">Belmar</option>
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