void draw() 
    {
    background(0);
    kinect.update();
    // prepare to draw centered in x-y
    // pull it 1000 pixels closer on z
    //translate(width/2, height/2, 0); 
    translate(width/2, height/2, -200); 
    rotateX(radians(180)); // flip y-axis from "realWorld" 2
    stroke(255);
    //rotateY(radians(map(mouseX, 0, width, -45, 45)));
     
    //rotateY(radians(map(mouseX, 0, width, -90, 90)));
    //float mouseRotation = map(mouseX, 0, width, -180, 180);
    //rotateY(radians(mouseRotation));
    // get the depth data as 3D points
    PVector[] depthPoints = kinect.depthMapRealWorld();                    // list of 640*480 values kinect data
    
    //stuckPoints = new ArrayList<PVector>();                             //intitalizing array lists
    bodyPoints= new ArrayList<PVector>();   
    depthPointsSmall= new ArrayList<PVector>();    
    
    
    // creating a sparse depth field to save on computation
    
    for(int i = 0; i < depthPoints.length; i+=25 )
        {
        // get the current point from the point array
        PVector currentPoint = depthPoints[i];       
        depthPointsSmall.add( currentPoint);
              
        }
    
    //  points in the bounding box only 
    
    for(int i = 0; i < depthPoints.length; i++ )
        {
          PVector currentPoint = depthPoints[i];
          if ( (currentPoint.z> zLimitMin && currentPoint.z< zLimitMax) && (currentPoint.x> xLimitMin && currentPoint.x< xLimitMax) && (currentPoint.y>yLimitMin && currentPoint.y<yLimitMax) )
              {
               bodyPoints.add( currentPoint);
               bodyPointsSize= bodyPoints.size();
               
              }
        }
    

         
////////the usual depth field        
    // to check for size, bodyPoints.size()
    /*      
    // drawing the points
    for(int i = 0; i < depthPoints.length; i+=10 )
        {
        // get the current point from the point array
        PVector currentPoint = depthPoints[i];
        // draw the current point
        if ( (currentPoint.z> zLimitMin && currentPoint.z< zLimitMax) && (currentPoint.x> xLimitMin && currentPoint.x< xLimitMax) && (currentPoint.y>yLimitMin && currentPoint.y<yLimitMax) )
             stroke(255,0,0);        
        else
            stroke(0,255,0,100);    
            point(currentPoint.x, currentPoint.y, currentPoint.z); 
              
              }
     */        


 
    // drawing the weird arraylist points
    
    for(int i = depthPointsSmall.size()-1 ; i >=0; i--)
        {           
        // get the current point from the point array
        PVector currentPoint = depthPointsSmall.get(i);
        // draw the current point
        if ( (currentPoint.z> zLimitMin && currentPoint.z< zLimitMax) && (currentPoint.x> xLimitMin && currentPoint.x< xLimitMax) && (currentPoint.y>yLimitMin && currentPoint.y<yLimitMax) )
             stroke(200,120,190,200);        
        else
            stroke(90,100,100,170); 
        strokeWeight(1);     
        point(currentPoint.x, currentPoint.y, currentPoint.z); 
              
         }
     
       
     
     
     // insert a new walker    
    
     // walker stuff
     Walker.stuck= false;

     while( !Walker.stuck)
           {
            Walker= insertWalker(); 
            Walker.stuck= randomWalk( Walker);
           }
    
     //stroke( 0,0,255,200);
     //line(Walker.position.x, Walker.position.y, Walker.position.z,0,0,1600); 
     //println (Walker.position.x+" "+  Walker.position.y +" " + Walker.position.z);
    
     // draw stuck poimts
     
     for(int i = stuckPoints.size()-1 ; i >=0; i--)
        {           
        // get the current point from the point array
        PVector currentPoint = stuckPoints.get(i);
        // draw the current point

        stroke(0,50,255,150);    
        strokeWeight(3);  
        point(currentPoint.x, currentPoint.y, currentPoint.z); 
        
              
         }
         
         
             
     // clearing out the lists
      if ( stuckPoints.size()>=4000)
          stuckPoints.clear();
      bodyPoints.clear();   
      depthPointsSmall.clear();    
    
    
    
    // drawing text
    textFont(myHelvetica);
    textAlign(LEFT,BASELINE);
    fill(209,61,100,200);
    println ("framerate: "+ frameRate);
    
    
    }    
