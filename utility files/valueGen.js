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


var allItemResult="";

var userId=5000;//5000-5099
var itemID=0;
var offerID=10000;



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
        result+="("+itemID+", '"+name+"', '"+getRandomfromArray(wpnMats)+"'),\n";
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
        var name = "'"+type+" armor of "+mats+"'";
        type = "'"+type+"'";
        mats = "'"+mats+"'";
        result+="("+itemID+", "+name+", "+type+", "+mats+"),\n"
        allItemResult+="("+itemID+","+name+"),\n"
        itemID++;
    }
    return result;
}

function generateAnimalValues(n){
    var result="";
    for(var i=0;i<n;i++){
        var name = "'"+getRandomfromArray(animalName)+"'";
        var type = "'"+getRandomfromArray(animalType)+"'";
        var sexe = "'"+getRandomfromArray(animalSexe)+"'";
        result+="("+itemID+", "+name+", "+type+", "+sexe+"),\n"
        allItemResult+="("+itemID+","+name+"),\n"
        itemID++;
    }
    return result
}

function generatePotionValue(n){
    var result=""
    for(var i=0;i<n;i++){
        var type = getRandomfromArray(potionType);
        var name = "'"+getRandomfromArray(potionSize)+" potion of "+type+"'";
        type = "'"+type+"'";
        result+="("+itemID+", "+name+", "+type+"),\n"
        allItemResult+="("+itemID+","+name+"),\n"
        itemID++;
    }
    return result;
}





//offer
function generateOfferValues(){
    var result="";
    for(var i=0;i<itemID;i++){
        result+="("+offerID+", "+
            getRandomfromRange(0,itemID)+", "+//item id
            getRandomfromRange(5000,userId)+", "+//user id
            getRandomfromRange(0,10)+", "+ //quantity
            getRandomfromArray(disponible)+", "+//disponible
            getRandomfromRange(500,1000)+", '"+
            randomBlocText(2)+"'),\n"//prix
        offerID++;
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



console.log(generateOfferValues(100))