import android.os.Handler;

final class hdg
  implements Runnable
{
  hdg(hdf paramhdf) {}
  
  public void run()
  {
    a.c.removeCallbacks(a.e);
    a.c.postDelayed(a.e, 1000L);
    hdf localhdf = a;
    int j;
    int k;
    int i;
    Object localObject;
    label161:
    label267:
    double d2;
    if (hdf.b != 0)
    {
      j = hdf.a("online");
      j = 0;
      k = 0;
      i = 0;
      if (j < j)
      {
        localObject = String.valueOf("/sys/devices/system/cpu/cpu");
        String str1 = String.valueOf(localObject).length() + 11 + (String)localObject + j;
        if (d[j] == 0)
        {
          localObject = String.valueOf(str1);
          String str2 = String.valueOf("/cpufreq/cpuinfo_max_freq");
          if (str2.length() != 0)
          {
            localObject = ((String)localObject).concat(str2);
            d[j] = hdf.b((String)localObject);
          }
        }
        else
        {
          k += d[j];
          localObject = String.valueOf(str1);
          str1 = String.valueOf("/cpufreq/scaling_cur_freq");
          if (str1.length() == 0) {
            break label267;
          }
        }
        for (localObject = ((String)localObject).concat(str1);; localObject = new String((String)localObject))
        {
          int m = hdf.b((String)localObject);
          i += m;
          if (j == 0) {
            h = m;
          }
          j += 1;
          break;
          localObject = new String((String)localObject);
          break label161;
        }
      }
      d2 = 100.0D * i / k;
      if (f <= 0.0D) {
        break label390;
      }
    }
    label390:
    for (double d1 = (f + d2) * 0.5D;; d1 = d2)
    {
      f = d2;
      localObject = localhdf.f();
      i = ((hdh)localObject).a() - g.a();
      j = ((hdh)localObject).b();
      k = g.b();
      g = ((hdh)localObject);
      j = i + (j - k);
      if (j != 0) {
        break;
      }
      i = 0;
      return;
    }
    i = Math.max(0, Math.min((int)Math.round(d1 * i / j), 100));
  }
}

/* Location:
 * Qualified Name:     hdg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */