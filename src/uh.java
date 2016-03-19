import android.view.View;

public final class uh
  implements mn
{
  int a;
  private boolean c = false;
  
  protected uh(ug paramug) {}
  
  public uh a(md parammd, int paramInt)
  {
    b.f = parammd;
    a = paramInt;
    return this;
  }
  
  public void a(View paramView)
  {
    ug.a(b);
    c = false;
  }
  
  public void b(View paramView)
  {
    if (c) {
      return;
    }
    b.f = null;
    ug.a(b, a);
  }
  
  public void c(View paramView)
  {
    c = true;
  }
}

/* Location:
 * Qualified Name:     uh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */