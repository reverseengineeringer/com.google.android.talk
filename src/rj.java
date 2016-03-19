import android.content.Context;
import android.graphics.drawable.Drawable;

final class rj
  implements qi
{
  rj(ri paramri) {}
  
  public Drawable a()
  {
    vw localvw = vw.a(b(), null, new int[] { aen.V });
    Drawable localDrawable = localvw.a(0);
    localvw.a();
    return localDrawable;
  }
  
  public void a(int paramInt)
  {
    qe localqe = a.a();
    if (localqe != null) {
      localqe.c(paramInt);
    }
  }
  
  public void a(Drawable paramDrawable, int paramInt)
  {
    qe localqe = a.a();
    if (localqe != null)
    {
      localqe.a(paramDrawable);
      localqe.c(paramInt);
    }
  }
  
  public Context b()
  {
    return a.l();
  }
  
  public boolean c()
  {
    qe localqe = a.a();
    return (localqe != null) && ((localqe.d() & 0x4) != 0);
  }
}

/* Location:
 * Qualified Name:     rj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */