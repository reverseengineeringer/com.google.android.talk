import android.content.Context;
import com.google.android.libraries.social.settings.CheckBoxPreference;

public final class iin
  extends CheckBoxPreference
{
  private final iio c;
  
  public iin(Context paramContext, int paramInt, String paramString, Boolean paramBoolean)
  {
    super(paramContext);
    Boolean localBoolean = paramBoolean;
    if (paramBoolean == null) {
      localBoolean = Boolean.valueOf(false);
    }
    b(localBoolean);
    c = new iio(paramContext, paramInt, paramString);
  }
  
  protected void a(boolean paramBoolean, Object paramObject)
  {
    a(c(((Boolean)paramObject).booleanValue()));
  }
  
  protected boolean b(boolean paramBoolean)
  {
    c.a(paramBoolean);
    return true;
  }
  
  protected boolean c(boolean paramBoolean)
  {
    return c.b(paramBoolean).booleanValue();
  }
}

/* Location:
 * Qualified Name:     iin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */