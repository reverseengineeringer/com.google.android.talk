import android.text.TextUtils;
import android.widget.TextView;
import com.google.android.libraries.quantum.snackbar.Snackbar;

public final class epj
  implements Runnable
{
  private final Snackbar a;
  private final epa b;
  private final epa c;
  private boolean d = true;
  private int e = -1;
  
  public epj(Snackbar paramSnackbar, epa paramepa1, epa paramepa2)
  {
    a = paramSnackbar;
    b = paramepa1;
    c = paramepa2;
    if (TextUtils.isEmpty(paramepa1.b()))
    {
      e = 0;
      d = false;
      return;
    }
    e = (paramepa1.b().length() - 1);
    d = true;
  }
  
  private CharSequence a(String paramString1, String paramString2)
  {
    return aal.a(paramString1, paramString2, (TextView)a.findViewById(aen.eg));
  }
  
  public void run()
  {
    if (d)
    {
      if (e <= 0)
      {
        d = false;
        a.a(a(b.a(), ""));
      }
      for (;;)
      {
        aal.a(this, 10L);
        return;
        str = b.b();
        i = str.codePointAt(e);
        e -= Character.charCount(i);
        str = str.substring(0, e);
        a.a(a(b.a(), str));
      }
    }
    if (TextUtils.isEmpty(c.b()))
    {
      a.a(c.a());
      return;
    }
    if (e >= c.b().length())
    {
      a.a(a(c.a(), c.b()));
      return;
    }
    String str = c.b();
    int i = str.codePointAt(e);
    int j = e;
    e = (Character.charCount(i) + j);
    str = str.substring(0, e);
    a.a(a(c.a(), str));
    aal.a(this, 10L);
  }
}

/* Location:
 * Qualified Name:     epj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */