
window.onload=function(){
    $.ajax({
        type: 'POST',
        url: '/displayClients',
        data: {},
        success: function(result) {
            var array=JSON.parse(result)
          displayAllClients(array["result"])
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


