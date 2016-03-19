import java.io.IOException;
import java.io.Serializable;

public final class dvn
  extends IOException
  implements Serializable
{
  public static final dvn a = new dvn(120);
  public static final dvn b = new dvn(121);
  private static final long serialVersionUID = 1L;
  private final boolean c;
  private final int d;
  private final String e;
  private final long f;
  private final ewy g;
  
  public dvn(int paramInt)
  {
    this(paramInt, null, 0L, false, null);
  }
  
  public dvn(int paramInt, long paramLong, String paramString)
  {
    this(paramInt, null, paramLong, false, paramString);
  }
  
  public dvn(int paramInt, Exception paramException)
  {
    this(paramInt, paramException, 0L, false, null);
  }
  
  public dvn(int paramInt, Exception paramException, long paramLong, boolean paramBoolean, String paramString)
  {
    if ((paramInt < 100) || (paramInt > 139)) {
      throw new IllegalArgumentException(36 + "error code out of range: " + paramInt);
    }
    c = paramBoolean;
    d = paramInt;
    String str1;
    if (paramException != null)
    {
      String str2 = String.valueOf(paramException.getMessage());
      if (c)
      {
        str1 = "[INJECTED] -- ";
        paramString = String.valueOf(str2).length() + 4 + String.valueOf(str1).length() + String.valueOf(paramString).length() + str2 + " -- " + str1 + paramString;
        label141:
        e = paramString;
        if ((paramInt != 100) || (!(paramException instanceof ewy))) {
          break label247;
        }
      }
    }
    label233:
    label247:
    for (g = ((ewy)paramException);; g = null)
    {
      f = paramLong;
      return;
      str1 = "";
      break;
      if (c) {}
      for (str1 = "[INJECTED] -- ";; str1 = "")
      {
        str1 = String.valueOf(str1);
        paramString = String.valueOf(paramString);
        if (paramString.length() == 0) {
          break label233;
        }
        paramString = str1.concat(paramString);
        break;
      }
      paramString = new String(str1);
      break label141;
    }
  }
  
  public dvn(int paramInt, String paramString)
  {
    this(paramInt, null, 0L, false, paramString);
  }
  
  public static dvn a(int paramInt, Exception paramException, String paramString)
  {
    switch (paramInt)
    {
    default: 
      if ((paramInt >= 400) && (paramInt < 500)) {
        return new dvn(111, paramException, 0L, false, paramString);
      }
      break;
    case 0: 
      return new dvn(102, paramException, 0L, false, paramString);
    case 400: 
      return new dvn(111, paramException, 0L, false, paramString);
    case 401: 
      return new dvn(104, paramException, 0L, false, paramString);
    case 403: 
      return new dvn(111, paramException, 0L, false, paramString);
    case 404: 
      return new dvn(113, paramException, 0L, false, paramString);
    case 409: 
      return new dvn(108, paramException, 0L, false, paramString);
    case 416: 
      return new dvn(111, paramException, 0L, false, paramString);
    case 418: 
      return new dvn(111, paramException, 0L, false, paramString);
    case 429: 
      return new dvn(109, paramException, 0L, false, paramString);
    case 499: 
      return new dvn(121, paramException, 0L, false, paramString);
    case 501: 
      return new dvn(111, paramException, 0L, false, paramString);
    case 503: 
    case 504: 
      return new dvn(108, paramException, 0L, false, paramString);
    }
    if ((paramInt >= 500) && (paramInt < 600)) {
      return new dvn(108, paramException, 0L, false, paramString);
    }
    ezi.d("Babel_RequestWriter", 38 + "Unknown HTTP response code " + paramInt, new Object[0]);
    return new dvn(106, paramException, 0L, false, paramString);
  }
  
  public long a()
  {
    return f;
  }
  
  public ewy b()
  {
    return g;
  }
  
  public int c()
  {
    return d;
  }
  
  public String getMessage()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     dvn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */