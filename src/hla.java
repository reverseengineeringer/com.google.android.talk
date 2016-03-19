import android.graphics.SurfaceTexture;
import android.view.Surface;

public final class hla
{
  private final SurfaceTexture a;
  private final Surface b;
  private final int c;
  private final int d;
  private final boolean e;
  
  public hla(SurfaceTexture paramSurfaceTexture)
  {
    this((SurfaceTexture)hbs.b("Expected non-null", paramSurfaceTexture), null, -1, -1, false);
  }
  
  private hla(SurfaceTexture paramSurfaceTexture, Surface paramSurface, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    a = paramSurfaceTexture;
    b = paramSurface;
    c = paramInt1;
    d = paramInt2;
    e = paramBoolean;
  }
  
  public hla(Surface paramSurface, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this(null, (Surface)hbs.b("Expected non-null", paramSurface), paramInt1, paramInt2, paramBoolean);
  }
  
  public SurfaceTexture a()
  {
    return a;
  }
  
  public Surface b()
  {
    return b;
  }
  
  public int c()
  {
    return c;
  }
  
  public int d()
  {
    return d;
  }
  
  public boolean e()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof hla))
    {
      paramObject = (hla)paramObject;
      bool1 = bool2;
      if (b == b)
      {
        bool1 = bool2;
        if (a == a) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf(b);
    String str2 = String.valueOf(a);
    int i = c;
    int j = d;
    boolean bool = e;
    return String.valueOf(str1).length() + 85 + String.valueOf(str2).length() + "SurfaceInfo(surface=" + str1 + ",surfaceTexture=" + str2 + ",width=" + i + ",height=" + j + ",clip=" + bool + ")";
  }
}

/* Location:
 * Qualified Name:     hla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */