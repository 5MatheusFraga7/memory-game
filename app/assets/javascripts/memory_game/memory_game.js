function rotate_animation(card) {
    card.classList.add("rotated");
    setTimeout(function() { 
        show_name(card);
    }, 1000);
}

function show_name(card) {
    card.classList.add("rotate_show_name");
}