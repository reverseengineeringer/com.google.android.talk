import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public final class isv
{
  public static final isw a = new isx("-_.*", true);
  public static final isw b = new isx("-_.!~*'()@:$&,;=", false);
  public static final isw c = new isx("-_.!~*'()@:$&,;=+/?", false);
  public static final isw d = new isx("-_.!~*'():$&,;=", false);
  public static final isw e = new isx("-_.!~*'()@:$,;/?:", false);
  
  public static String a(String paramString)
  {
    try
    {
      paramString = URLDecoder.decode(paramString, "UTF-8");
      return paramString;
    }
    catch (UnsupportedEncodingException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     isv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */