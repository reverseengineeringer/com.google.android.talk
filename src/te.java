import android.support.v7.internal.view.menu.ActionMenuItemView;

public final class te
  extends ze
{
  public te(ActionMenuItemView paramActionMenuItemView)
  {
    super(paramActionMenuItemView);
  }
  
  public za a()
  {
    if (a.c != null) {
      return a.c.a();
    }
    return null;
  }
  
  protected boolean b()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (a.b != null)
    {
      bool1 = bool2;
      if (a.b.a(a.a))
      {
        za localza = a();
        bool1 = bool2;
        if (localza != null)
        {
          bool1 = bool2;
          if (localza.n()) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     te
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */