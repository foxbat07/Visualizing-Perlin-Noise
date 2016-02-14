boolean randomWalk( Particle Walker)
        {
         while(true)
          {  
          Walker.velocity.set( random(-vel,vel),random(-vel,vel),random(-vel,vel)) ;           
          Walker.position.add( Walker.velocity);
          // check if the walker is in the bounding box
          
          if (   Walker.position.x< xLimitMin || Walker.position.x > xLimitMax  ||  Walker.position.y < yLimitMin || Walker.position.y > yLimitMax ||  Walker.position.z < zLimitMin || Walker.position.z > zLimitMax  ) 
              {
               println("walker walked off:"+ walkedOffCounter++ );
               return false;
              }
          
          // compute distance from the seed    
          else
            {
            for(int i = bodyPoints.size()-1 ; i >=0; i--)
                {           
                // get the current point from the point array
                PVector currentPoint = bodyPoints.get(i);
                // draw the current point
                float distanceFromBody;
                distanceFromBody = sqrt(  pow( (Walker.position.x- currentPoint.x),2 ) + pow( (Walker.position.y- currentPoint.y),2 ) +  pow( (Walker.position.z- currentPoint.z),2 )  ); 
                if ( distanceFromBody < 1000)
                    {
                      println("something got stuck to the body: "+ stuckToBodyCounter++);
                      
                      stuckPoints.add( currentPoint);
                      fill(0,0,255,200);
                      ellipse(currentPoint.x,currentPoint.y, 5,5);
                      
                      chord[1].play();
                                                
                                                
                       if(!chord[1].isPlaying()) 
                         {//part of minim
                          chord[1].rewind();
                          }
                          
                        
                      return true;   
                    }
        
                 }  
             
             // if no point is stuck to body, only then check for near points, body takes priority
             
            for(int i = stuckPoints.size()-1 ; i >=0; i--)
                {           
                // get the current point from the point array
                PVector currentPoint = stuckPoints.get(i);
                // draw the current point
                float distanceFromPoint;
                distanceFromPoint = sqrt(  pow( (Walker.position.x- currentPoint.x),2 ) + pow( (Walker.position.y- currentPoint.y),2 ) +  pow( (Walker.position.z- currentPoint.z),2 )  ); 
                if ( distanceFromPoint < 1000)
                    {
                      println("something got stuck to a stuck Point: "+stuckToPointCounter++ );
                      fill(0,0,255,200);
                      ellipse(currentPoint.x,currentPoint.y, 5,5);
                      stuckPoints.add( currentPoint);
                      
                      chord[0].play();
                                                
                                                
                       if(!chord[0].isPlaying()) 
                           {//part of minim
                            chord[0].rewind();
                            }
                          
                        
                      return true;
                     
                
                    }
        
                 }              
            
            
            }
            
            
             
          }  
        }
