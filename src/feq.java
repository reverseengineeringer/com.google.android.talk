import android.content.Context;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class feq
  extends fcu
{
  String a;
  
  public feq(Context paramContext)
  {
    this(paramContext, (byte)0);
  }
  
  private feq(Context paramContext, byte paramByte)
  {
    super(paramContext, null);
  }
  
  public void a(bfd parambfd, boolean paramBoolean, String paramString1, String paramString2, av paramav, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramString1);
    setOnClickListener(new fer(this, paramString1, paramString2, paramav));
    a(StressMode.sD);
    if (enn.a()) {}
    for (paramString1 = a;; paramString1 = null)
    {
      super.a(parambfd, paramBoolean, paramString1, paramInt1, paramInt2, paramInt3);
      return;
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  protected boolean f()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     feq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */