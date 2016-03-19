import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Random;

public final class bvh
  implements bvg
{
  private final Context a;
  private final ilh b;
  private final bvj c;
  private final eit d;
  
  public bvh(Context paramContext)
  {
    a = paramContext;
    b = ilh.b(paramContext);
    c = new bvj(paramContext);
    d = ((eit)b.a(eit.class));
  }
  
  private String a(bfd parambfd, String paramString1, String paramString2, String paramString3, boolean paramBoolean, bkq parambkq)
  {
    String str = bfz.i();
    ((bcm)ilh.a(a, bcm.class)).a(new bvr(a, parambfd, paramString1, paramString2, parambkq, 0, paramString3, paramBoolean, str, SystemClock.elapsedRealtime()));
    return str;
  }
  
  private static boolean a(int paramInt)
  {
    return dvp.R.b(paramInt);
  }
  
  public String a(int paramInt, String paramString, blb paramblb)
  {
    bfd localbfd = dvd.e(paramInt);
    if (a(paramInt)) {
      return a(localbfd, paramString, "", "", true, paramblb);
    }
    return ((efk)b.a(efk.class)).a(localbfd, paramString, "", a, g, null, f, e, d, "", true, null, 0);
  }
  
  public String a(int paramInt1, String paramString1, String paramString2, bkq parambkq, boolean paramBoolean, int paramInt2)
  {
    bfd localbfd = dvd.e(paramInt1);
    if (a(paramInt1)) {
      return a(localbfd, paramString1, paramString2, "", paramBoolean, parambkq);
    }
    Object localObject2;
    Object localObject1;
    geo localgeo;
    if (parambkq != null) {
      switch (bvi.a[c.ordinal()])
      {
      default: 
        return null;
      case 1: 
        localObject2 = (blj)parambkq;
        localObject1 = e;
        parambkq = a;
        localObject2 = d;
        localgeo = null;
      }
    }
    for (;;)
    {
      return ((efk)b.a(efk.class)).a(localbfd, paramString1, paramString2, parambkq, 0, (String)localObject1, 0, 0, (String)localObject2, "", paramBoolean, localgeo, 0);
      localgeo = e;
      if (aal.f(paramInt2))
      {
        parambkq = EsProvider.a(paramInt1, Math.abs(bzw.bz.nextLong()));
        localObject1 = (crv)ilh.a(a, crv.class);
        localObject2 = ezc.a(((crv)localObject1).a(localgeo));
        paramInt1 = ((crv)localObject1).a();
        localObject1 = new bhs(new eyd((String)localObject2, null).a(paramInt1), c, true, parambkq);
        d.a((ehx)localObject1);
        localObject1 = parambkq.toString();
        if (localObject1 == null) {
          parambkq = null;
        }
      }
      for (;;)
      {
        Object localObject3 = null;
        localObject2 = parambkq;
        parambkq = (bkq)localObject1;
        localObject1 = localObject3;
        break;
        parambkq = "hangouts/location";
        continue;
        localObject1 = null;
        parambkq = "hangouts/location";
      }
      localObject1 = null;
      parambkq = null;
      localObject2 = null;
      localgeo = null;
    }
  }
  
  public void a(int paramInt1, String paramString, int paramInt2)
  {
    bfd localbfd = dvd.e(paramInt1);
    if (a(paramInt1))
    {
      ((bcm)ilh.a(a, bcm.class)).a(new bvo(localbfd, paramString, paramInt2));
      return;
    }
    RealTimeChatService.b(localbfd, paramString, paramInt2);
  }
}

/* Location:
 * Qualified Name:     bvh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */