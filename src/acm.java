import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;

public final class acm
  extends et<aco>
  implements acn
{
  private String f;
  private Bitmap g;
  
  public acm(Context paramContext, String paramString)
  {
    super(paramContext);
    f = paramString;
  }
  
  private void a(aco paramaco)
  {
    Bitmap localBitmap1;
    if (paramaco != null)
    {
      localBitmap1 = b;
      if (!r()) {
        break label30;
      }
      if (localBitmap1 != null) {
        a(localBitmap1);
      }
    }
    label30:
    Bitmap localBitmap2;
    do
    {
      return;
      localBitmap1 = null;
      break;
      localBitmap2 = g;
      g = localBitmap1;
      if (p()) {
        super.b(paramaco);
      }
    } while ((localBitmap2 == null) || (localBitmap2 == localBitmap1) || (localBitmap2.isRecycled()));
    a(localBitmap2);
  }
  
  private static void a(Bitmap paramBitmap)
  {
    if ((paramBitmap != null) && (!paramBitmap.isRecycled())) {
      paramBitmap.recycle();
    }
  }
  
  private aco h()
  {
    Object localObject2 = new aco();
    Object localObject3 = n();
    Object localObject1 = localObject2;
    if (localObject3 != null)
    {
      localObject1 = localObject2;
      if (f != null) {
        localObject1 = ((Context)localObject3).getContentResolver();
      }
    }
    try
    {
      localObject3 = acr.a((ContentResolver)localObject1, Uri.parse(f), abn.b);
      localObject1 = localObject3;
      localObject2 = localObject3;
      if (b != null)
      {
        localObject2 = localObject3;
        b.setDensity(160);
        localObject1 = localObject3;
      }
      return (aco)localObject1;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      c = 1;
    }
    return (aco)localObject2;
  }
  
  public void a(String paramString)
  {
    f = paramString;
  }
  
  protected void i()
  {
    if (g != null)
    {
      aco localaco = new aco();
      c = 0;
      b = g;
      a(localaco);
    }
    if ((z()) || (g == null)) {
      u();
    }
  }
  
  protected void j()
  {
    t();
  }
  
  protected void k()
  {
    super.k();
    j();
    if (g != null)
    {
      a(g);
      g = null;
    }
  }
}

/* Location:
 * Qualified Name:     acm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */