$(document).ready(function () {
    // Associa le variabili del file XML
    const one = "gap";       // Richiama l'elemento XML associato a "one"
    const two = "del";       // Richiama l'elemento XML associato a "two"
    const tree = "unclear";  // Richiama l'elemento XML associato a "tree"
    

    // Funzione per evidenziare o rimuovere evidenziazioni
    function alternaEvidenziazione(tag, colore) {
        $(tag).each(function () {
            const elemento = $(this);
            if (elemento.css("background-color") === "rgba(0, 0, 0, 0)" || elemento.css("background-color") === "transparent") {
                elemento.css("background-color", colore);
            } else {
                elemento.css("background-color", "transparent");
            }
        });
    }

    // Eventi sui pulsanti
    $("#one").click(function () {
        alternaEvidenziazione(one, "#9fed9fdd");
    });

    $("#two").click(function () {
        alternaEvidenziazione(two, "#FFDAB9");
    });

    $("#tree").click(function () {
        alternaEvidenziazione(tree, "#E6E6FA");
    });
});
