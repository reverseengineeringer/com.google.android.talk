import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

public final class fey
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<fey> CREATOR = new fez();
  ffe a;
  hpz b;
  ffl c;
  private final String d;
  private final String e;
  private final int f;
  
  protected fey(Parcel paramParcel)
  {
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readInt();
  }
  
  public fey(String paramString1, String paramString2, int paramInt)
  {
    d = paramString1;
    e = paramString2;
    f = paramInt;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    a = ((ffi)ilh.a(paramContext, ffi.class)).a(paramContext);
    b = ((hpz)ilh.a(paramContext, hpz.class));
    c = ((ffn)ilh.a(paramContext, ffn.class)).a(paramContext);
    long l1 = System.currentTimeMillis();
    try
    {
      a.a().a(TimeUnit.MILLISECONDS);
      if (!a.a().e())
      {
        Log.e("BabelSendMoreMessages", "GoogleApiClient failed to connect");
        int i = bco.d;
        return i;
      }
      paramContext = ffe.b(a.f());
      parambcg = new HashMap();
      ArrayList localArrayList = c.a(paramContext.g(), e, f, parambcg);
      grp localgrp = new grp();
      localgrp.a("7", e);
      localgrp.a("16", localArrayList);
      a.c().a(a.a(), d, "/hangouts/rpc/more_messages/", localgrp.a()).a();
      a.a(paramContext, parambcg, null);
      if (ezi.a("BabelSendMoreMessages", 2))
      {
        long l2 = System.currentTimeMillis();
        new StringBuilder(54).append("WearableService.sendMoreMessages: ").append(l2 - l1);
      }
      return bco.a;
    }
    finally
    {
      a.e();
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeInt(f);
  }
}

/* Location:
 * Qualified Name:     fey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */