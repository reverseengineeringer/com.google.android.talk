import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class edm
  extends edk
{
  public final String a;
  public final String b;
  public final int c;
  public final int d;
  public final long e;
  public final String f;
  public final czb g;
  public final long h;
  public long i;
  public final kfg[] j;
  public emc k;
  
  public edm(String paramString1, czb paramczb, long paramLong1, long paramLong2, String paramString2, String paramString3, int paramInt1, int paramInt2, long paramLong3, emc paramemc, byte[] paramArrayOfByte)
  {
    f = paramString1;
    g = paramczb;
    h = paramLong1;
    i = paramLong2;
    a = paramString2;
    b = paramString3;
    c = paramInt1;
    d = paramInt2;
    e = paramLong3;
    k = paramemc;
    paramString1 = null;
    if (paramArrayOfByte != null) {}
    for (;;)
    {
      try
      {
        paramczb = bkfilengtha;
        paramString1 = paramczb;
      }
      catch (lyg paramczb)
      {
        ezi.e("Babel", "Invalid protobuf set in Event and failed to process in EventProcessor.", new Object[0]);
        continue;
      }
      j = paramString1;
      return;
      paramString1 = null;
    }
  }
  
  public static void a(kfg[] paramArrayOfkfg, String paramString1, String paramString2, long paramLong, bfz parambfz)
  {
    if (paramArrayOfkfg == null) {}
    List localList;
    int i1;
    int m;
    do
    {
      return;
      localList = ilh.c(aal.oJ, ecw.class);
      i1 = paramArrayOfkfg.length;
      m = 0;
    } while (m >= i1);
    Object localObject3 = paramArrayOfkfg[m];
    Object localObject1 = localList.iterator();
    while (((Iterator)localObject1).hasNext()) {
      ((Iterator)localObject1).next();
    }
    switch (aal.a(c, 0))
    {
    }
    Object localObject2;
    int n;
    label299:
    Object localObject4;
    label387:
    label424:
    label461:
    label518:
    label524:
    label538:
    label575:
    label589:
    boolean bool;
    for (;;)
    {
      m += 1;
      break;
      localObject2 = new bgh();
      a = paramString1;
      b = paramString2;
      c = a;
      d = paramLong;
      e = aal.a(b, 0L);
      f = aal.a(c, 0);
      i = f;
      hbs.a(Integer.valueOf(f), Integer.valueOf(17));
      if (!aal.a(aal.oJ, "babel_disable_nlp_stickers", false)) {
        if ((!aal.t("armeabi-v7a")) && (!aal.t("arm64-v8a")))
        {
          ezi.c("Babel", "Skipping NLP sticker suggestion due to incompatible device.", new Object[0]);
        }
        else
        {
          aal.a(parambfz.g(), 2018, f);
          if (e != null)
          {
            if (e.d == null) {
              break label518;
            }
            n = aal.a(e.d, 0);
            h = n;
            if ((e.c != null) && (e.c.length > 0))
            {
              localObject4 = e.c[0];
              localObject3 = TextUtils.split((String)localObject4, "\\.");
              if (localObject3.length == 0)
              {
                localObject1 = String.valueOf("Malformed unsuffixed URL has been passed as a GEM suggestion asset. unsuffixedUrl: ");
                localObject4 = String.valueOf(localObject4);
                if (((String)localObject4).length() == 0) {
                  break label524;
                }
                localObject1 = ((String)localObject1).concat((String)localObject4);
                ezi.d("Babel", (String)localObject1, new Object[0]);
              }
              n = oJgetResourcesgetDisplayMetricsdensityDpi;
              if (n > 160) {
                break label538;
              }
              localObject1 = "_mdpi";
              localObject4 = String.valueOf(localObject3[(localObject3.length - 2)]);
              localObject1 = String.valueOf(localObject1);
              if (((String)localObject1).length() == 0) {
                break label575;
              }
              localObject1 = ((String)localObject4).concat((String)localObject1);
              localObject3[(localObject3.length - 2)] = localObject1;
              localObject1 = String.valueOf(TextUtils.join(".", (Object[])localObject3));
              if (((String)localObject1).length() == 0) {
                break label589;
              }
            }
          }
          for (localObject1 = "https:".concat((String)localObject1);; localObject1 = new String("https:"))
          {
            g = ((String)localObject1);
            parambfz.a((bgh)localObject2);
            break;
            n = 1;
            break label299;
            localObject1 = new String((String)localObject1);
            break label387;
            if (n <= 240)
            {
              localObject1 = "_hdpi";
              break label424;
            }
            if (n <= 320)
            {
              localObject1 = "_xhdpi";
              break label424;
            }
            localObject1 = "_xxhdpi";
            break label424;
            localObject1 = new String((String)localObject4);
            break label461;
          }
          hbs.a("Requires location sharing suggestion. WHERE_AM_I or WHERE_YOU_AT.", kth.a(2, new Object[] { Integer.valueOf(3), Integer.valueOf(19) }).contains(Integer.valueOf(aal.a(c, 0))));
          bool = c.equals(Integer.valueOf(19));
          if (aal.a(aal.oJ, "babel_location_request_suggestions_enabled", true))
          {
            if (aal.a(parambfz.g(), bhh.a)) {
              break label703;
            }
            ezi.c("Babel", "Location sharing disallowed. Ignoring location request suggestion", new Object[0]);
          }
        }
      }
    }
    label703:
    localObject1 = parambfz.g();
    label720:
    long l1;
    long l2;
    long l3;
    czb localczb;
    if (bool)
    {
      n = 2518;
      aal.a((bfd)localObject1, n, f);
      parambfz.a(paramString1, emd.a);
      parambfz.a(paramString1, emd.r);
      l1 = paramLong + TimeUnit.DAYS.toMicros(1L);
      n = aal.a(aal.oJ, "babel_location_request_suggestion_duration", 45);
      l2 = paramLong + TimeUnit.SECONDS.toMicros(n);
      ezi.a("Babel", 163 + "Adding location request system message with timestamp " + paramLong + " expiration timestamp " + l1 + " deleteAfterRead timestamp " + l2, new Object[0]);
      l3 = aal.a(aal.oJ, "babel_location_request_suggestion_timestamp_offset", 1L);
      localObject2 = bfz.i();
      localObject4 = emc.g;
      localczb = parambfz.g().b();
      if (!bool) {
        break label929;
      }
    }
    label929:
    for (localObject1 = emd.r;; localObject1 = emd.a)
    {
      parambfz.a(paramString1, (String)localObject2, (emc)localObject4, localczb, (emd)localObject1, paramLong + l3, l1, l2, 10, null, null, 0, f);
      break;
      n = 1939;
      break label720;
    }
  }
  
  protected final void a(bfz parambfz)
  {
    a(j, f, a, h, parambfz);
    if (g != null)
    {
      String str = g.a;
      if (!TextUtils.isEmpty(str))
      {
        parambfz = parambfz.g();
        if (!str.equals(ba))
        {
          long l = TimeUnit.MICROSECONDS.toMillis(h);
          ((dll)ilh.a(aal.oJ, dll.class)).a(parambfz.g(), str, dnv.f, Long.valueOf(l));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     edm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */