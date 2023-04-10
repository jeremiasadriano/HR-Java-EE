const data = (Date = new Date());
const tableMain = document.getElementById("tableMain");
const btnShowHide = document.getElementById("ocultar");

// Inserir data e hora
document.getElementById("data").textContent +=
    data.getDate() + "/" + (data.getMonth() + 1) + "/" + data.getFullYear();

document.getElementById("hora").textContent +=
    data.getHours() + ":" + data.getMinutes() + ":" + data.getSeconds();

// Mostra e ocultar tabela
const hideTable = () => {
    tableMain.style.display = "none";
    btnShowHide.value = "Mostrar";
    document.getElementById("eyes").className = "fa-solid fa-eye";
};
const showTable = () => {
    tableMain.style.display = "block";
    btnShowHide.value = "Ocultar";
    document.getElementById("eyes").className = "fa-solid fa-eye-slash";
};
const show_hide = () => {
    if (tableMain.style.display == "none") {
        showTable();
    } else {
        hideTable();
    }
};

