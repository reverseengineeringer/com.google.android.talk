import android.content.Context;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class ajx
  implements ajf<InputStream>
{
  private final Context a;
  private final Uri b;
  private final akb c;
  private InputStream d;
  
  private ajx(Context paramContext, Uri paramUri, akb paramakb)
  {
    a = paramContext;
    b = paramUri;
    c = paramakb;
  }
  
  public static ajx a(Context paramContext, Uri paramUri, aka paramaka)
  {
    return new ajx(paramContext, paramUri, new akb(paramaka, ahk.a(paramContext).b()));
  }
  
  public void a()
  {
    if (d != null) {}
    try
    {
      d.close();
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public void a(ahs paramahs, ajg<? super InputStream> paramajg)
  {
    for (;;)
    {
      try
      {
        paramahs = c.b(a, b);
        if (paramahs == null) {
          break label79;
        }
        i = c.a(a, b);
        if (i != -1)
        {
          paramahs = new ajm(paramahs, i);
          d = paramahs;
          paramajg.a(d);
          return;
        }
      }
      catch (FileNotFoundException paramahs)
      {
        paramajg.a(paramahs);
        return;
      }
      continue;
      label79:
      int i = -1;
    }
  }
  
  public void b() {}
  
  public air c()
  {
    return air.a;
  }
  
  public Class<InputStream> d()
  {
    return InputStream.class;
  }
}

/* Location:
 * Qualified Name:     ajx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */