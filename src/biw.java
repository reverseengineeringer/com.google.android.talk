import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class biw
{
  public static final boolean a = false;
  private final Map<String, bix> b = new hq();
  
  static
  {
    imx localimx = ezi.d;
  }
  
  private bix b(String paramString)
  {
    bix localbix2 = (bix)b.get(paramString);
    bix localbix1 = localbix2;
    if (localbix2 == null)
    {
      localbix1 = new bix();
      b.put(paramString, localbix1);
    }
    return localbix1;
  }
  
  public bix a(String paramString)
  {
    return b(paramString);
  }
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = b.entrySet().iterator();
    if (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getKey();
      localObject = (bix)((Map.Entry)localObject).getValue();
      str = String.valueOf(str);
      if (str.length() != 0) {}
      for (str = "ConversationId ".concat(str);; str = new String("ConversationId "))
      {
        localStringBuilder.append(str);
        localStringBuilder.append("\n");
        ((bix)localObject).a(localStringBuilder);
        break;
      }
    }
    return localStringBuilder.toString();
  }
  
  public void a(egy paramegy)
  {
    b(paramegy.a()).a(paramegy);
  }
}

/* Location:
 * Qualified Name:     biw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */