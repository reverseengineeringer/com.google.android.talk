import android.content.Context;
import android.os.ConditionVariable;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.StressMode;

final class bka
  extends ebh
{
  final Context a;
  Exception b;
  int c;
  String d;
  private final ConditionVariable f;
  
  bka(bjz parambjz, Context paramContext, ConditionVariable paramConditionVariable)
  {
    super(paramContext);
    a = paramContext;
    f = paramConditionVariable;
  }
  
  public void a(int paramInt, bfd parambfd, dwd paramdwd, eau parameau)
  {
    if (paramInt != c) {
      return;
    }
    if (parameau.b() != 1)
    {
      paramInt = parameau.b();
      ezi.e("Babel_ConvCreator", 89 + "Error in RealTimeChatServiceResult returned by conversation creation request: " + paramInt, new Object[0]);
      parambfd = a;
      if (parameau.b() == 4)
      {
        paramInt = StressMode.aD;
        Toast.makeText(parambfd, paramInt, 0).show();
      }
    }
    for (;;)
    {
      f.open();
      return;
      paramInt = StressMode.bZ;
      break;
      d = a;
    }
  }
  
  protected void a(eau parameau) {}
  
  protected void a(Exception paramException)
  {
    b = paramException;
    f.open();
  }
}

/* Location:
 * Qualified Name:     bka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */