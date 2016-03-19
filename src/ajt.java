import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.io.FileNotFoundException;
import java.io.IOException;

public abstract class ajt<T>
  implements ajf<T>
{
  private final Uri a;
  private final Context b;
  private T c;
  
  public ajt(Context paramContext, Uri paramUri)
  {
    b = paramContext.getApplicationContext();
    a = paramUri;
  }
  
  protected abstract T a(Uri paramUri, ContentResolver paramContentResolver);
  
  public void a()
  {
    if (c != null) {}
    try
    {
      a(c);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public final void a(ahs paramahs, ajg<? super T> paramajg)
  {
    paramahs = b.getContentResolver();
    try
    {
      c = a(a, paramahs);
      paramajg.a(c);
      return;
    }
    catch (FileNotFoundException paramahs)
    {
      paramajg.a(paramahs);
    }
  }
  
  protected abstract void a(T paramT);
  
  public void b() {}
  
  public air c()
  {
    return air.a;
  }
}

/* Location:
 * Qualified Name:     ajt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */