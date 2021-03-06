window.onload=function(){
 queryItems();
 queryVillages();

 $('#inputRequest').keypress(function (e) {
     var key = e.which;
     if(key == 13 && $("#inputRequest").val()!=''){  
        customRequest();                    
    }
});
}

function showMap(){
    $('div.mainTable').html("<img src='./images/realMap.jpg'>");
}

function displayTable(array){
    console.log(array);
    var result='<table><tr>'
    for(var i=0;i<array.fields.length;i++){
        result+="<th><a href='javascript:callOrder(\""+array.fields[i].name+"\")'>"+array.fields[i].name+"</a></th>"
    }
    result+="</tr>"
    for(var i=0;i<array.rows.length;i++){
        result+="<tr>"
        for (var key in array.rows[i]){
     
            if(!isNaN(+array.rows[i][key]) && !key.includes("id") && !key.includes("coord")){
                result+="<td>"+(+array.rows[i][key]).toFixed(2);
                if(key.includes('price')){
                    result+="$";
                }

                result+="</td>";
            }
            else if(key.includes('date')){
                var test=array.rows[i][key].split("T");
                result+="<td>"+test[0]+"</td>";
            }
            else{
                result+="<td>"+array.rows[i][key]+"</td>";
            }
            
        }
        result+="</tr>"
    }
    result+="</table>";
    $('div.mainTable').html(result);
}


//pour caller les requetes des boutons de navigation
function query(name){
    $.ajax({
        type: 'POST',
        url: '/display'+name,
        data: {},
        success: function(result) {
            displayTable(result)
        },
    });
}

function callOrder(key){
   $.ajax({
    type: 'POST',
    url: '/callOrder',
    data: {input:key},
    success: function(result) {
        displayTable(result)
    },
});
}


function customRequest(){
    var request=$('#inputRequest').val();
    if(request.includes("DROP") || request.includes("drop") ){
        alert("haha you made a funny");
        return;
    }

    $.ajax({
        type: 'POST',
        url: '/customRequest',
        data: {input:request},
        success: function(result) {
            displayTable(result)
        },
    });
}


function queryItems(){
    $.ajax({
        type: 'POST',
        url: '/displayAllItems',
        data: {},
        success: function(result) {
            displayTable(result)
        },
    });
}


function queryVillages(){
   $.ajax({
    type: 'POST',
    url: '/displayVillages',
    data: {},
    success: function(result) {
        loadVillages(result.rows)
    },
});
}


function loadVillages(array){
    var result="<select id='select1'>"
    for(var i=0;i<array.length;i++){
        result+='<option value="'+array[i].name+'">'+array[i].name+'</option>'
    }
    result+='</select>'
    $('div.village1').html(result);
    var result="<select id='select2'>"
    for(var i=0;i<array.length;i++){
        result+='<option value="'+array[i].name+'">'+array[i].name+'</option>'
    }
    result+='</select>'    
    $('div.village2').html(result);
}

function calcDistance(){
    var village1=$( "select#select1" ).val();
    var village2=$( "select#select2" ).val();
    $.ajax({
        type: 'POST',
        url: '/distanceCalc',
        data: {"village1":village1,"village2":village2},
        success: function(result) {
            $('div.distanceResult').text(Math.round(result.rows[0].sqrt*100)/400+" lieues")
        },
    });
}



function postItem(){
    const dataArray = $('form').serializeArray();
    $.ajax({
        type: 'POST',
        url: '/postItem',
        data: dataArray,
        success: function(result) {
            console.log(result);
            alert("New item created")
        },
    });
}



//hide/show div de la page Post
const elems = $(':radio.radio-btn');
let   div   = $('.radio-content');

elems.change(function() {
    let selection = $(elems).filter(':checked').val();
    div.hide();
    div.filter('[data-radio=' + selection + ']').show();
}).change();
