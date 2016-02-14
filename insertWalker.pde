Particle insertWalker()
        {
          
        // choosing a random side and insertng a walker  
        
        int chooseSide= int( random(11)) ;
        //int chooseSide= int( random(7)) ;

        switch (chooseSide)
               {
                case 0 : p1.position.set (xLimitMin,yLimitMin, random( zLimitMin,zLimitMax)) ;
                         break;
                         
                         
                case 1 : p1.position.set (xLimitMin,yLimitMax, random( zLimitMin,zLimitMax)) ;
                         break;   
                
                case 2 : p1.position.set (xLimitMax,yLimitMin, random( zLimitMin,zLimitMax)) ;
                         break;       
                
                case 3 : p1.position.set (xLimitMax,yLimitMax, random( zLimitMin,zLimitMax)) ;  
                         break;  
           
                case 4 : p1.position.set ( random( xLimitMin,xLimitMax),yLimitMin,zLimitMin) ;  
                         break; 
       
                case 5 : p1.position.set ( random( xLimitMin,xLimitMax),yLimitMin,zLimitMax) ;  
                         break;
                         
                case 6 : p1.position.set ( random( xLimitMin,xLimitMax),yLimitMax,zLimitMax) ;  
                         break;  
               
                case 7 : p1.position.set ( random( xLimitMin,xLimitMax),yLimitMax,zLimitMin) ;  
                         break;     
                  
                case 8 : p1.position.set ( xLimitMin, random( yLimitMin,yLimitMax), zLimitMin) ;  
                         break;   
                 
                case 9 : p1.position.set ( xLimitMin, random( yLimitMin,yLimitMax), zLimitMax) ;  
                         break;   
                         
                case 10 : p1.position.set ( xLimitMax, random( yLimitMin,yLimitMax), zLimitMin) ;  
                         break; 
              
                case 11 : p1.position.set ( xLimitMax, random( yLimitMin,yLimitMax), zLimitMax) ;  
                         break; 
                
                default : break;           
               }         
        
        return p1;
        }
        
