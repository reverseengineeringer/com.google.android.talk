import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

public final class avq
{
  private static final char[] a = "0123456789abcdef".toCharArray();
  private static final char[] b = new char[64];
  
  public static int a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    Bitmap.Config localConfig = paramConfig;
    if (paramConfig == null) {
      localConfig = Bitmap.Config.ARGB_8888;
    }
    int i;
    switch (avr.a[localConfig.ordinal()])
    {
    default: 
      i = 4;
    }
    for (;;)
    {
      return i * (paramInt1 * paramInt2);
      i = 1;
      continue;
      i = 2;
    }
  }
  
  public static int a(Bitmap paramBitmap)
  {
    int i;
    if (paramBitmap.isRecycled())
    {
      String str = String.valueOf(paramBitmap);
      i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      paramBitmap = String.valueOf(paramBitmap.getConfig());
      throw new IllegalStateException(String.valueOf(str).length() + 66 + String.valueOf(paramBitmap).length() + "Cannot obtain size for recycled Bitmap: " + str + "[" + i + "x" + j + "] " + paramBitmap);
    }
    if (Build.VERSION.SDK_INT >= 19) {
      try
      {
        i = paramBitmap.getAllocationByteCount();
        return i;
      }
      catch (NullPointerException localNullPointerException) {}
    }
    return paramBitmap.getHeight() * paramBitmap.getRowBytes();
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    synchronized (b)
    {
      char[] arrayOfChar2 = b;
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        int j = paramArrayOfByte[i] & 0xFF;
        arrayOfChar2[(i << 1)] = a[(j >>> 4)];
        arrayOfChar2[((i << 1) + 1)] = a[(j & 0xF)];
        i += 1;
      }
      paramArrayOfByte = new String(arrayOfChar2);
      return paramArrayOfByte;
    }
  }
  
  public static <T> List<T> a(Collection<T> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      localArrayList.add(paramCollection.next());
    }
    return localArrayList;
  }
  
  public static <T> Queue<T> a(int paramInt)
  {
    return new ArrayDeque(paramInt);
  }
  
  public static void a()
  {
    if (!b()) {
      throw new IllegalArgumentException("You must call this method on the main thread");
    }
  }
  
  public static boolean a(int paramInt1, int paramInt2)
  {
    return (b(paramInt1)) && (b(paramInt2));
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static boolean b()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  private static boolean b(int paramInt)
  {
    return (paramInt > 0) || (paramInt == Integer.MIN_VALUE);
  }
  
  public static boolean c()
  {
    return !b();
  }
}

/* Location:
 * Qualified Name:     avq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */