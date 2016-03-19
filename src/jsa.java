import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;

public final class jsa<C>
  extends ContextWrapper
  implements jry<C>
{
  private final C a;
  private LayoutInflater b;
  
  public jsa(Context paramContext, C paramC)
  {
    super((Context)fii.a(paramContext));
    a = fii.a(paramC);
  }
  
  public C a()
  {
    return (C)a;
  }
  
  public LayoutInflater b()
  {
    if (b == null) {
      b = LayoutInflater.from(getBaseContext()).cloneInContext(this);
    }
    return b;
  }
  
  public Object getSystemService(String paramString)
  {
    if ("layout_inflater".equals(paramString)) {
      return b();
    }
    return getBaseContext().getSystemService(paramString);
  }
}

/* Location:
 * Qualified Name:     jsa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */