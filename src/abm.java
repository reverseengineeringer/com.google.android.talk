import android.app.ActionBar;
import android.graphics.drawable.Drawable;

public final class abm
{
  final ActionBar a;
  
  public abm(ActionBar paramActionBar)
  {
    a = paramActionBar;
  }
  
  public void a()
  {
    a.setDisplayHomeAsUpEnabled(true);
  }
  
  public void a(abn paramabn)
  {
    a.addOnMenuVisibilityListener(new abo(this, paramabn));
  }
  
  public void a(Drawable paramDrawable)
  {
    a.setLogo(paramDrawable);
  }
  
  public void a(CharSequence paramCharSequence)
  {
    a.setTitle(paramCharSequence);
  }
  
  public void b()
  {
    a.setDisplayOptions(8, 8);
  }
  
  public void b(CharSequence paramCharSequence)
  {
    a.setSubtitle(paramCharSequence);
  }
  
  public void c()
  {
    a.show();
  }
  
  public void d()
  {
    a.hide();
  }
}

/* Location:
 * Qualified Name:     abm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */