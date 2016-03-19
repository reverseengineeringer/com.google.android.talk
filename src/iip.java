import android.content.Context;

public final class iip
  extends ike
{
  private final iio c;
  
  public iip(Context paramContext, int paramInt, String paramString)
  {
    this(paramContext, paramInt, paramString, null);
  }
  
  public iip(Context paramContext, int paramInt, String paramString, Boolean paramBoolean)
  {
    super(paramContext, (byte)0);
    Boolean localBoolean = paramBoolean;
    if (paramBoolean == null) {
      localBoolean = Boolean.FALSE;
    }
    b(localBoolean);
    c = new iio(paramContext, paramInt, paramString);
  }
  
  protected void a(boolean paramBoolean, Object paramObject)
  {
    a(c(aal.a((Boolean)paramObject, false)));
  }
  
  protected boolean b(boolean paramBoolean)
  {
    c.a(paramBoolean);
    return true;
  }
  
  protected boolean c(boolean paramBoolean)
  {
    return aal.a(c.b(paramBoolean), false);
  }
}

/* Location:
 * Qualified Name:     iip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */