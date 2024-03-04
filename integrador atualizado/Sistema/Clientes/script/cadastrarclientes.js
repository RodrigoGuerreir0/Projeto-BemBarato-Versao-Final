function validarCPF() {
    var cpf = document.getElementById('cpf').value;
    var regex = /^\d{3}\.\d{3}\.\d{3}-\d{2}$/;

    if (!regex.test(cpf)) {
        alert('Por favor, insira um CPF válido.');
        return false;
    }

    var cpfNumeros = cpf.replace(/\D/g, '');
    var cpfSemDigitos = cpfNumeros.substring(0, 9);
    var cpfDigitos = cpfNumeros.substring(9, 11);

    var soma = 0;
    for (var i = 10; i > 1; i--) {
        soma += cpfSemDigitos.charAt(10 - i) * i;
    }

    var resto = (soma * 10) % 11;
    if (resto === 10 || resto === 11) {
        resto = 0;
    }

    if (resto !== parseInt(cpfDigitos.charAt(0))) {
        alert('Por favor, insira um CPF válido.');
        return false;
    }

    soma = 0;
    for (var i = 11; i > 1; i--) {
        soma += cpfSemDigitos.charAt(11 - i) * i;
    }

    resto = (soma * 10) % 11;
    if (resto === 10 || resto === 11) {
        resto = 0;
    }

    if (resto !== parseInt(cpfDigitos.charAt(1))) {
        alert('Por favor, insira um CPF válido.');
        return false;
    }

    alert('CPF válido: ' + cpf);
    return true;
}

document.getElementById('cpf').addEventListener('input', function (event) {
    var cpf = event.target.value.replace(/\D/g, '');
    var formattedCPF = '';

    if (cpf.length > 0) {
        formattedCPF = cpf.substring(0, 3);
    }
    if (cpf.length > 3) {
        formattedCPF += '.' + cpf.substring(3, 6);
    }
    if (cpf.length > 6) {
        formattedCPF += '.' + cpf.substring(6, 9);
    }
    if (cpf.length > 9) {
        formattedCPF += '-' + cpf.substring(9, 11);
    }

    event.target.value = formattedCPF;
});

document.getElementById('cpf').addEventListener('keydown', function (event) {
    var key = event.key;

    if (isNaN(key) && key !== 'Backspace' && key !== 'Delete') {
        event.preventDefault();
    }
});

function validarTelefone() {
    var telefone = document.getElementById('telefone').value;
    var regex = /^\(\d{2}\) \d{5}-\d{4}$/;

    if (!regex.test(telefone)) {
        return false;
    }

    return true;
}

document.getElementById('telefone').addEventListener('input', function (event) {
    var telefone = event.target.value.replace(/\D/g, '');
    var formattedTelefone = '';

    if (telefone.length > 0) {
        formattedTelefone = '(' + telefone.substring(0, 2);
    }
    if (telefone.length > 2) {
        formattedTelefone += ') ' + telefone.substring(2, 7);
    }
    if (telefone.length > 7) {
        formattedTelefone += '-' + telefone.substring(7, 11);
    }

    event.target.value = formattedTelefone;
});

function validarEmail() {
    var email = document.getElementById('email').value;
    var regex = /\S+@\S+/;

    if (email === '' || !regex.test(email)) {
        return false;
    }

    return true;
}

function validarCEP() {
    var cep = document.getElementById('cep').value;
    var regex = /^\d{5}-\d{3}$/;

    if (!regex.test(cep)) {
        alert('Por favor, insira um CEP válido.');
        return false;
    }

    alert('CEP válido: ' + cep);
    return true;
}

document.getElementById('cep').addEventListener('input', function (event) {
    var cep = event.target.value.replace(/\D/g, '');
    var formattedCEP = '';

    if (cep.length > 0) {
        formattedCEP = cep.substring(0, 5);
    }
    if (cep.length > 5) {
        formattedCEP += '-' + cep.substring(5, 8);
    }

    event.target.value = formattedCEP;
});

document.getElementById('cep').addEventListener('keydown', function (event) {
    var key = event.key;

    if (isNaN(key) && key !== 'Backspace' && key !== 'Delete' && key !== '-') {
        event.preventDefault();
    }
});