import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;

public enum clq
{
  private final int f;
  private final int g;
  
  private clq(int paramInt)
  {
    this(paramInt, paramInt);
  }
  
  private clq(int paramInt1, int paramInt2)
  {
    f = paramInt1;
    g = paramInt2;
  }
  
  public String a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramContext.getResources().getString(g);
    }
    return paramContext.getResources().getString(f, new Object[] { paramString });
  }
}

/* Location:
 * Qualified Name:     clq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */