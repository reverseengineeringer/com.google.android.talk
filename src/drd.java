import java.util.HashMap;
import java.util.Map;

public class drd
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final Map<String, String> g = new HashMap();
  
  private drd(kga paramkga)
  {
    super(responseHeader, -1L);
    paramkga = a;
    int j = paramkga.length;
    int i = 0;
    while (i < j)
    {
      String str = paramkga[i];
      Object localObject = a;
      if ((b != null) && (localObject != null) && (b != null))
      {
        str = b;
        localObject = b;
        g.put(localObject, str);
      }
      i += 1;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kga)lyi.b(new kga(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drd(paramArrayOfByte);
  }
  
  public Map<String, String> k()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     drd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */