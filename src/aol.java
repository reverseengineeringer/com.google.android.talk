import java.io.IOException;

final class aol<Data>
  implements ajf<Data>
{
  private final String a;
  private final aok<Data> b;
  private Data c;
  
  public aol(String paramString, aok<Data> paramaok)
  {
    a = paramString;
    b = paramaok;
  }
  
  public void a()
  {
    try
    {
      b.a(c);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public void a(ahs paramahs, ajg<? super Data> paramajg)
  {
    try
    {
      c = b.a(a);
      paramajg.a(c);
      return;
    }
    catch (IllegalArgumentException paramahs)
    {
      paramajg.a(paramahs);
    }
  }
  
  public void b() {}
  
  public air c()
  {
    return air.a;
  }
  
  public Class<Data> d()
  {
    return b.a();
  }
}

/* Location:
 * Qualified Name:     aol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */