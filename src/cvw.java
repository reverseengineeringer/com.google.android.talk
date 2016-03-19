import java.io.IOException;
import java.io.OutputStream;
import java.util.Map;

final class cvw
{
  public int a;
  public String b;
  public String c;
  public long d;
  public long e;
  public long f;
  public Map<String, String> g;
  
  cvw() {}
  
  public cvw(String paramString, agj paramagj)
  {
    b = paramString;
    a = a.length;
    c = b;
    d = c;
    e = e;
    f = f;
    g = g;
  }
  
  public agj a(byte[] paramArrayOfByte)
  {
    agj localagj = new agj();
    a = paramArrayOfByte;
    b = c;
    c = d;
    e = e;
    f = f;
    g = g;
    return localagj;
  }
  
  public boolean a(OutputStream paramOutputStream)
  {
    try
    {
      cvv.a(paramOutputStream, 538181937);
      cvv.a(paramOutputStream, a);
      cvv.a(paramOutputStream, b);
      if (c == null) {}
      for (String str = "";; str = c)
      {
        cvv.a(paramOutputStream, str);
        cvv.a(paramOutputStream, d);
        cvv.a(paramOutputStream, e);
        cvv.a(paramOutputStream, f);
        cvv.a(g, paramOutputStream);
        paramOutputStream.flush();
        return true;
      }
      return false;
    }
    catch (IOException paramOutputStream) {}
  }
}

/* Location:
 * Qualified Name:     cvw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */