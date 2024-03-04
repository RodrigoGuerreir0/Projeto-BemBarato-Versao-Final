<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/cadastro.css">
    <title>Document</title>
</head>

<body>

    <div class="fudo-login">
        <div class="divisorias1">
            <div class="fundo-logo__main">
                <div class="fundo-logo">
                    <img class="logoMercado" src="./img/logo.png" alt="Logo Do Mercado">
                </div>
            </div>
        </div>
        <div class="divisorias2">
            <div class="separacao-fundo1">
                <p class="txt-Permissao">PERMISSÃO</p>
                <p class="txt-funcao">PERMISSÃO PARA (CAIXA).</p>
                <?php
                if (isset($_GET['mensagemErrada'])) {
                    echo '<h3 class="text-center mb-4">Usuario cadastrado</h3>';
                }
                if (isset($_GET['mensagemCerta'])) {
                    echo '<h3 class="text-center mb-4">Algo deu erro em nosso sistema. Tente Novamente...</h3>';
                }
                ?>
            </div>
            <div class="separacao-fundo3">
                <form method="POST" action="verificacadastro.php">
                    <div class="espacamento">
                        <div class="">
                            <label for="usuario">Nome do Funcionario:</label>
                            <input type="text" class="input txt" id="nome" name="nome" placeholder="Digite o nome do Funcionario" required>
                        </div>
                        <div class="">
                            <label for="senha">N° de Matricula:</label>
                            <input type="text" class="input txt" id="matricula" name="matricula" placeholder="Digite o numero de Matricula" required>
                        </div>
                        <div class="">
                            <label for="usuario">Email:</label>
                            <input type="text" class="input txt" id="email" name="email" placeholder="Digite o seu e-mail" required>
                        </div>
                        <div class="">
                            <label for="usuario">Cpf:</label>
                            <input type="text" class="input txt" id="cpf" name="cpf" placeholder="Digite o cpf" required>
                        </div>
                        <div class="">
                            <label for="usuario">Usuário:</label>
                            <input type="text" class="input txt" id="usuario" name="usuario" placeholder="Digite o Usuário" required>
                        </div>
                        <div class="">
                            <label for="senha">Senha:</label>
                            <div style="position: relative;">
                                <input type="password" class="input txt" id="senha" name="senha" placeholder="Digite a senha" maxlength="30" required>
                                <span class="password-icon" onclick="togglePasswordVisibility()">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                                        <path d="M0 0h24v24H0z" fill="none" />
                                        <path d="M12 3C6.48 3 2 7.48 2 13s4.48 10 10 10 10-4.48 10-10S17.52 3 12 3zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm0-14c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z" />
                                    </svg>
                                </span>
                            </div>
                        </div>
                        <div class="">
                            <label for="usuario">Telefone:</label>
                            <input type="text" class="input txt" id="telefone" name="telefone" placeholder="Digite o telefone" required>
                        </div>

                    </div>
            </div>
            <div class="separacao-fundo4">
                <div class="botoes">
                    <button type="submit" class="btn btn-primary" onclick="validarEmail()">Cadastrar Usuario</button>
                </div>
            </div>
            </form>
        </div>
    </div>
</body>
<script src="./script/cadastro.js"></script>

</html>