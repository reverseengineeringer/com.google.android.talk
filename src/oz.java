import android.content.Context;
import android.graphics.Canvas;
import android.os.Build.VERSION;

public final class oz
{
  private static final pc b = new pa();
  private Object a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      b = new pd();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      b = new pb();
      return;
    }
  }
  
  public oz(Context paramContext)
  {
    a = b.a(paramContext);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    b.a(a, paramInt1, paramInt2);
  }
  
  public boolean a()
  {
    return b.a(a);
  }
  
  public boolean a(float paramFloat)
  {
    return b.a(a, paramFloat);
  }
  
  public boolean a(float paramFloat1, float paramFloat2)
  {
    return b.a(a, paramFloat1, paramFloat2);
  }
  
  public boolean a(int paramInt)
  {
    return b.a(a, paramInt);
  }
  
  public boolean a(Canvas paramCanvas)
  {
    return b.a(a, paramCanvas);
  }
  
  public void b()
  {
    b.b(a);
  }
  
  public boolean c()
  {
    return b.c(a);
  }
}

/* Location:
 * Qualified Name:     oz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */