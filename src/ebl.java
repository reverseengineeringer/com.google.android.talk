import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public final class ebl
  extends dym
  implements Parcelable, bcl, bcn
{
  public static final Parcelable.Creator<ebl> CREATOR = new ebm();
  private static final ezv a = RealTimeChatService.b;
  private static final Random e = koc.a;
  private boolean f;
  private boolean g;
  private String h;
  private long i = -1L;
  private ebq j = ebq.a;
  
  private ebl(int paramInt, long paramLong1, long paramLong2)
  {
    super(dvd.e(paramInt), paramLong1, paramLong2);
  }
  
  protected ebl(Parcel paramParcel)
  {
    super(paramParcel);
    boolean bool1;
    label46:
    int k;
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      f = bool1;
      if (paramParcel.readByte() == 0) {
        break label90;
      }
      bool1 = bool2;
      g = bool1;
      h = paramParcel.readString();
      i = paramParcel.readLong();
      k = paramParcel.readInt();
      if (k != -1) {
        break label95;
      }
    }
    label90:
    label95:
    for (paramParcel = null;; paramParcel = ebq.values()[k])
    {
      j = paramParcel;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label46;
    }
  }
  
  public static ebl b(int paramInt)
  {
    return new ebl(paramInt, TimeUnit.SECONDS.toMillis(aal.a(aal.oJ, "babel_warm_sync_lowmark_seconds", 7200)), TimeUnit.SECONDS.toMillis(aal.a(aal.oJ, "babel_warm_sync_highmark_seconds", 604800)));
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return super.a(parambcg);
  }
  
  public long a()
  {
    long l3 = SystemClock.elapsedRealtime();
    long l2 = aal.a(aal.oJ, "babel_maxsynctickledelay", 60000);
    long l1;
    switch (ebn.a[j.ordinal()])
    {
    default: 
      throw new IllegalStateException("Invalid delay parameter.");
    case 1: 
      l2 = l3;
      l1 = 0L;
    }
    for (;;)
    {
      hqc localhqc = ((hpz)ilh.a(aal.oJ, hpz.class)).b(b.a);
      long l4 = localhqc.a("warm_sync_deferral_limit", -1L);
      if ((l4 < 0L) || (l4 > l2)) {
        localhqc.b("warm_sync_deferral_limit", l2).d();
      }
      l2 = l1;
      if (l4 >= 0L)
      {
        l2 = l1;
        if (l3 + l1 > l4) {
          l2 = Math.max(0L, l4 - l3);
        }
      }
      return l2;
      l1 = aal.a(aal.oJ, "babel_hashsyncdelay", 5000);
      l2 += l3;
      continue;
      l2 <<= 1;
      l1 = l2;
      l2 = l3 + l2;
    }
  }
  
  protected void a(long paramLong)
  {
    throw new UnsupportedOperationException("Not supported");
  }
  
  public void a(ebq paramebq)
  {
    j = paramebq;
  }
  
  public void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public bcj b()
  {
    return bcj.b;
  }
  
  public void b(long paramLong)
  {
    i = paramLong;
  }
  
  public String c()
  {
    int k = b.a;
    return 25 + "WarmSync_Acct_" + k;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected long i()
  {
    throw new UnsupportedOperationException("Not supported");
  }
  
  public boolean l()
  {
    return !dvd.d(b.b);
  }
  
  public void m()
  {
    g = false;
  }
  
  public void p_()
  {
    String str2 = a.b("ReqWarmSyncTask");
    long l = System.currentTimeMillis();
    String str1;
    if (i == -1L) {
      str1 = "";
    }
    for (;;)
    {
      str1 = String.valueOf(str1);
      String str3 = String.valueOf(Long.toString(l * 1000L + e.nextInt(1000)));
      int k;
      if (str3.length() != 0)
      {
        str1 = str1.concat(str3);
        h = str1;
        k();
        k = b.a;
      }
      try
      {
        bft.a(new bfz(aal.oJ, k), c, f, g, str1);
        a.c(str2);
        return;
        str1 = "from_hash_sync:";
        continue;
        str1 = new String(str1);
      }
      catch (bgz localbgz)
      {
        for (;;) {}
      }
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    byte b1;
    if (f)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (!g) {
        break label68;
      }
      b1 = b2;
      label27:
      paramParcel.writeByte(b1);
      paramParcel.writeString(h);
      paramParcel.writeLong(i);
      if (j != null) {
        break label73;
      }
    }
    label68:
    label73:
    for (paramInt = -1;; paramInt = j.ordinal())
    {
      paramParcel.writeInt(paramInt);
      return;
      b1 = 0;
      break;
      b1 = 0;
      break label27;
    }
  }
}

/* Location:
 * Qualified Name:     ebl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */