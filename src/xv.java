import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;

class xv
  implements xx
{
  final RectF a = new RectF();
  
  private static aas d(xu paramxu)
  {
    return (aas)paramxu.getBackground();
  }
  
  public float a(xu paramxu)
  {
    return d(paramxu).a();
  }
  
  aas a(Context paramContext, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return new aas(paramContext.getResources(), paramInt, paramFloat1, paramFloat2, paramFloat3);
  }
  
  public void a()
  {
    aas.c = new xw(this);
  }
  
  public void a(xu paramxu, Context paramContext, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramContext = a(paramContext, paramInt, paramFloat1, paramFloat2, paramFloat3);
    paramContext.a(paramxu.N_());
    paramxu.setBackgroundDrawable(paramContext);
    c(paramxu);
  }
  
  public float b(xu paramxu)
  {
    return d(paramxu).b();
  }
  
  public void c(xu paramxu)
  {
    Rect localRect = new Rect();
    d(paramxu).a(localRect);
    ((View)paramxu).setMinimumHeight((int)Math.ceil(b(paramxu)));
    ((View)paramxu).setMinimumWidth((int)Math.ceil(a(paramxu)));
    paramxu.a(left, top, right, bottom);
  }
}

/* Location:
 * Qualified Name:     xv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */