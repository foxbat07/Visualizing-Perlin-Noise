void setup() 
    {
    minim = new Minim(this);
    
    
    frameRate(100);  
    size(1024, 768, OPENGL);
    kinect = new SimpleOpenNI(this);
    kinect.enableDepth();
    frameRate(30);
    p1=new Particle();
    Walker=new Particle();
    
    stuckPoints = new ArrayList<PVector>();     
    
    chord[0] = minim.loadSnippet("A bis.wav"); 
    chord[1] = minim.loadSnippet("A tris.wav"); 
    }
