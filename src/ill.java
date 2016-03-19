import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;

public final class ill
  extends ContextWrapper
  implements ilk
{
  private final ilh a;
  private LayoutInflater b;
  
  public ill()
  {
    super(null);
    a = new ilh();
  }
  
  public ill(Context paramContext)
  {
    this(paramContext, ilh.b(paramContext));
  }
  
  public ill(Context paramContext, ilh paramilh)
  {
    super(paramContext);
    if (paramContext == null) {
      throw new IllegalArgumentException("Cannot construct BinderContextWrapper with null Context");
    }
    a = new ilh(this, paramilh);
  }
  
  public void a(Context paramContext)
  {
    attachBaseContext(paramContext);
    a.a(paramContext);
  }
  
  public void a(ilh paramilh)
  {
    a.a(paramilh);
  }
  
  public ilh getBinder()
  {
    return a;
  }
  
  public Object getSystemService(String paramString)
  {
    if (paramString.equals("layout_inflater"))
    {
      if (b == null) {
        b = ((LayoutInflater)super.getSystemService(paramString)).cloneInContext(this);
      }
      return b;
    }
    return super.getSystemService(paramString);
  }
}

/* Location:
 * Qualified Name:     ill
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */