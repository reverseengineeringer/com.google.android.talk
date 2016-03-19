import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.List;

final class bvv
  extends ecg<bvx>
{
  public bvv(bvx parambvx)
  {
    super(parambvx);
  }
  
  public boolean E_()
  {
    return true;
  }
  
  public boolean F_()
  {
    return true;
  }
  
  protected dom a(bfd parambfd, int paramInt)
  {
    ksf localksf = ((bvx)a).g();
    if ((localksf == null) || (localksf.size() == 0) || (!bkr.b.equals(get0c))) {
      return new bvq(aal.oJ, parambfd, efh.a, paramInt, (bvx)a);
    }
    return new bvq(aal.oJ, parambfd, efh.b, paramInt, (bvx)a);
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  public void a(int paramInt, dvn paramdvn)
  {
    bfd localbfd = dvd.e(paramInt);
    String str1 = ((bvx)a).b();
    paramInt = paramdvn.c();
    if ((!TextUtils.isEmpty(str1)) && (paramInt == 113)) {}
    for (paramInt = 1; paramInt != 0; paramInt = 0)
    {
      RealTimeChatService.f(localbfd, str1);
      if ((paramdvn != null) && (paramdvn.c() != 0))
      {
        aal.a(localbfd, 1523);
        aen.a(localbfd.g(), SystemClock.elapsedRealtime(), 5, new csn().a(paramdvn.c()).b(((bvx)a).a()).a(((bvx)a).b()));
      }
      if (paramdvn.c() != 121) {
        new Handler(Looper.getMainLooper()).post(new bvw(this));
      }
      return;
    }
    String str2 = ((bvx)a).a();
    if (paramdvn != null) {}
    for (paramInt = paramdvn.c();; paramInt = 0)
    {
      RealTimeChatService.a(localbfd, str1, str2, paramInt);
      ((cyh)ilh.a(aal.oJ, cyh.class)).c(localbfd.g());
      break;
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    return false;
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    if ((paramdvn.c() == 101) || (paramdvn.c() == 102) || (paramdvn.c() == 103)) {
      return true;
    }
    return super.a(paramcwk, paramdvn);
  }
  
  public boolean a(String paramString)
  {
    return paramString.startsWith(((bvx)a).a());
  }
  
  public long b()
  {
    return Long.MAX_VALUE;
  }
  
  public String e()
  {
    Object localObject = ((bvx)a).f();
    if (((List)localObject).size() != 1) {
      localObject = null;
    }
    String str;
    do
    {
      return (String)localObject;
      str = get0b;
      localObject = str;
    } while (aal.u(str));
    return null;
  }
}

/* Location:
 * Qualified Name:     bvv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */