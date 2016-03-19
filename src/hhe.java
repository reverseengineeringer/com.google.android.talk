import android.content.Context;
import android.os.Handler;
import java.util.concurrent.TimeUnit;

public final class hhe
  implements hbl
{
  static final long a = TimeUnit.MINUTES.toMillis(55L);
  final Context b;
  final hgv c;
  hca d;
  hku e;
  jxm f;
  jxj g;
  mdx h;
  hhg i;
  String j;
  private final Runnable k = new hhf(this);
  
  public hhe(Context paramContext, hgv paramhgv)
  {
    b = paramContext.getApplicationContext();
    c = paramhgv;
  }
  
  public void a()
  {
    Runnable localRunnable = k;
    aal.y().removeCallbacks(localRunnable);
    if (i != null)
    {
      i.cancel(true);
      i = null;
    }
  }
  
  public void a(hca paramhca, hku paramhku)
  {
    d = paramhca;
    e = paramhku;
    k.run();
  }
  
  public <T extends lyi> void a(String paramString, lyi paramlyi, Class<T> paramClass, hbp<T> paramhbp)
  {
    a(paramString, paramlyi, paramClass, paramhbp, 20000, 3);
  }
  
  public <T extends lyi> void a(int paramInt)
  {
    lyi locallyi;
    Class localClass;
    hbp localhbp;
    int m;
    int n;
    aal.a(new hhh(this, paramInt, locallyi, localClass, localhbp, m, 1000L, n));
  }
  
  public void a(jxj paramjxj)
  {
    g = paramjxj;
  }
  
  public void a(jxm paramjxm)
  {
    f = paramjxm;
  }
  
  public void a(mdx parammdx)
  {
    h = parammdx;
  }
}

/* Location:
 * Qualified Name:     hhe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */