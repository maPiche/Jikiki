
window.onload=function(){

}

function queryClients(){
    $.ajax({
        type: 'POST',
        url: '/displayclient',
        data: {},
        success: function(result) {
            var array=JSON.parse(result)
            displayAllClients(array["result"])
        },
    });
}

function queryItems(){
    $.ajax({
        type: 'POST',
        url: '/displayitems',
        data: {},
        success: function(result) {
            var array=JSON.parse(result)

            displayAllItems(array["result"])
        },
    });
}

function queryWeapons(){
    $.ajax({
        type: 'POST',
        url: '/displayweapons',
        data: {},
        success: function(result) {
            var array=JSON.parse(result)

            displayAllWeapons(array["result"])
        },
    });
}

function queryArmors(){
    $.ajax({
        type: 'POST',
        url: '/displayarmors',
        data: {},
        success: function(result) {
            var array=JSON.parse(result)

            displayAllArmors(array["result"])
        },
    });
}


function queryAnimals(){
    $.ajax({
        type: 'POST',
        url: '/displayanimals',
        data: {},
        success: function(result) {
            var array=JSON.parse(result)

            displayAllAnimals(array["result"])
        },
    });
}

function displayAllClients(array){

    var result="<table><tr><th>ID</th><th>Name</th><th>Village</th></tr>";

    for(var i=0;i<array.length;i++){
        var row="<tr><td>"+array[i].id+"</td><td>"+array[i].name+"</td><td>"+array[i].village+"</td></tr>"
        result+=row;
    }
    result+="</table>";
    $('div.mainTable').html(result);
}

function displayAllWeapons(array){

    var result="<table><tr><th>ID</th><th>Name</th><th>Material</th></tr>";

    for(var i=0;i<array.length;i++){
        var row="<tr><td>"+array[i].id+"</td><td>"+array[i].name+"</td><td>"+array[i].material+"</td></tr>"
        result+=row;
    }
    result+="</table>";
    $('div.mainTable').html(result);
}

function displayAllItems(array){
    var result="<table><tr><th>ID</th><th>Name</th></tr>";
    for(var i=0;i<array.length;i++){
        var row="<tr><td>"+array[i].id+"</td><td>"+array[i].name+"</td></tr>"
        result+=row;
    }
    result+="</table>";
    $('div.mainTable').html(result);
}


function displayAllArmors(array){

    var result="<table><tr><th>ID</th><th>Name</th><th>Type</th><th>Material</th></tr>";

    for(var i=0;i<array.length;i++){
        var row="<tr><td>"+array[i].id+"</td><td>"+array[i].name+"</td><td>"+array[i].type+"</td><td>"+array[i].material+"</td></tr>";
        result+=row;
    }
    result+="</table>";
    $('div.mainTable').html(result);
}

function displayAllAnimals(array){

    var result="<table><tr><th>ID</th><th>Name</th><th>Type</th><th>Sexe</th></tr>";

    for(var i=0;i<array.length;i++){
        var row="<tr><td>"+array[i].id+"</td><td>"+array[i].name+"</td><td>"+array[i].type+"</td><td>"+array[i].sexe+"</td></tr>";
        result+=row;
    }
    result+="</table>";
    $('div.mainTable').html(result);
}
