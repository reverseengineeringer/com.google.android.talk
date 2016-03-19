import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;

public final class sv
  extends ActionMode
{
  final Context a;
  final wb b;
  
  public sv(Context paramContext, wb paramwb)
  {
    a = paramContext;
    b = paramwb;
  }
  
  public void finish()
  {
    b.c();
  }
  
  public View getCustomView()
  {
    return b.i();
  }
  
  public Menu getMenu()
  {
    return aal.a(a, (gi)b.b());
  }
  
  public MenuInflater getMenuInflater()
  {
    return b.a();
  }
  
  public CharSequence getSubtitle()
  {
    return b.g();
  }
  
  public Object getTag()
  {
    return b.j();
  }
  
  public CharSequence getTitle()
  {
    return b.f();
  }
  
  public boolean getTitleOptionalHint()
  {
    return b.k();
  }
  
  public void invalidate()
  {
    b.d();
  }
  
  public boolean isTitleOptional()
  {
    return b.h();
  }
  
  public void setCustomView(View paramView)
  {
    b.a(paramView);
  }
  
  public void setSubtitle(int paramInt)
  {
    b.b(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    b.a(paramCharSequence);
  }
  
  public void setTag(Object paramObject)
  {
    b.a(paramObject);
  }
  
  public void setTitle(int paramInt)
  {
    b.a(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    b.b(paramCharSequence);
  }
  
  public void setTitleOptionalHint(boolean paramBoolean)
  {
    b.a(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     sv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */