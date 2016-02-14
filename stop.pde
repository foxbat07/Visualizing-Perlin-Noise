void stop()
{
// make sure to close
// both AudioPlayer objects
for( int i=0; i<= 1;i+=1)
      chord[i].close();
minim.stop();
super.stop();
}
