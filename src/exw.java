import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.widget.ImageView;
import com.google.android.apps.hangouts.R.drawable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class exw
{
  static final boolean a = false;
  static exd b;
  private static final String g = new StringBuilder().appendCodePoint(127344).appendCodePoint(128519).appendCodePoint(127882).appendCodePoint(127973).toString();
  private static int h;
  private static boolean i = false;
  private static int j;
  private static int k;
  private static final ThreadFactory m = new exy();
  private static final Executor n = Executors.newFixedThreadPool(2, m);
  final int c;
  final Paint d;
  final hv<Integer, Bitmap> e;
  final boolean f;
  private final Context l;
  
  static
  {
    imx localimx = ezi.t;
  }
  
  public exw(Context paramContext, int paramInt)
  {
    l = paramContext.getApplicationContext();
    a(l);
    e = new hv(h);
    if ((Build.VERSION.SDK_INT >= 19) && (aal.a(aal.oJ, "babel_prefer_emoji_system_font_rendering", true))) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      if (!f) {
        break;
      }
      c = paramContext.getResources().getDimensionPixelSize(aal.dV);
      d = new Paint(1);
      d.setColor(paramInt);
      a(c);
      return;
    }
    c = 0;
    d = null;
  }
  
  public static BitmapFactory.Options a()
  {
    if (!i)
    {
      j = 128;
      k = 128;
      i = true;
    }
    return exd.a(j, k);
  }
  
  public static exd a(Context paramContext)
  {
    BitmapFactory.Options localOptions;
    Resources localResources;
    Bitmap localBitmap;
    int i4;
    int i2;
    int i3;
    int i5;
    int i6;
    if (b == null)
    {
      localOptions = a();
      localResources = paramContext.getResources();
      localBitmap = BitmapFactory.decodeResource(localResources, R.drawable.emoji_u00a9, localOptions);
      i4 = localBitmap.getByteCount();
      i2 = localBitmap.getWidth();
      i3 = localBitmap.getHeight();
      i5 = Math.min(Math.max(((ActivityManager)paramContext.getSystemService("activity")).getMemoryClass() * 131072, 4194304), 16777216);
      if ((getConfigurationscreenLayout & 0xF) < 3) {
        break label281;
      }
      i1 = 1;
      i6 = i5 / i4;
      if (i1 == 0) {
        break label286;
      }
    }
    label281:
    label286:
    for (int i1 = Math.min(i6, aal.a(aal.oJ, "babel_emoji_max_pool_size_large", 256));; i1 = Math.min(i6, aal.a(aal.oJ, "babel_emoji_max_pool_size", 128)))
    {
      if ((a) || (ezi.a("Babel", 3))) {
        ezi.b("Babel", 97 + "[BitmapPoolICS ctor] maxItems=" + i1 + ", poolMemSize=" + i5 + ", memTakenPerBitmap=" + i4, new Object[0]);
      }
      h = i1;
      i1 = h;
      ezi.d("Babel", 30 + "getBitmapPool size=" + i1, new Object[0]);
      b = exd.a(paramContext, h, 0, 0, 0, "Emoji");
      if (Build.VERSION.SDK_INT < 19)
      {
        b.a(localBitmap);
        new exx(i2, i3, 64, localResources, localOptions).execute(new Object[0]);
      }
      return b;
      i1 = 0;
      break;
    }
  }
  
  static eya a(ImageView paramImageView)
  {
    if (paramImageView != null)
    {
      paramImageView = paramImageView.getDrawable();
      if ((paramImageView instanceof exz)) {
        return ((exz)paramImageView).a();
      }
    }
    return null;
  }
  
  private void a(int paramInt)
  {
    Rect localRect = new Rect();
    int i1 = 0;
    int i4;
    for (int i2 = paramInt; i1 < g.length(); i2 = i4)
    {
      int i5 = Character.charCount(g.codePointAt(i1));
      i4 = paramInt + 1;
      int i3;
      do
      {
        do
        {
          Paint localPaint = d;
          i3 = i4 - 1;
          localPaint.setTextSize(i3);
          d.getTextBounds(g, i1, i1 + i5, localRect);
          i4 = i3;
        } while (localRect.height() > c);
        i4 = i3;
      } while (localRect.width() > c);
      i4 = i2;
      if (i3 < i2)
      {
        if ((a) || (ezi.a("Babel", 3))) {
          ezi.b("Babel", 56 + "Emoji font size min so far:" + i3 + " for i:" + i1, new Object[0]);
        }
        i4 = i3;
      }
      i1 += i5;
    }
    d.setTextSize(i2);
  }
  
  public eya a(int[] paramArrayOfInt)
  {
    paramArrayOfInt = new eya(this, l, paramArrayOfInt);
    paramArrayOfInt.executeOnExecutor(n, new Void[0]);
    return paramArrayOfInt;
  }
  
  public void a(Resources paramResources, int paramInt, eya parameya, ImageView paramImageView)
  {
    paramImageView.setImageDrawable(new exz(this, paramResources, parameya));
    parameya.a(paramInt, paramImageView);
  }
  
  public void b()
  {
    e.a(-1);
  }
}

/* Location:
 * Qualified Name:     exw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */