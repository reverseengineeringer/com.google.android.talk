import android.content.res.AssetManager;
import java.io.IOException;

public abstract class aje<T>
  implements ajf<T>
{
  private final String a;
  private final AssetManager b;
  private T c;
  
  public aje(AssetManager paramAssetManager, String paramString)
  {
    b = paramAssetManager;
    a = paramString;
  }
  
  protected abstract T a(AssetManager paramAssetManager, String paramString);
  
  public void a()
  {
    if (c == null) {
      return;
    }
    try
    {
      a(c);
      return;
    }
    catch (IOException localIOException) {}
  }
  
  public void a(ahs paramahs, ajg<? super T> paramajg)
  {
    try
    {
      c = a(b, a);
      paramajg.a(c);
      return;
    }
    catch (IOException paramahs)
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
 * Qualified Name:     aje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */