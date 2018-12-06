// Wczytuje domyślny komponent - terminarz spotkań
window.onload = function() {

    var url = "/e-dziennik/meetings"; // Linki do komponentów zaczynają się od "/e-dziennik/"
    loadComponentByUrl(url);
};

// Przykład wczytywania komponentu
function loadComponentByUrl(url) {
    $('#content').load(url);
}

