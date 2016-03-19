import android.view.View;

final class aa
  implements Runnable
{
  private final View b;
  private final boolean c;
  
  aa(y paramy, View paramView, boolean paramBoolean)
  {
    b = paramView;
    c = paramBoolean;
  }
  
  public void run()
  {
    if ((a.b != null) && (a.b.f())) {
      ks.a(b, this);
    }
    while ((!c) || (a.c == null)) {
      return;
    }
    a.c.a();
  }
}

/* Location:
 * Qualified Name:     aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */