<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cadastrar Produto</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #007bff;
            background-size: cover;
            background-attachment: fixed;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        h2 {
            margin-top: 0;
            color: #333;
        }

        label {
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        select,
        textarea {
            width: calc(100% - 12px);
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="file"] {
            margin-bottom: 10px;
        }

        select {
            width: 100%;
        }

        .button {
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .button.blue {
            background-color: #007bff;
            color: #fff;
        }

        .button.red {
            background-color: #dc3545;
            color: #fff;
        }

        .produto-info {
            display: flex;
            align-items: flex-start;
            margin-bottom: 20px;

        }

        .produto-info img {
            width: 300px;
            margin-right: 20px;

        }

        .alerta {
            background-color: #f2dede;
            color: #a94442;
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid #ebccd1;
            border-radius: 4px;
            display: none;
        }

        select#categoria {
            width: 100%;
        }
    </style>
</head>

<body>
    <div class="container">
        <h2>Cadastrar Novo Produto</h2>
        <form id="cadastroForm" method="post" action="recebe-ProdutoCadastrado.php">

            <div class="produto-info">
                <img id="imagem-preview" src="placeholder.jpg" alt="Imagem do Produto">
                <div class="descricao">
                    <label for="codigo_barras">Código de Barras:</label>
                    <input type="text" id="codigo_barras" name="codigo_barras" required><br>
                    <label for="nome">Nome:</label>
                    <input type="text" id="nome" name="nome" required><br>
                    <label for="fornecedor">Fornecedor:</label>
                    <input type="text" id="fornecedor" name="fornecedor" required><br>
                    <label for="descricao">Descrição:</label>
                    <input type="text" id="descricao" name="descricao" required><br>
                    <label for="categoria">Categoria:</label>
                    <select id="categoria" name="categoria" required>
                        <option value="">Selecione...</option>
                        <option value="Frios">Frios</option>
                        <option value="Bebida">Bebida</option>
                        <option value="Alimentos">Alimentos</option>
                        <option value="Higiene Pessoal">Higiene Pessoal</option>
                        <option value="Limpeza">Limpeza</option>
                        <option value="Lavanderia">Lavanderia</option>
                        <option value="Saúde e Bem-Estar">Saúde e Bem-Estar</option>
                        <option value="Cuidados com o Lar">Cuidados com o Lar</option>
                        <option value="Frutas e Legumes">Frutas e Legumes</option>
                    </select><br>
                </div>
            </div>
            <label for="imagem">Imagem:</label>
            <input type="file" id="imagem" name="imagem" accept="image/*" onchange="previewImagem(event)"><br>
            <label for="estoque">Estoque:</label>
            <input type="text" id="estoque" name="estoque" required><br>
            <label for="peso">Peso (em quilos ou litros):</label>
            <input type="text" id="peso" name="peso" required><br>
            <label for="valor">Valor:</label>
            <input type="text" id="valor" name="valor" required><br>
            <label for="validade">Validade:</label><br>
            <input type="date" id="validade" name="validade" required><br><br>
            <label for="codigo_fiscal">Código Fiscal:</label>
            <input type="text" id="codigo_fiscal" name="codigo_fiscal" required><br>
            <button type="submit" class="button blue">Cadastrar</button>
            <button type="button" class="button red" onclick="window.location.href='Editar-Cadastrar.php'">Sair</button>
        </form>
    </div>

    <div id="alertaSucesso" class="alerta">
        Produto cadastrado com sucesso!
    </div>

    <div id="alertaDuplicado" class="alerta">
        O código de barras inserido já está em uso para outro produto.
    </div>

    <script>
        function exibirAlertaSucesso() {
            var alerta = document.getElementById("alertaSucesso");
            alerta.style.display = 'block';
            setTimeout(function() {
                alerta.style.display = 'none';
            }, 3000);
        }

        function exibirAlertaDuplicado() {
            var alerta = document.getElementById("alertaDuplicado");
            alerta.style.display = 'block';
            setTimeout(function() {
                alerta.style.display = 'none';
            }, 3000);
        }

        function previewImagem(event) {
            var imagemPreview = document.getElementById('imagem-preview');
            imagemPreview.src = URL.createObjectURL(event.target.files[0]);
        }
    </script>

    <script>
        document.getElementById('cadastroForm').addEventListener('submit', function(event) {
            event.preventDefault();

            var formData = new FormData(this);

            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'recebe-ProdutoCadastrado.php', true);
            xhr.onload = function() {
                if (xhr.status >= 200 && xhr.status < 300) {
                    var response = JSON.parse(xhr.responseText);
                    if (response.error === "Código de barras duplicado") {
                        exibirAlertaDuplicado();
                    } else if (response.success === "Produto cadastrado com sucesso") {
                        exibirAlertaSucesso();
                        document.getElementById('cadastroForm').reset();
                    }
                }
            };
            xhr.send(formData);
        });
    </script>
</body>

</html>