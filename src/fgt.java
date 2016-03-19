import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.ArrayList;
import java.util.TimeZone;

public final class fgt
{
  private int b = fgr.a(a);
  private String c = fgr.b(a);
  private String d = fgr.c(a);
  private String e = fgr.d(a);
  private int f = fgr.e(a);
  private final a g;
  private a h;
  private ArrayList<Integer> i = null;
  private final gbt j = new gbt();
  private boolean k = false;
  
  fgt(fgr paramfgr, byte[] paramArrayOfByte)
  {
    this(paramfgr, paramArrayOfByte, (byte)0);
  }
  
  private fgt(fgr paramfgr, byte[] paramArrayOfByte, byte paramByte)
  {
    d = fgr.c(paramfgr);
    e = fgr.d(paramfgr);
    j.a = fgr.f(paramfgr).a();
    j.b = fgr.f(paramfgr).b();
    gbt localgbt = j;
    fgr.g(paramfgr);
    long l = j.a;
    n = (TimeZone.getDefault().getOffset(l) / 1000);
    if (paramArrayOfByte != null) {
      j.i = paramArrayOfByte;
    }
    g = null;
  }
  
  private LogEventParcelable b()
  {
    return new LogEventParcelable(new PlayLoggerContext(fgr.i(a), fgr.j(a), b, c, d, e, fgr.h(a), f), j, g, h, fgr.a(i));
  }
  
  public fgt a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public fij<Status> a()
  {
    if (k) {
      throw new IllegalStateException("do not reuse LogEventBuilder");
    }
    k = true;
    return fgr.k(a).a(fgr.l(a), b());
  }
  
  public fij<Status> a(fic paramfic)
  {
    if (k) {
      throw new IllegalStateException("do not reuse LogEventBuilder");
    }
    k = true;
    return fgr.k(a).a(paramfic, b());
  }
  
  public fij<Status> b(fic paramfic)
  {
    if (k) {
      throw new IllegalStateException("do not reuse LogEventBuilder");
    }
    k = true;
    return fgr.k(a).b(paramfic, b());
  }
}

/* Location:
 * Qualified Name:     fgt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */