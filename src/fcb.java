import android.content.Context;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class fcb
  extends fcu
{
  public fcb(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private fcb(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
  }
  
  public void a(bfd parambfd, boolean paramBoolean, String paramString1, int paramInt1, int paramInt2, int paramInt3, String paramString2, av paramav, String paramString3)
  {
    setOnClickListener(new fcc(this, paramav, paramString2));
    if (TextUtils.isEmpty(paramString3))
    {
      setContentDescription(paramString3);
      c(paramString3);
    }
    for (;;)
    {
      super.a(parambfd, paramBoolean, paramString1, paramInt1, paramInt2, paramInt3);
      return;
      a(StressMode.ci);
    }
  }
  
  public void a(String paramString) {}
  
  protected boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     fcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */