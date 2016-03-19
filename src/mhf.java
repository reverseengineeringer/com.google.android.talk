import java.util.HashMap;

final class mhf
{
  HashMap<String, String> a = new HashMap();
  
  mhf(String paramString)
  {
    paramString = paramString.split(";");
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      String[] arrayOfString = paramString[i].split(":");
      if (arrayOfString.length == 2) {
        a.put(arrayOfString[0], arrayOfString[1]);
      }
      i += 1;
    }
  }
  
  public String a(String paramString)
  {
    return (String)a.get(paramString);
  }
}

/* Location:
 * Qualified Name:     mhf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */