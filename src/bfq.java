import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import com.google.android.apps.hangouts.R.drawable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class bfq
{
  public static final boolean a = false;
  public static int b;
  public static int c;
  private static int d;
  private static int e;
  private static int f;
  private static Bitmap g;
  private static Bitmap h;
  private static Bitmap i;
  private static Bitmap j;
  private static Bitmap k;
  private static Bitmap l;
  private static Bitmap m;
  private static Bitmap n;
  private static Bitmap o;
  private static Bitmap p;
  private static Map<beo, Bitmap> q = new hq();
  
  static
  {
    imx localimx = ezi.d;
  }
  
  public static int a()
  {
    if (e == 0) {
      e = aal.oJ.getResources().getDimensionPixelSize(aal.ek);
    }
    return e;
  }
  
  public static int a(Context paramContext)
  {
    if (d == 0) {
      d = paramContext.getResources().getDimensionPixelSize(aal.eB);
    }
    return d;
  }
  
  public static Bitmap a(beo parambeo)
  {
    Map localMap;
    Bitmap localBitmap;
    Canvas localCanvas;
    if (!q.containsKey(parambeo))
    {
      localMap = q;
      localBitmap = b();
      localBitmap = localBitmap.copy(localBitmap.getConfig(), true);
      localCanvas = new Canvas(localBitmap);
      switch (bfr.a[parambeo.ordinal()])
      {
      default: 
        parambeo = String.valueOf(parambeo);
        throw new AssertionError(String.valueOf(parambeo).length() + 20 + "Unknown badge type: " + parambeo);
      case 1: 
        a(localCanvas, ((BitmapDrawable)aal.oJ.getResources().getDrawable(R.drawable.aI)).getBitmap());
      }
    }
    for (;;)
    {
      localMap.put(parambeo, localBitmap);
      return (Bitmap)q.get(parambeo);
      a(localCanvas, ((BitmapDrawable)aal.oJ.getResources().getDrawable(R.drawable.bc)).getBitmap());
    }
  }
  
  private static void a(Canvas paramCanvas, Bitmap paramBitmap)
  {
    float f1 = aal.oJ.getResources().getDimension(aal.eJ);
    paramCanvas.drawBitmap(paramBitmap, paramCanvas.getWidth() - paramBitmap.getWidth() - f1, paramCanvas.getHeight() - paramBitmap.getHeight() - f1, null);
  }
  
  public static void a(bfd parambfd, List<cyx> paramList, boolean paramBoolean)
  {
    if (paramList == null) {}
    label163:
    for (;;)
    {
      return;
      int i1;
      if (paramBoolean)
      {
        i1 = d();
        paramList = paramList.iterator();
      }
      for (;;)
      {
        if (!paramList.hasNext()) {
          break label163;
        }
        Object localObject = (cyx)paramList.next();
        String str = h;
        if (TextUtils.isEmpty(str))
        {
          if (!a) {
            continue;
          }
          localObject = String.valueOf(ezi.b(e));
          if (((String)localObject).length() != 0)
          {
            "Avatar url for contact is empty: ".concat((String)localObject);
            continue;
            i1 = a();
            break;
          }
          new String("Avatar url for contact is empty: ");
          continue;
        }
        localObject = new bhs(new eyd(str, parambfd.a()).a(i1).d(true), null, true, null);
        ((eit)ilh.a(aal.oJ, eit.class)).c((ehx)localObject);
      }
    }
  }
  
  public static boolean a(Bitmap paramBitmap)
  {
    return (paramBitmap != null) && ((paramBitmap == g) || (paramBitmap == h) || (paramBitmap == i) || (paramBitmap == j) || (paramBitmap == k) || (paramBitmap == l) || (paramBitmap == m) || (paramBitmap == n) || (paramBitmap == o) || (paramBitmap == p));
  }
  
  public static Bitmap b()
  {
    if (g == null) {
      g = Bitmap.createScaledBitmap(eye.a(R.drawable.d), a(), a(), false);
    }
    return g;
  }
  
  public static Bitmap c()
  {
    if (h == null) {
      h = Bitmap.createScaledBitmap(BitmapFactory.decodeResource(aal.oJ.getResources(), R.drawable.d), a(), a(), false);
    }
    return h;
  }
  
  public static int d()
  {
    if (f == 0) {
      f = aal.oJ.getResources().getDimensionPixelSize(aal.ej);
    }
    return f;
  }
  
  public static Bitmap e()
  {
    if (i == null) {
      i = eye.a(R.drawable.f);
    }
    return i;
  }
  
  public static Bitmap f()
  {
    if (j == null) {
      j = BitmapFactory.decodeResource(aal.oJ.getResources(), R.drawable.f);
    }
    return j;
  }
  
  public static Bitmap g()
  {
    if (k == null) {
      k = eye.a(R.drawable.g);
    }
    return k;
  }
  
  public static Bitmap h()
  {
    if (l == null) {
      l = BitmapFactory.decodeResource(aal.oJ.getResources(), R.drawable.g);
    }
    return l;
  }
  
  public static Bitmap i()
  {
    if (m == null) {
      m = eye.a(R.drawable.h);
    }
    return m;
  }
  
  public static Bitmap j()
  {
    if (n == null) {
      n = BitmapFactory.decodeResource(aal.oJ.getResources(), R.drawable.h);
    }
    return n;
  }
  
  public static Bitmap k()
  {
    if (o == null) {
      o = eye.a(R.drawable.e);
    }
    return o;
  }
  
  public static Bitmap l()
  {
    if (p == null) {
      p = eye.a(R.drawable.ck);
    }
    return p;
  }
}

/* Location:
 * Qualified Name:     bfq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */