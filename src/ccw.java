import android.view.View;

public final class ccw
{
  public String a;
  public String b;
  public boolean c;
  public boolean d;
  public boolean e;
  public final int f;
  public View g;
  
  public ccw(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    a = paramString1;
    b = paramString2;
    c = paramBoolean1;
    d = paramBoolean2;
    f = paramInt;
    g = null;
    e = true;
  }
  
  public void a()
  {
    View localView;
    if (g != null)
    {
      g.setEnabled(e);
      localView = g;
      if (!e) {
        break label38;
      }
    }
    label38:
    for (float f1 = 1.0F;; f1 = 0.4F)
    {
      localView.setAlpha(f1);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
    a();
  }
}

/* Location:
 * Qualified Name:     ccw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */