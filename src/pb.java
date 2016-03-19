import android.content.Context;
import android.graphics.Canvas;
import android.widget.EdgeEffect;

class pb
  implements pc
{
  public Object a(Context paramContext)
  {
    return new EdgeEffect(paramContext);
  }
  
  public void a(Object paramObject, int paramInt1, int paramInt2)
  {
    ((EdgeEffect)paramObject).setSize(paramInt1, paramInt2);
  }
  
  public boolean a(Object paramObject)
  {
    return ((EdgeEffect)paramObject).isFinished();
  }
  
  public boolean a(Object paramObject, float paramFloat)
  {
    return aal.a(paramObject, paramFloat);
  }
  
  public boolean a(Object paramObject, float paramFloat1, float paramFloat2)
  {
    return aal.a(paramObject, paramFloat1);
  }
  
  public boolean a(Object paramObject, int paramInt)
  {
    ((EdgeEffect)paramObject).onAbsorb(paramInt);
    return true;
  }
  
  public boolean a(Object paramObject, Canvas paramCanvas)
  {
    return ((EdgeEffect)paramObject).draw(paramCanvas);
  }
  
  public void b(Object paramObject)
  {
    ((EdgeEffect)paramObject).finish();
  }
  
  public boolean c(Object paramObject)
  {
    paramObject = (EdgeEffect)paramObject;
    ((EdgeEffect)paramObject).onRelease();
    return ((EdgeEffect)paramObject).isFinished();
  }
}

/* Location:
 * Qualified Name:     pb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */