import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class eya
  extends AsyncTask<Void, Integer, Void>
{
  private final Map<Integer, WeakReference<ImageView>> b;
  private final int[] c;
  private final Map<Integer, Bitmap> d;
  private final BitmapFactory.Options e;
  private final StringBuilder f;
  private final Canvas g;
  private final Context h;
  
  public eya(exw paramexw, Context paramContext, int[] paramArrayOfInt)
  {
    h = paramContext.getApplicationContext();
    c = paramArrayOfInt;
    e = exw.a();
    int i = paramArrayOfInt.length;
    b = Collections.synchronizedMap(new HashMap(i));
    d = Collections.synchronizedMap(new HashMap(i));
    if (f)
    {
      f = new StringBuilder();
      g = new Canvas();
      return;
    }
    f = null;
    g = null;
  }
  
  private void a(Integer... arg1)
  {
    int i = 0;
    int j = aal.a(???[0], 0);
    for (;;)
    {
      synchronized (b)
      {
        Object localObject2 = (WeakReference)b.get(Integer.valueOf(j));
        if (localObject2 != null)
        {
          if ((isCancelled()) || (((WeakReference)localObject2).get() == null)) {
            break label126;
          }
          if (i == 0)
          {
            Bitmap localBitmap = (Bitmap)d.get(Integer.valueOf(j));
            localObject2 = (ImageView)((WeakReference)localObject2).get();
            if ((localBitmap != null) && (localObject2 != null) && (exw.a((ImageView)localObject2) == this)) {
              ((ImageView)localObject2).setImageBitmap(localBitmap);
            }
          }
        }
        return;
      }
      label126:
      i = 1;
    }
  }
  
  public void a(int paramInt, ImageView paramImageView)
  {
    b.put(Integer.valueOf(paramInt), new WeakReference(paramImageView));
    a(new Integer[] { Integer.valueOf(paramInt) });
  }
}

/* Location:
 * Qualified Name:     eya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */