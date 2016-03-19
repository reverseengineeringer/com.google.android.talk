import android.os.Handler;
import android.os.Looper;

public final class ebv
  extends ecg<dpo>
{
  private final dpo b;
  
  public ebv(dpo paramdpo)
  {
    super(paramdpo);
    b = paramdpo;
  }
  
  public boolean E_()
  {
    return b.E_();
  }
  
  public boolean F_()
  {
    return b.F_();
  }
  
  protected dom a(bfd parambfd, int paramInt)
  {
    b.k();
    String str = null;
    if (parambfd != null)
    {
      int i = parambfd.g();
      str = ((awm)ilh.a(aal.oJ, awm.class)).e(i);
    }
    if (b.o()) {
      return new dol(parambfd, paramInt, b, str);
    }
    return new dok(parambfd, paramInt, b, str);
  }
  
  public String a()
  {
    return b.a();
  }
  
  protected void a(int paramInt, dvn paramdvn)
  {
    bfd localbfd = dvd.e(paramInt);
    b.a(localbfd, paramdvn);
    if (paramdvn.c() != 121) {
      new Handler(Looper.getMainLooper()).post(new ebw(this));
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    return false;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return b.a(paramcwk, paramdvn);
  }
  
  public boolean a(String paramString)
  {
    return b.a(paramString);
  }
  
  public long b()
  {
    return b.b();
  }
  
  public String e()
  {
    return b.e();
  }
}

/* Location:
 * Qualified Name:     ebv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */