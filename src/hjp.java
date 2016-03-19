import android.graphics.SurfaceTexture;

class hjp
  extends hle
{
  hjp(hjk paramhjk) {}
  
  public void a(SurfaceTexture paramSurfaceTexture)
  {
    
    synchronized (b.s)
    {
      b.w = paramSurfaceTexture;
      b.a(b.r);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hjp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */