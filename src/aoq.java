import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

final class aoq<Data>
  implements ajf<Data>
{
  private final File a;
  private final aor<Data> b;
  private Data c;
  
  public aoq(File paramFile, aor<Data> paramaor)
  {
    a = paramFile;
    b = paramaor;
  }
  
  public void a()
  {
    if (c != null) {}
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
    catch (FileNotFoundException paramahs)
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
 * Qualified Name:     aoq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */