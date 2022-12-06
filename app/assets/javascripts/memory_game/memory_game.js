function rotate_animation(card) {
    card.classList.add("rotated");
    setTimeout(function() { 
        show_name(card);
    }, 1000);
}

function show_name(card) {
    card.innerHTML = '';
    card.classList.add("rotate_show_name");

    setTimeout(function() { 
        card.classList.remove("rotated"); 
        card.classList.remove("rotate_show_name");
        add_name_in_card(card);
    }, 100);

}

function add_name_in_card(card) {
    
    $.ajax("/get_name_of_character.json?card_id="+card.id)
    .done(function(data) {
        card.innerHTML = data.name;
    })
    .fail(function() {
      alert( "error" );
    });
}