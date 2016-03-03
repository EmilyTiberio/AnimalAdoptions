JSONObject animals;
//JSONArray adopt;
PImage paw;
String title = "Animals adopted in Washington by Month";

ArrayList<Adoptions> info= new ArrayList<Adoptions>();



void setup(){
  size(800,300);
  smooth();
  paw= loadImage("pet.png");
  

  animals = loadJSONObject ("washington-animal-adoption.json");
//parse data - how do I do this in one sweep?
  JSONObject data = animals.getJSONObject("meta");
  JSONObject data1 = data.getJSONObject("view");
  JSONArray col = data1.getJSONArray("columns");
  JSONObject count = col.getJSONObject(8);
  JSONObject count1 = count.getJSONObject("cachedContents");
  JSONArray count2 = count1.getJSONArray("top");

  
 for(int i=0;i<count2.size();i++){
   String month = count2.getJSONObject(i).getString("item");
   int num = count2.getJSONObject(i).getInt("count");
   
   println("There were " + num + " animals adopted in the month of " + month + ".");
   
  Adoptions a = new Adoptions();
  a.count = num;
  a.item = month;
 
  a.x = i*65;
  a.y=height/2;
  
  info.add(a);
   
 }
}

void draw(){
background(100,0,100);
for (Adoptions a:info){
 a.display(); 
 a.rollover();
 
   
}

}