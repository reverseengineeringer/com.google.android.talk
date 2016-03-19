import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.concurrent.ConcurrentHashMap;

public class edq
  extends dym
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<edq> CREATOR = new edr();
  private static final ConcurrentHashMap<Integer, edq> a = new ConcurrentHashMap();
  private long e = -1L;
  
  private edq(int paramInt, long paramLong1, long paramLong2)
  {
    super(dvd.e(paramInt), paramLong1, paramLong2);
  }
  
  protected edq(Parcel paramParcel)
  {
    super(paramParcel);
    e = paramParcel.readLong();
  }
  
  public static edq b(int paramInt)
  {
    edq localedq2 = (edq)a.get(Integer.valueOf(paramInt));
    edq localedq1 = localedq2;
    if (localedq2 == null)
    {
      localedq1 = new edq(paramInt, aal.a(aal.oJ, "babel_upload_analytics_lomark_seconds", 28800) * 1000, aal.a(aal.oJ, "babel_upload_analytics_highmark_seconds", 43200) * 1000);
      a.putIfAbsent(Integer.valueOf(paramInt), localedq1);
      localedq1 = (edq)a.get(Integer.valueOf(paramInt));
    }
    return localedq1;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return super.a(parambcg);
  }
  
  protected void a(long paramLong)
  {
    e = paramLong;
    ((hpz)ilh.a(aal.oJ, hpz.class)).b(b.a).b("last_upload_analytics_time", paramLong).d();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected long i()
  {
    if (e == -1L) {
      e = ((hpz)ilh.a(aal.oJ, hpz.class)).a(b.a).a("last_upload_analytics_time", -1L);
    }
    return e;
  }
  
  public void p_()
  {
    dqe[] arrayOfdqe = new dqe[14];
    arrayOfdqe[0] = new dqe(1, 10, 1, "sent_sms_count_since_last_upload");
    arrayOfdqe[1] = new dqe(1, 9, 1, "received_sms_count_since_last_upload");
    arrayOfdqe[2] = new dqe(1, 10, 2, "sent_mms_count_since_last_upload");
    arrayOfdqe[3] = new dqe(1, 9, 2, "received_mms_count_since_last_upload");
    arrayOfdqe[4] = new dqe(3, 6, 0, "shown_sms_promo_screen_launch_count_since_last_upload");
    arrayOfdqe[5] = new dqe(3, 7, 0, "accepted_sms_promo_screen_launch_count_since_last_upload");
    arrayOfdqe[6] = new dqe(3, 8, 0, "declined_sms_promo_screen_launch_count_since_last_upload");
    arrayOfdqe[7] = new dqe(4, 6, 0, "shown_sms_promo_screen_notify_count_since_last_upload");
    arrayOfdqe[8] = new dqe(4, 7, 0, "accepted_sms_promo_screen_notify_count_since_last_upload");
    arrayOfdqe[9] = new dqe(4, 8, 0, "declined_sms_promo_screen_notify_count_since_last_upload");
    arrayOfdqe[10] = new dqe(5, 6, 0, "shown_sms_promo_banner_count_since_last_upload");
    arrayOfdqe[11] = new dqe(5, 7, 0, "accepted_sms_promo_banner_count_since_last_upload");
    arrayOfdqe[12] = new dqe(5, 8, 0, "declined_sms_promo_banner_count_since_last_upload");
    arrayOfdqe[13] = new dqe(6, 6, 0, "shown_sms_promo_notify_count_since_last_upload");
    k();
    int k = b.a;
    int j = 0;
    int i = 0;
    dqe localdqe;
    if (j < 14) {
      localdqe = arrayOfdqe[j];
    }
    label427:
    for (;;)
    {
      try
      {
        String str = localdqe.a();
        long l = ((hpz)ilh.a(aal.oJ, hpz.class)).a(k).a(str, 0L);
        localdqe.a(l);
        if (l <= 0L) {
          break label427;
        }
        ((hpz)ilh.a(aal.oJ, hpz.class)).b(k).b(str, 0L).d();
        i += 1;
        j += 1;
      }
      catch (hqd localhqd)
      {
        a.remove(Integer.valueOf(k));
        return;
      }
      if (i > 0)
      {
        a(new dqd(localhqd, i));
        return;
      }
      if (ezi.a("Babel", 3)) {
        ezi.a("Babel", "Skip UploadAnalyticsOperation since there is nothing to upload", new Object[0]);
      }
      a(3);
      return;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    paramParcel.writeLong(e);
  }
}

/* Location:
 * Qualified Name:     edq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */