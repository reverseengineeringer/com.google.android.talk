import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.rastermill.FrameSequence;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;

public abstract class hya
  extends igp
  implements ifa
{
  public final hye a;
  final hyo b;
  public hyc c;
  private long d;
  private String e;
  private String o;
  private String p;
  private int q;
  private int r = -1;
  private String s;
  private String t;
  private String u;
  private String v;
  
  public hya(hye paramhye, igq paramigq)
  {
    super(paramhye, paramigq);
    a = paramhye;
    b = new hyo(this, paramhye);
  }
  
  private static int a(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramBitmap.getAllocationByteCount();
    }
    return paramBitmap.getRowBytes() * paramBitmap.getHeight();
  }
  
  private void a(String paramString, ByteBuffer paramByteBuffer, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1) && (!b.a(paramString, paramBoolean2))) {
      return;
    }
    if (paramBoolean2) {}
    for (hxm localhxm = a.c();; localhxm = a.b())
    {
      localhxm.a(paramString, paramByteBuffer);
      return;
    }
  }
  
  private void a(ByteBuffer paramByteBuffer)
  {
    int i = 1;
    Object localObject = (igq)g;
    if ((this.i != 2) && (this.i != 1))
    {
      if (p())
      {
        paramByteBuffer = String.valueOf(g);
        localObject = String.valueOf(n());
        new StringBuilder(String.valueOf(paramByteBuffer).length() + 53 + String.valueOf(localObject).length()).append("Resource no longer needed, not delivering: ").append(paramByteBuffer).append(", status: ").append((String)localObject);
      }
      return;
    }
    if ((i & 0x2) != 0)
    {
      if (p())
      {
        paramByteBuffer = String.valueOf(g);
        localObject = String.valueOf(f());
        new StringBuilder(String.valueOf(paramByteBuffer).length() + 48 + String.valueOf(localObject).length()).append("Completing a download-only request: ").append(paramByteBuffer).append(" file name: ").append((String)localObject);
      }
      a.a(this, 1, f());
      return;
    }
    if ((i & 0x8) != 0)
    {
      if (p())
      {
        localObject = String.valueOf(g);
        new StringBuilder(String.valueOf(localObject).length() + 56).append("Image decoding disabled. Delivering bytes to consumers: ").append((String)localObject);
      }
      a.a(this, 1, aal.a(paramByteBuffer));
      return;
    }
    for (;;)
    {
      try
      {
        if (paramByteBuffer.limit() >= 6)
        {
          paramByteBuffer.rewind();
          if ((paramByteBuffer.get(0) == 71) && (paramByteBuffer.get(1) == 73) && (paramByteBuffer.get(2) == 70))
          {
            if (i != 0) {
              k = 2;
            }
            if (((i & 0x4) == 0) || ((i & 0x20) != 0) || (!hxx.a(paramByteBuffer))) {
              break;
            }
            b(new hxx(FrameSequence.decodeByteBuffer(paramByteBuffer)));
            return;
          }
        }
      }
      catch (OutOfMemoryError paramByteBuffer)
      {
        if (p())
        {
          paramByteBuffer = String.valueOf(g);
          new StringBuilder(String.valueOf(paramByteBuffer).length() + 36).append("Out of memory while decoding image: ").append(paramByteBuffer);
        }
        aal.a(new hyb(this));
        a.a(this, 6, null);
        return;
      }
      i = 0;
    }
    if (((i & 0x4) != 0) && (i != 0))
    {
      b(new hxt(paramByteBuffer));
      return;
    }
    paramByteBuffer = a.a(this, paramByteBuffer);
    if (c != null) {
      paramByteBuffer = c.a((igq)g, paramByteBuffer);
    }
    for (;;)
    {
      if (paramByteBuffer != null)
      {
        if (p())
        {
          localObject = String.valueOf(g);
          new StringBuilder(String.valueOf(localObject).length() + 31).append("Delivering image to consumers: ").append((String)localObject);
        }
        b(paramByteBuffer);
        return;
      }
      if (p())
      {
        paramByteBuffer = String.valueOf(g);
        new StringBuilder(String.valueOf(paramByteBuffer).length() + 26).append("Bad image; cannot decode: ").append(paramByteBuffer);
      }
      paramByteBuffer = f();
      if (paramByteBuffer != null) {
        paramByteBuffer.delete();
      }
      a.a(this, 5);
      return;
    }
  }
  
  public abstract String a();
  
  public final void a(int paramInt)
  {
    b.g();
    super.a(paramInt);
  }
  
  public final void a(int paramInt, String paramString)
  {
    b.g();
    super.a(paramInt, paramString);
  }
  
  public final void a(long paramLong1, long paramLong2) {}
  
  public final void a(long paramLong, String paramString, int paramInt1, int paramInt2, int paramInt3, Bitmap paramBitmap)
  {
    d = (SystemClock.currentThreadTimeMillis() - paramLong);
    paramLong = d;
    e = (23 + paramLong + " ms");
    p = paramString;
    q = paramInt1;
    if (p()) {
      if (paramBitmap != null) {
        break label188;
      }
    }
    label188:
    int i;
    int j;
    for (paramBitmap = "null";; paramBitmap = 25 + "[" + i + "x" + j + "]")
    {
      String str = e;
      new StringBuilder(String.valueOf(paramString).length() + 80 + String.valueOf(paramBitmap).length() + String.valueOf(str).length()).append("Decoded ").append(paramInt1).append(" byte ").append(paramString).append(" from source [").append(paramInt2).append("x").append(paramInt3).append("] into bitmap ").append(paramBitmap).append(" in ").append(str);
      s = null;
      t = null;
      u = null;
      v = null;
      return;
      i = paramBitmap.getWidth();
      j = paramBitmap.getHeight();
    }
  }
  
  public void a(Object paramObject)
  {
    boolean bool2 = false;
    Object localObject1;
    Object localObject2;
    if ((g).i & 0x2) != 0)
    {
      b.g();
      paramObject = b.d();
      if (p())
      {
        localObject1 = String.valueOf(g);
        localObject2 = String.valueOf(paramObject);
        new StringBuilder(String.valueOf(localObject1).length() + 48 + String.valueOf(localObject2).length()).append("Completing a download-only request: ").append((String)localObject1).append(" file name: ").append((String)localObject2);
      }
      a.a(this, 1, paramObject);
    }
    do
    {
      do
      {
        return;
        localObject2 = (ByteBuffer)paramObject;
        if (p())
        {
          int i = ((ByteBuffer)localObject2).remaining();
          paramObject = String.valueOf(g);
          new StringBuilder(String.valueOf(paramObject).length() + 47).append("Delivering data: ").append((String)paramObject).append("; buffer has ").append(i).append(" bytes");
        }
      } while (localObject2 == null);
      localObject1 = (igq)g;
      b.g();
      b.h();
    } while ((this.i != 2) && (((ByteBuffer)localObject2).remaining() == 0));
    boolean bool1;
    if ((b.j() == -1L) && (this.i != 2)) {
      bool1 = true;
    }
    for (;;)
    {
      if (bool1)
      {
        paramObject = e();
        label264:
        if ((i & 0x400) != 0) {
          bool2 = true;
        }
        if ((i & 0x2) == 0) {
          break label458;
        }
        a((String)paramObject, (ByteBuffer)localObject2, bool1, bool2);
        if (p())
        {
          localObject1 = String.valueOf(g);
          localObject2 = String.valueOf(f());
          if (!bool2) {
            break label451;
          }
        }
      }
      label451:
      for (paramObject = "; long-term cache";; paramObject = "")
      {
        new StringBuilder(String.valueOf(localObject1).length() + 48 + String.valueOf(localObject2).length() + String.valueOf(paramObject).length()).append("Completing a download-only request: ").append((String)localObject1).append(" file name: ").append((String)localObject2).append((String)paramObject);
        a.a(this, 1, f());
        return;
        if ((b.j() <= 0L) || (((ByteBuffer)localObject2).remaining() >= b.j())) {
          break label584;
        }
        bool1 = true;
        break;
        paramObject = d();
        break label264;
      }
      label458:
      if (!bool1) {
        a((ByteBuffer)localObject2);
      }
      if ((i & 0x1) != 0) {
        break;
      }
      String str;
      if (p())
      {
        str = String.valueOf(g);
        if (!bool2) {
          break label576;
        }
      }
      label576:
      for (localObject1 = "; long-term cache";; localObject1 = "")
      {
        new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(paramObject).length() + String.valueOf(localObject1).length()).append("Saving image in file cache: ").append(str).append(" file name: ").append((String)paramObject).append((String)localObject1);
        a((String)paramObject, (ByteBuffer)localObject2, bool1, bool2);
        return;
      }
      label584:
      bool1 = false;
    }
  }
  
  protected final void a(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append("\n  Size:").append(j());
  }
  
  public abstract String b();
  
  public void c()
  {
    Object localObject3 = (igq)g;
    Object localObject1;
    if ((i & 0x80) != 0)
    {
      if (p())
      {
        localObject1 = String.valueOf(g);
        localObject3 = String.valueOf(f());
        new StringBuilder(String.valueOf(localObject1).length() + 34 + String.valueOf(localObject3).length()).append("Loading disabled for: ").append((String)localObject1).append(" file name: ").append((String)localObject3);
      }
      a.a(this, 3, null);
      return;
    }
    Object localObject4;
    if ((i & 0x2) != 0)
    {
      localObject1 = g();
      if (localObject1 != null)
      {
        if (p())
        {
          localObject3 = String.valueOf(g);
          localObject4 = String.valueOf(localObject1);
          new StringBuilder(String.valueOf(localObject3).length() + 46 + String.valueOf(localObject4).length()).append("Returning file name to consumers: ").append((String)localObject3).append(" file name: ").append((String)localObject4);
        }
        a.a(this, 1, localObject1);
        return;
      }
    }
    if ((i & 0x1) == 0)
    {
      localObject4 = g();
      if (localObject4 != null) {
        if (p())
        {
          localObject1 = String.valueOf(g);
          String str2 = String.valueOf(localObject4);
          new StringBuilder(String.valueOf(localObject1).length() + 37 + String.valueOf(str2).length()).append("Loading image from file: ").append((String)localObject1).append(" file name: ").append(str2);
        }
      }
    }
    String str1;
    for (;;)
    {
      try
      {
        localObject1 = aal.a((File)localObject4, true);
        if (localObject1 == null) {
          break;
        }
        a((ByteBuffer)localObject1);
        return;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        Object localObject2 = null;
        continue;
      }
      catch (IOException localIOException)
      {
        localObject4 = String.valueOf(localObject4);
        a(String.valueOf(localObject4).length() + 18 + "Cannot load file: " + (String)localObject4, localIOException);
      }
      str1 = null;
    }
    if ((i & 0x40000) != 0)
    {
      if (p())
      {
        str1 = String.valueOf(g);
        localObject3 = String.valueOf(f());
        new StringBuilder(String.valueOf(str1).length() + 38 + String.valueOf(localObject3).length()).append("Downloading disabled for: ").append(str1).append(" file name: ").append((String)localObject3);
      }
      a.a(this, 3, null);
      return;
    }
    if (p())
    {
      str1 = String.valueOf(g);
      new StringBuilder(String.valueOf(str1).length() + 21).append("Requesting download: ").append(str1);
    }
    h();
  }
  
  public String d()
  {
    return b();
  }
  
  public String e()
  {
    String str = String.valueOf(d());
    return String.valueOf(str).length() + 1 + str + '~';
  }
  
  public File f()
  {
    Object localObject = (igq)g;
    if ((i & 0x1) != 0) {
      return null;
    }
    if ((i & 0x400) != 0) {}
    for (localObject = a.c();; localObject = a.b()) {
      return new File(((hxm)localObject).b(d()));
    }
  }
  
  public File g()
  {
    String str = d();
    File localFile = a.b().a(str);
    if (localFile != null) {
      return localFile;
    }
    return a.c().a(str);
  }
  
  public void h()
  {
    b.f();
    String str = a();
    b.a(str);
    if (str == null)
    {
      if (Log.isLoggable("ImageResource", 3))
      {
        str = String.valueOf(g);
        new StringBuilder(String.valueOf(str).length() + 35).append("Unable to download null image url: ").append(str);
      }
      a(5);
      return;
    }
    if ((g).i & 0x2) != 0)
    {
      b.b();
      return;
    }
    b.c();
  }
  
  public final void i()
  {
    Bitmap localBitmap;
    if ((g).i & 0x10) == 0)
    {
      if (!(h instanceof Bitmap)) {
        break label65;
      }
      localBitmap = (Bitmap)h;
    }
    for (;;)
    {
      if (localBitmap != null)
      {
        if (localBitmap.isMutable()) {
          localBitmap.eraseColor(0);
        }
        a.a(localBitmap);
      }
      super.i();
      return;
      label65:
      if ((h instanceof hxu)) {
        localBitmap = h).a;
      } else {
        localBitmap = null;
      }
    }
  }
  
  public final int j()
  {
    if (r == -1)
    {
      if (h == null) {
        break label126;
      }
      if (!(h instanceof Bitmap)) {
        break label44;
      }
      r = a((Bitmap)h);
    }
    for (;;)
    {
      return r;
      label44:
      if ((h instanceof hxu)) {
        r = a(h).a);
      } else if ((h instanceof hxt)) {
        r = ((hxt)h).a();
      } else if ((h instanceof byte[])) {
        r = ((byte[])h).length;
      } else {
        label126:
        r = Integer.MAX_VALUE;
      }
    }
  }
  
  String k()
  {
    long l1 = b.k();
    long l2 = b.i();
    String str = 23 + (l1 - l2) + " ms";
    o = str;
    return str;
  }
}

/* Location:
 * Qualified Name:     hya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */