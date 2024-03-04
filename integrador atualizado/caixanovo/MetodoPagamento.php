<!DOCTYPE html>
<html>

<head>
    <title>Métodos de Pagamento</title>
    <link rel="stylesheet" href="./css/MetodoPagento.css">
</head>
<?php
require 'validarcaixa.php';

$somaValores = SomarValores();
$descontoCompra = CalcularDesconto();
?>

<body>
    <div class="container">
        <h2>Escolha o método de pagamento:</h2>
        <form method="post" action="nota.php">
            <p class="centralizarqtdgeral">
                <?php echo "R$ " . $_POST["valor_compra"]; ?>
            </p>
            <input type="hidden" name="valor_compra" value="<?php echo $_POST["valor_compra"]; ?>">
            <input type="hidden" name="id_venda" value="<?php echo $_POST["id_venda"]; ?>">
            <br>
            <input type="radio" id="pix" name="metodo_pagamento" value="Pix">
            <label for="pix">Pix</label><br>
            <input type="radio" id="debito" name="metodo_pagamento" value="Debito">
            <label for="debito">Cartão de Débito</label><br>
            <input type="radio" id="credito" name="metodo_pagamento" value="Credito">
            <label for="credito">Cartão de Crédito</label><br>
            <input type="radio" id="dinheiro" name="metodo_pagamento" value="Dinheiro">
            <label for="dinheiro">Dinheiro</label><br>
            <input class="btn_finalizar txt" type="submit" value="Confirmar Pagamento"> <br>
        </form>

      
    </div>
</body>

</html>
