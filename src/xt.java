import android.content.Context;
import android.view.View;

final class xt
  implements xx
{
  private static float c(xu paramxu)
  {
    return ((aar)paramxu.getBackground()).b();
  }
  
  public float a(xu paramxu)
  {
    return c(paramxu) * 2.0F;
  }
  
  public void a() {}
  
  public void a(xu paramxu, Context paramContext, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramxu.setBackgroundDrawable(new aar(paramInt, paramFloat1));
    paramContext = (View)paramxu;
    paramContext.setClipToOutline(true);
    paramContext.setElevation(paramFloat2);
    ((aar)paramxu.getBackground()).a(paramFloat3, paramxu.a(), paramxu.N_());
    if (!paramxu.a())
    {
      paramxu.a(0, 0, 0, 0);
      return;
    }
    paramFloat1 = ((aar)paramxu.getBackground()).a();
    paramFloat2 = c(paramxu);
    paramInt = (int)Math.ceil(aas.b(paramFloat1, paramFloat2, paramxu.N_()));
    int i = (int)Math.ceil(aas.a(paramFloat1, paramFloat2, paramxu.N_()));
    paramxu.a(paramInt, i, paramInt, i);
  }
  
  public float b(xu paramxu)
  {
    return c(paramxu) * 2.0F;
  }
}

/* Location:
 * Qualified Name:     xt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */