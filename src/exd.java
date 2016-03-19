import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;

public class exd
  implements hbv
{
  public static final boolean b = false;
  private static final hbu e = hbu.a;
  public final Resources a = aal.oJ.getResources();
  public final String c;
  public hv<Bitmap, Exception> d;
  
  static
  {
    imx localimx = ezi.t;
  }
  
  protected exd(String paramString)
  {
    c = paramString;
    if (b) {
      d = new hv(30);
    }
  }
  
  public static BitmapFactory.Options a(int paramInt1, int paramInt2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inScaled = false;
    inDensity = paramInt1;
    inTargetDensity = paramInt2;
    inSampleSize = 1;
    inJustDecodeBounds = false;
    inMutable = true;
    return localOptions;
  }
  
  public static exd a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    if (aal.a(paramContext, "babel_enable_bitmap_pool", true)) {}
    for (paramContext = new exf(paramInt1, paramInt2, paramInt3, paramInt4, paramString);; paramContext = new exd(paramString))
    {
      e.a(paramContext);
      return paramContext;
    }
  }
  
  public static boolean a(Context paramContext)
  {
    return aal.a(paramContext, "babel_enable_bitmap_pool", true);
  }
  
  public Bitmap a(int paramInt1, int paramInt2, exe paramexe)
  {
    if (paramexe != null)
    {
      paramexe = paramexe.a(paramInt1, paramInt2);
      if (paramexe != null)
      {
        paramexe.eraseColor(0);
        return paramexe;
      }
    }
    return Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
  }
  
  public Bitmap a(int paramInt1, BitmapFactory.Options paramOptions, int paramInt2, int paramInt3)
  {
    try
    {
      paramOptions = BitmapFactory.decodeResource(a, paramInt1, paramOptions);
      return paramOptions;
    }
    catch (IllegalArgumentException paramOptions)
    {
      ezi.d("Babel", 37 + "Decoding resource " + paramInt1 + " failed.", new Object[0]);
      return null;
    }
    catch (OutOfMemoryError paramOptions)
    {
      ezi.d("Babel", 33 + "Oom decoding resource " + paramInt1, new Object[0]);
      e.a();
    }
    return null;
  }
  
  public Bitmap a(byte[] paramArrayOfByte, BitmapFactory.Options paramOptions, int paramInt1, int paramInt2, exe paramexe)
  {
    try
    {
      paramArrayOfByte = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
      return paramArrayOfByte;
    }
    catch (IllegalArgumentException paramArrayOfByte)
    {
      ezi.d("Babel", "Decoding byte array failed.", new Object[0]);
    }
    return null;
  }
  
  public void a() {}
  
  public void a(Bitmap paramBitmap)
  {
    hbs.b("Expected condition to be false", bfq.a(paramBitmap));
    if (paramBitmap != null)
    {
      c(paramBitmap);
      return;
    }
    ezi.c("Babel", "BitmapPool receiving null bitmap", new Exception());
  }
  
  public void b(int paramInt)
  {
    if (paramInt != 5) {
      a();
    }
  }
  
  public boolean b(int paramInt1, int paramInt2)
  {
    return true;
  }
  
  boolean b(Bitmap paramBitmap)
  {
    return false;
  }
  
  protected final void c(Bitmap paramBitmap)
  {
    paramBitmap.recycle();
    if (b) {
      d.a(paramBitmap, new Exception());
    }
  }
  
  public void h()
  {
    a();
  }
}

/* Location:
 * Qualified Name:     exd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */