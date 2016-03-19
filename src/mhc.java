import java.util.HashMap;
import org.xml.sax.Attributes;

final class mhc
{
  mhf a = null;
  Attributes b;
  
  mhc(Attributes paramAttributes)
  {
    b = paramAttributes;
    paramAttributes = mgw.b("style", paramAttributes);
    if (paramAttributes != null) {
      a = new mhf(paramAttributes);
    }
  }
  
  public String a(String paramString)
  {
    Object localObject2 = null;
    if (a != null) {}
    for (Object localObject1 = a.a(paramString);; localObject1 = null)
    {
      if (localObject1 == null)
      {
        Attributes localAttributes = b;
        int j = localAttributes.getLength();
        int i = 0;
        for (;;)
        {
          localObject1 = localObject2;
          if (i < j)
          {
            if (localAttributes.getLocalName(i).equals(paramString)) {
              localObject1 = localAttributes.getValue(i);
            }
          }
          else {
            return (String)localObject1;
          }
          i += 1;
        }
      }
      return (String)localObject1;
    }
  }
  
  public String b(String paramString)
  {
    return a(paramString);
  }
  
  public Integer c(String paramString)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return null;
    }
    if ((paramString.startsWith("#")) && ((paramString.length() == 4) || (paramString.length() == 7))) {}
    try
    {
      int j = Integer.parseInt(paramString.substring(1), 16);
      int i = j;
      if (paramString.length() == 4) {
        i = j & 0xF | (j & 0xF00) << 8 | (j & 0xF00) << 12 | (j & 0xF0) << 4 | (j & 0xF0) << 8 | (j & 0xF) << 4;
      }
      return Integer.valueOf(i);
    }
    catch (NumberFormatException paramString) {}
    return (Integer)mgv.a.get(paramString);
    return null;
  }
  
  public Float d(String paramString)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return null;
    }
    try
    {
      float f = Float.parseFloat(paramString);
      return Float.valueOf(f);
    }
    catch (NumberFormatException paramString) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     mhc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */