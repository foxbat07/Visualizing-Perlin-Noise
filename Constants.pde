// bounding box limits
float xLimitMin = -800;
float xLimitMax =  800; 
float yLimitMin = -900;
float yLimitMax =  700;
float zLimitMin =  800;
float zLimitMax =  2400;


// center point seed

PVector seed = new PVector (0.0,0.0,1600.0);

int stuckPointsStack=0;
int rotation;
ArrayList particles;

ArrayList<PVector> stuckPoints;
ArrayList<PVector> bodyPoints;
ArrayList<PVector> depthPointsSmall;

int stuckPointsSize;
int bodyPointsSize;
int depthPointsSize;


int vel=5;
Particle p1;
Particle Walker;



int stuckToBodyCounter=0;
int stuckToPointCounter=0;
int walkedOffCounter=0;

PFont myHelvetica = createFont("Helvetica",18);

Minim minim;
AudioSnippet chord[]= new AudioSnippet[2]; 


