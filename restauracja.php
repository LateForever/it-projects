<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="style.css" />
    <title>Document</title>
  </head>
  <body>
    <div class="maincontainer">
      <header class="pageheader">
        <h1 class="title">Witamy w restauracji "Wszystkie Smaki"</h1>
      </header>
      <div class="uppercontainer">
        <div class="leftcontainer">
          <img
            src="./makaroni-po-flotski-makaron-w-stylu-marynistycznym-z-miesem-mielonym-na-talerzu-na-drewnianym-stole_286393-767.jpg"
          />
        </div>
        <div class="rightcontainer">
          <div class="rightcontainer-box">
            <h2>U nas dobrze zjesz</h2>
            <ol>
            <?php
            $connection = mysqli_connect('localhost', 'root', '', 'baza');
            if($connection === false) {
                die("ERROR: Could not connect. " . mysqli_connect_error());
            }

            $sql = "SELECT * FROM dania GROUP BY cena DESC LIMIT 3";
            $result = mysqli_query($connection, $sql);

            if ($result->num_rows > 0) {
              while ($row = $result->fetch_assoc()) {
                echo "<li>" . $row["nazwa"] . " - " . $row["cena"] . " zł</li>";
              } 
            } else {
              echo "0 results";
            }
            mysqli_close($connection);
            ?>
            </ol>
          </div>
        </div>
      </div>
      <div class="bottomcontainer">
        <div class="formcontainer">
          <div class="form">
            <h2>Zarezerwuj stolik on-line</h2>
            <form action="./rezerwacja.php" class="middle-form" method="post">
              <p>Data (format rrrr-mm-dd):</p>
              <input type="text" name="date" />
              <p>Ile osób?:</p>
              <input type="text" name="howManyPersons" />
              <p>Twój numer telefonu:</p>
              <input type="text" name="phoneNumber" />
              <div class="checkboxcontainer">
                <input type="checkbox" />
                <p>Zgadzam się na przetwarzanie moich danych osobowych</p>
              </div>
              <div class="buttonscontainer">
                <input type="reset" class="button"></input>
                <input class="button" type="submit"></input>
              </div>
            </form>
          </div>
        </div>
        <footer class="footer">
          <div class="footercontainer">
            <h2 class="footertext">Stronę internetową opracował: 000000000</h2>
          </div>
        </footer>
      </div>
    </div>
  </body>
</html>
