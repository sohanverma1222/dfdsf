
 <!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8" />
    <title>Animated Sidebar Menu HTML CSS | CodingNepal</title>
    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href = "frame.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  </head>
  <body>
    <div class="wrapper">
      <input type="checkbox" id="btn" hidden />
      <label for="btn" class="menu-btn">
        <i class="fas fa-bars"></i>
        <i class="fas fa-times"></i>
      </label>
      <nav id="sidebar">
        <div class="title">Side Menu</div>
        <ul class="list-items">
          <li><a href="#" onclick="loadHomeContent()">Home</a></li>
          <li><a href="#" onclick="loadClientsContent()">Clients</a></li>
          <!-- Add more menu items as needed -->
        </ul>
      </nav>
    </div>
    <div class="content" id="main-content" style="display: none;">
      Content will be displayed here
    </div>

    <script>
      function loadHomeContent() {
        var mainContent = document.getElementById("main-content");

        var h2 = document.createElement("h2");
        h2.textContent = "Home Content";
        mainContent.innerHTML = '';
        mainContent.appendChild(h2);

        var table = document.createElement("div");
        table.className = "table";

        var cellNumber = 1;

        for (var i = 1; i <= 2; i++) {
          var row = document.createElement("div");
          row.className = "row";

          for (var j = 1; j <= 4; j++) {
            var cell = document.createElement("div");
            cell.className = "cell";
            var link = document.createElement("a");
            link.href = "#";
            link.className = "number";
            link.textContent = cellNumber++;
            cell.appendChild(link);
            row.appendChild(cell);
          }

          table.appendChild(row);
        }

        mainContent.appendChild(table);

        // Create and append a button
        var button = document.createElement("button");
        button.textContent = "Click Me";
        button.className = "button";
        mainContent.appendChild(button);

        mainContent.style.display = "block";

        // Close the menu by unchecking the checkbox
        var checkbox = document.getElementById("btn");
        checkbox.checked = false;
      }

      function loadClientsContent() {
        var mainContent = document.getElementById("main-content");

        var h2 = document.createElement("h2");
        h2.textContent = "Clients Content";
        mainContent.innerHTML = '';
        mainContent.appendChild(h2);

        var table = document.createElement("div");
        table.className = "table";

        var cellNumber = 1;

        for (var i = 1; i <= 2; i++) {
          var row = document.createElement("div");
          row.className = "row";

          for (var j = 1; j <= 4; j++) {
            var cell = document.createElement("div");
            cell.className = "cell";
            var link = document.createElement("a");
            link.href = "#";
            link.className = "number";
            link.textContent = cellNumber++;
            cell.appendChild(link);
            row.appendChild(cell);
          }

          table.appendChild(row);
        }

        mainContent.appendChild(table);

        // Create and append a button
        var button = document.createElement("button");
        button.textContent = "Click Me";
        button.className = "button";
        mainContent.appendChild(button);

        mainContent.style.display = "block";

        // Close the menu by unchecking the checkbox
        var checkbox = document.getElementById("btn");
        checkbox.checked = false;
      }
    </script>
  </body>
</html>
 