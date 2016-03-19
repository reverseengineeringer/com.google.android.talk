import com.google.android.apps.hangouts.hangout.StressMode;

public final class ekw
  implements iov, ioz
{
  private final ijc a;
  private final hqb b;
  private final String c;
  private final String d;
  private final String e;
  
  public ekw(ijc paramijc, hqb paramhqb, String paramString1, String paramString2, String paramString3)
  {
    a = paramijc;
    b = paramhqb;
    c = paramString1;
    d = paramString2;
    e = paramString3;
  }
  
  public void X_()
  {
    if (c != null) {}
    for (boolean bool1 = b.a(c, true);; bool1 = true)
    {
      String str = b.a(e, "ANY_RINGTONE_NOT_SILENT");
      boolean bool2 = b.a(d, true);
      int i;
      if (!bool1) {
        i = StressMode.gX;
      }
      for (;;)
      {
        a.h(i);
        return;
        if ((str != null) && (bool2)) {
          i = StressMode.hy;
        } else if (str != null) {
          i = StressMode.hz;
        } else if (bool2) {
          i = StressMode.sC;
        } else {
          i = StressMode.jl;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     ekw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */