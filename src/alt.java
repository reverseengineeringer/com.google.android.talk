import java.nio.ByteBuffer;
import java.security.MessageDigest;

final class alt
  implements aiw
{
  private static final avn<Class<?>, byte[]> b = new avn(50);
  private final aiw c;
  private final aiw d;
  private final int e;
  private final int f;
  private final Class<?> g;
  private final aja h;
  private final ajd<?> i;
  
  public alt(aiw paramaiw1, aiw paramaiw2, int paramInt1, int paramInt2, ajd<?> paramajd, Class<?> paramClass, aja paramaja)
  {
    c = paramaiw1;
    d = paramaiw2;
    e = paramInt1;
    f = paramInt2;
    i = paramajd;
    g = paramClass;
    h = paramaja;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    Object localObject = ByteBuffer.allocate(8).putInt(e).putInt(f).array();
    d.a(paramMessageDigest);
    c.a(paramMessageDigest);
    paramMessageDigest.update((byte[])localObject);
    if (i != null) {
      i.a(paramMessageDigest);
    }
    h.a(paramMessageDigest);
    byte[] arrayOfByte = (byte[])b.b(g);
    localObject = arrayOfByte;
    if (arrayOfByte == null)
    {
      localObject = g.getName().getBytes(a);
      b.b(g, localObject);
    }
    paramMessageDigest.update((byte[])localObject);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof alt))
    {
      paramObject = (alt)paramObject;
      bool1 = bool2;
      if (f == f)
      {
        bool1 = bool2;
        if (e == e)
        {
          bool1 = bool2;
          if (avq.a(i, i))
          {
            bool1 = bool2;
            if (g.equals(g))
            {
              bool1 = bool2;
              if (c.equals(c))
              {
                bool1 = bool2;
                if (d.equals(d))
                {
                  bool1 = bool2;
                  if (h.equals(h)) {
                    bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    int k = ((c.hashCode() * 31 + d.hashCode()) * 31 + e) * 31 + f;
    int j = k;
    if (i != null) {
      j = k * 31 + i.hashCode();
    }
    return (j * 31 + g.hashCode()) * 31 + h.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("ResourceCacheKey{sourceKey=");
    String str2 = String.valueOf(c);
    String str3 = String.valueOf(d);
    int j = e;
    int k = f;
    String str4 = String.valueOf(g);
    String str5 = String.valueOf(i);
    String str6 = String.valueOf(h);
    return String.valueOf(str1).length() + 104 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + str1 + str2 + ", signature=" + str3 + ", width=" + j + ", height=" + k + ", decodedResourceClass=" + str4 + ", transformation='" + str5 + "', options=" + str6 + "}";
  }
}

/* Location:
 * Qualified Name:     alt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */