<!DOCTYPE html>
<html lang="pl">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./styl_1.css" />
    <title>Wędkowanie</title>
  </head>
  <body>
    <header class="header">
      <h1 class="header-title">Portal dla wędkarzy</h1>
    </header>
    <div class="content">
      <div class="left-container">
        <div class="left1">
          <h3>Ryby zamieszkujące rzeki</h3>
          <ol>
            <?php 
              $link = mysqli_connect("localhost", "root", "", "wedkowanie");

              if ($link === false) {
                die(mysqli_connect_error());
              }

              $sql_query = "SELECT ryby.nazwa, lowisko.akwen, lowisko.wojewodztwo FROM ryby LEFT JOIN lowisko ON lowisko.Ryby_id = ryby.id WHERE lowisko.rodzaj = 3";

              if ($response = mysqli_query($link, $sql_query)) {
                if (mysqli_num_rows($response) > 0) {
                  while ($row = mysqli_fetch_array($response)) {
                    echo "<li>" . $row['nazwa'] . " pływa w " . $row['akwen'] . ", " . $row['wojewodztwo'] . "</li>";
                  }
                }
              }

              mysqli_close($link);
            ?>
          </ol>
        </div>
        <div class="left2">
          <h3>Ryby drapieżne naszych wód</h3>
          <table>
            <tr>
              <td>L.p.</td>
              <td>Gatunek</td>
              <td>Występowanie</td>
            </tr>
            <?php 
              $link = mysqli_connect("localhost", "root", "", "wedkowanie");

              if ($link === false) {
                die(mysqli_connect_error());
              }

              $sql_query = "SELECT id, nazwa, wystepowanie FROM ryby WHERE style_zycia = 1";

              if ($response = mysqli_query($link, $sql_query)) {
                if (mysqli_num_rows($response) > 0) {
                  while($row = mysqli_fetch_array($response)) {
                    echo "<tr><td>" . $row["id"] . "</td><td>" . $row["nazwa"] . "</td><td>" . $row["wystepowanie"] . "</td></tr>";
                  }
                }
              }

              mysqli_close($link);
            ?>
          </table>
        </div>
      </div>
      <div class="right">
        <div class="right-image">
          <img src="./ryba1.jpg" alt="Sum" height="400px" id="img" />
        </div>
        <a href="./kwerendy.txt">Pobierz kwerendy</a>
      </div>
    </div>
    <footer class="footer">
      <p class="footer-paragraph">Stronę wykonał: 67122158198</p>
    </footer>
  </body>
</html>
