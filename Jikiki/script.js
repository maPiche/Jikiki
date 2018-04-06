
window.onload=function(){
   queryItems();
}

function queryClients(){
    $.ajax({
        type: 'POST',
        url: '/displayclients',
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
        url: '/displayAllItems',
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
function queryOffers(){
    $.ajax({
        type: 'POST',
        url: '/displayoffers',
        data: {},
        success: function(result) {
            var array=JSON.parse(result)
            displayOffers(array["result"])
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
    var result="<table><tr><th>Name</th><th>UnitPrice</th><th>Village</th></tr>";
    for(var i=0;i<array.length;i++){
        var row="<tr><td>"+array[i].name+"</td><td>"+array[i].unitprice+"</td><td>"+array[i].village+"</td></tr>"
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

function displayOffers(array){
    var result="<table><tr><th>ID</th><th>Item Id</th><th>Client ID</th><th>Quantity</th><th>Available</th><th>Unit Price</th><th>Description</th></tr>";
    for(var i=0;i<array.length;i++){
        var row="<tr><td>"+array[i].id+"</td><td>"+array[i].itemid+"</td><td>"+array[i].clientid+"</td><td>"+array[i].quantity+"</td><td>"+array[i].available
        +"</td><td>"+array[i].unitprice+"</td><td>"+array[i].description+"</td></tr>";
        result+=row;
    }
    result+="</table>";
    $('div.mainTable').html(result);
}