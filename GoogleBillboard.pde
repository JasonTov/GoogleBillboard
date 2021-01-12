public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
double segment;
boolean found = false;
public void setup()  
{            
    //your code here 
    for(int i=0;!found;i++)
    {
      String digits = e.substring(i,i+10);
      if(isPrime(digits))
      {
        found = true;
        System.out.println(digits);
      }
    }
}  
public void draw()  
{   
  //not needed for this assignment
}  
public boolean isPrime(String s)  
{   
    //your code here   
    double dNum = Double.parseDouble(s);
    if(dNum<10)
    {
      dNum *= Math.pow(10,9);
    }
    int root = (int)Math.sqrt(dNum);
    
    System.out.println("Searching:"+dNum);
    
    if(dNum < 2)
    {
      return false;
    }
    if(dNum == 2)
    {
      return true;
    }
  
    for(int i=2;i<=root;i++)
    {
      if(dNum % i == 0)
      {
        return false;
      }
    }
    return true;
    
} 
