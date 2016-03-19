import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.widget.TextView;

final class duo
{
  boolean a;
  boolean b;
  String c;
  private final Context d;
  private final int e;
  
  duo(Context paramContext, int paramInt)
  {
    d = paramContext;
    e = paramInt;
  }
  
  void a(Context paramContext, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    if (b)
    {
      paramContext = new Dialog(paramContext);
      paramContext.requestWindowFeature(1);
      paramContext.setContentView(aal.pP);
      ((TextView)paramContext.findViewById(aal.pL)).setOnClickListener(new dup(paramContext));
      paramContext.show();
    }
    while (!a) {
      return;
    }
    paramOnCancelListener = c;
    String str = paramContext.getString(aal.pS, new Object[] { "11" });
    paramContext = new Dialog(paramContext);
    paramContext.requestWindowFeature(1);
    paramContext.setContentView(aal.pO);
    ((TextView)paramContext.findViewById(aal.pN)).setText(String.valueOf(paramOnCancelListener).length() + 2 + "\"" + paramOnCancelListener + "\"");
    ((TextView)paramContext.findViewById(aal.pM)).setText(str);
    ((TextView)paramContext.findViewById(aal.pL)).setOnClickListener(new duq(paramContext));
    paramContext.show();
  }
  
  boolean a()
  {
    return (!((awo)ilh.a(d, awo.class)).f(e)) && ((a) || (b));
  }
}

/* Location:
 * Qualified Name:     duo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */