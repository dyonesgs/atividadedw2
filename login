<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="style.css">
  <title>Login</title>
</head>

<body>
  <header>
    <div class="logo">
    <a href="login.html"><img src="img/SiegFried.png" alt="Logo do Site"> </a>
    </div>
    <nav>
      <a href="login.html">Login</a>
      <a href="cadastro.html">Cadastrar</a>
    </nav>
    <img src="img/Superior_Sistemas_Internet2O22 (2).png" alt="Logo do curso"> 
  </header>
  <div class="container">
    <img src="img/senha.png" alt="senha">
    <h1>Login</h1>
    <form action="login.php" method="post" onsubmit="return validatePassword()">
      <label for="email">Email:</label><br>
      <input type="email" id="email" name="email"><br>
      <div class="checkbox-container">
        <input type="checkbox" id="remember_me" name="remember_me">
        <label for="remember_me">Lembrar minha senha</label>
      </div>
      <label for="password">Senha:</label><br>
      <input type="password" id="password" name="password"><br><br>
      
      <input type="submit" value="Login">
    </form>
    <p>Não tem uma conta?</p>
    <p> <a href="cadastro.html">Cadastre-se aqui</a>.</p>
  </div>
  <footer>
    SiegFried System 2023 Copyright₢ 2023
  </footer>
  <script>
    function validatePassword() {
      var password = document.getElementById("password").value;
      var uppercase = /[A-Z]/;
      var number = /[0-9]/;
      var special = /[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]/;
      if (!uppercase.test(password) || !number.test(password) || !special.test(password)) {
        alert("A senha deve conter pelo menos uma letra maiúscula, um número e um caractere especial.");
        return false;
      }
      return true;
    }
  </script>
</body>

</html>
