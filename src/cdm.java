import android.content.Context;
import android.content.res.Resources;
import android.database.MatrixCursor;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cdm
  extends MatrixCursor
  implements bzh
{
  private static final String[] a = { "DisplayName", "PhoneNumber" };
  private boolean b = false;
  
  public cdm()
  {
    super(a);
  }
  
  public gpr a()
  {
    return null;
  }
  
  public void a(byu parambyu) {}
  
  public void a(String paramString, Context paramContext)
  {
    if (!b)
    {
      String str = ezm.p(paramString);
      addRow(new Object[] { paramContext.getResources().getString(StressMode.R, new Object[] { str }), paramString });
      b = true;
      return;
    }
    ezi.e("Babel", "InputCallContactCursor.setPhone() was called more than once!", new Object[0]);
  }
  
  public bzq b()
  {
    return new bzq(new bzv(getString(1), ""));
  }
  
  public bzi c()
  {
    return null;
  }
  
  public int d()
  {
    return 2;
  }
  
  public int e()
  {
    return 0;
  }
  
  public boolean f()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     cdm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */