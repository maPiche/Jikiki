var vowelsMediv = ['a','e','i','o','u', 'y', 'ie','ae','ui','ion']
var medieval = ['tau','iel','ius','d', 'g','k', 'm','p','x', 'th', 'r', 'kh', 'gh', 'ro', 'rd', 'uk','ok','il','kan', 'gn', 'md','gr','hel','gon','wen','hil','mn','nor','rod','gw','thr','dha','ech','oth','abd','rk']
var title=['Destroyer', 'Barbarian', 'Just', 'Evil', 'Eater of Worlds', 'Paragon', 'Twisted', 'Spiked', 'Explorer', 'Invisible', 'Quick', 'Deadly', 'Kingslayer', 'Dead', 'Hunter', 'Protector',"Nimble", "Savage", "Firelord", "Knight",
    "Battle Lord", "Challenged", "Broken", "Dark Master", "HighBorn", "LowBorn",
    "Gladiator", "Bastard", "Gorgeous", "Gullible", "Slayer", "Undying", "Vanquisher",
    "Betrayer", "Relentless", "Breaker of Chains", "Mad King"];
var alpha2= [vowelsMediv,medieval];

var village=["Orgrimmar", "Stormwind", "Darnassus", "Theramore", "Ratchet", "Edoras", "Minas Tirith","Thunder Bluff"]

var armorMats=["Cloth", "Leather", "Mail", "Plate"];
var armorType=["Head", "Chest", "Shoulder", "Pants", "Boots"];

var wpnMats=["Wood", "Stone", "Iron", "Steel","DragonGlass"];
var wpnName=["Sword", "Lance", "Flail", "Bow", "Crossbow", "Mace"]

var animalType=["Mount", "Livestock"];
var animalName = ["Horse", "Chicken", "Beef", "Donkey", "Sheep", "Dragon", "Camel", "Cow", "Bear"];
var animalSexe = ["Male", "Female"];

var potionType =["Healing", "Swiftness", "Invisibility", "Night Vision", "Poison", "Fire Resistance"]
var potionSize=["Minor", "Medium", "Major", "Enormous"]

var disponible=["true", "false"];

var titles=['not expensive', 'still in its box', 'looks as new', 'a little bit scratched', 'never used', 'a little bit broken but still works','cheap as hell', 'that has seen battles']
var allItemResult="";
var allItemStruct=[];
var allOffersStruct=[];


var userId=5000;//5000-5099
var itemID=0;
var offerID=10000;
var buyID=15000;



function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}

function generateMedievalName(){
    var x=Math.round(Math.random());
    var result="";
    for(var i=0;i<5;i++){
        result+=alpha2[x%2][Math.floor(Math.random()*alpha2[x%2].length)];
        if(i>=2){if(Math.random()<(1/3)){break;}}
        x++;
    }
    return capitalizeFirstLetter(result);
}

function randomWord(){
    var result = "";
    //des mots de 2-10 lettres
    var k= Math.floor(Math.random()*10+2);
    for(var i=0;i<k;i++){
        result+=String.fromCharCode(Math.floor(Math.random() * (122 - 97) + 97));
    }
    return result;
}

function randomPhrase(){
    var result = "";
    //2-20 mots par phrase
    var k= Math.floor(Math.random()*20+2);
    for(var i=0;i<k;i++){
        var newWord=randomWord();
        if(i==0){
            newWord=capitalizeFirstLetter(newWord);
        }
        if(i!=k-1){
            newWord+=" "
        }
        result+=newWord;
    }

    result+=". "
    return result;
}


//bloc de text de k phrases
function randomBlocText(k){
    result="";
    for(var i=0;i<k;i++){
        var newWord=randomWord();
        if(i==0){
            newWord=capitalizeFirstLetter(newWord);
        }
        result+=randomPhrase();
    }
    return result;
}

function generateNameWithTitle(){
    return generateMedievalName()+" the " +title[Math.floor(Math.random()*title.length)];
}

function getRandomfromArray(array){
    return array[Math.floor(Math.random()*array.length)]
}

function getRandomfromRange(min, max){
    return Math.round(Math.random() * (max - min) + min);
}
function getRandomfromArrayAndDelete(array){
    return  array.splice(Math.floor(Math.random()*array.length), 1);
}
function generateUserValues(n){
    var result="";
    for(var i=0;i<n;i++){
        result+="("+userId+", '"+generateNameWithTitle()+"', '"+getRandomfromArray(village)+"'),\n";
        userId++;
    }
    return result;
}

//wpn
function generateWpnValues(n){
    var result="";
    for(var i=0;i<n;i++){
        var name =getRandomfromArray(wpnName)
        allItemStruct.push([itemID,name])
        result+="("+itemID+",'"+getRandomfromArray(wpnMats)+"'),\n";
        allItemResult+="("+itemID+",'"+name+"'),\n"

        itemID++;
    }
    return result;
}

//armor
function generateArmorValues(n){
    var result="";
    for(var i=0;i<n;i++){
        var type = getRandomfromArray(armorType)
        var mats = getRandomfromArray(armorMats)
        var name = type+" armor of "+mats;
        allItemStruct.push([itemID,name]);
        type = "'"+type+"'";
        mats = "'"+mats+"'";
        result+="("+itemID+", "+type+", "+mats+"),\n"
        allItemResult+="("+itemID+",'"+name+"'),\n"
        itemID++;
    }
    return result;
}

function generateAnimalValues(n){
    var result="";
    for(var i=0;i<n;i++){
        var name = getRandomfromArray(animalName);
        allItemStruct.push([itemID,name])
        var type = "'"+getRandomfromArray(animalType)+"'";
        var sexe = "'"+getRandomfromArray(animalSexe)+"'";
        result+="("+itemID+", "+type+", "+sexe+"),\n"
        allItemResult+="("+itemID+",'"+name+"'),\n"

        itemID++;
    }
    return result
}

function generatePotionValue(n){
    var result=""
    for(var i=0;i<n;i++){
        var type = getRandomfromArray(potionType);
        var name = getRandomfromArray(potionSize)+" potion of "+type;
        allItemStruct.push([itemID,name])
        type = "'"+type+"'";
        result+="("+itemID+", "+type+"),\n"
        allItemResult+="("+itemID+",'"+name+"'),\n"
        itemID++;
    }
    return result;
}


//offer
function generateOfferValues(){
    var result="";
    for(var i=0;i<itemID;i++){
        var item=getRandomfromArrayAndDelete(allItemStruct);
        //console.log(item)
        offerQuantity = getRandomfromRange(0,10);
        offerPrice = getRandomfromRange(500,1000);
        offerUserId = getRandomfromRange(5000,userId-1);

        allOffersStruct.push([offerID, offerQuantity, offerPrice, offerUserId]);

        result+="("+offerID+", "+
            "'"+item[0][1]+" "+getRandomfromArray(titles)+"', "+//titles
            item[0][0]+", "+//item id
            offerUserId+", "+//user id
            offerQuantity+", "+ //quantity
            getRandomfromArray(disponible)+", "+//disponible
            offerPrice+", '"+//unitprice
            randomBlocText(2)+"'),\n"//description
        offerID++;
    }
    return result;
}

function generateBuyValues(max){
    var result="";
    for(var i=0;i<max;i++){
        var offer = getRandomfromArray(allOffersStruct);
        var buyQuantity = getRandomfromRange(1, 10);
        var buyPrice = getRandomfromRange(100, offer[2]);
        var buyOfferId = offer[0];
        var buyClientId = getRandomfromRange(5000, userId-1);
        var buyYear = getRandomfromRange(2015, 2018);
        var buyMonth = getRandomfromRange(1, 12)
        var buyDay = getRandomfromRange(1, 30)
        while(buyClientId == offer[3]){
            buyClientId =  getRandomfromRange(5000, userId-1);
        }
        //console.log(item)
        result+="("+buyID+", "+
            buyQuantity+", "+//quantity
            buyPrice+", "+//price
            buyClientId+", "+//client id
            buyOfferId+", '"+ //quantity
            buyYear + "-" + buyMonth + "-" + buyDay+"'),\n"//date
        buyID++;
    }
    return result;
}


console.log(generateUserValues(100));
console.log("wpn\n")
console.log(generateWpnValues(100));
console.log("armor\n")
console.log(generateArmorValues(100));
console.log("animal\n")
console.log(generateAnimalValues(100));
console.log("potion\n")
console.log(generatePotionValue(100))
console.log("all items\n")
console.log(allItemResult);

var villageValues=
    "(Stormwind, 0,0)," +
    "(Orgrimmar, 240,-5), " +
    "(Darnassus, 25,-200)," +
    "(Theramore, -100,-300)," +
    "(Ratchet, -30,-10)" +
    "(Edoras, -20, 55)" +
    "(Minas Tirith, 30,45)" +
    "(Thunder Bluff, 160,30)";


console.log("\nall offers\n")
console.log(generateOfferValues(100))

console.log("\nall buy\n")
console.log(generateBuyValues(100))