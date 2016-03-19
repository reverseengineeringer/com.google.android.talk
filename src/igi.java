import android.content.Context;
import android.net.Uri;
import android.util.Log;

public final class igi
{
  private final hac a;
  private final Uri b;
  private long c = 3000L;
  
  public igi(Context paramContext, Uri paramUri)
  {
    a = ((hac)ilh.a(paramContext, hac.class));
    b = paramUri;
  }
  
  public boolean a()
  {
    igj localigj = new igj();
    long l1 = System.currentTimeMillis();
    long l2 = c;
    for (;;)
    {
      long l3;
      if (!localigj.a())
      {
        l3 = l1 + l2 - System.currentTimeMillis();
        if (l3 > 0L) {
          break label95;
        }
        if (Log.isLoggable("BlockingPanoDetector", 5))
        {
          String str = String.valueOf(b);
          new StringBuilder(String.valueOf(str).length() + 56).append("pano wait time expired, assume image is not a pano; uri=").append(str);
        }
      }
      return localigj.b();
      try
      {
        label95:
        Thread.sleep(Math.min(5L, l3));
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
}

/* Location:
 * Qualified Name:     igi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */