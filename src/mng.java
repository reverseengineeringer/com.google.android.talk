import java.io.OutputStream;

public abstract class mng
{
  final String a;
  final String b;
  final String c;
  
  public mng(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("MIME type may not be null");
    }
    a = paramString;
    int i = paramString.indexOf('/');
    if (i != -1)
    {
      b = paramString.substring(0, i);
      c = paramString.substring(i + 1);
      return;
    }
    b = paramString;
    c = null;
  }
  
  public String a()
  {
    return a;
  }
  
  public abstract void a(OutputStream paramOutputStream);
  
  public abstract String b();
  
  public abstract String c();
  
  public abstract long d();
  
  public abstract String e();
}

/* Location:
 * Qualified Name:     mng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */