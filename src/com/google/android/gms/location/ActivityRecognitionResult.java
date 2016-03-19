package com.google.android.gms.location;

import aal;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gdm;
import java.util.Arrays;
import java.util.List;

public class ActivityRecognitionResult
  implements SafeParcelable
{
  public static final gdm CREATOR = new gdm();
  List<DetectedActivity> a;
  long b;
  long c;
  int d;
  private final int e;
  
  public ActivityRecognitionResult(int paramInt1, List<DetectedActivity> paramList, long paramLong1, long paramLong2, int paramInt2)
  {
    e = paramInt1;
    a = paramList;
    b = paramLong1;
    c = paramLong2;
    d = paramInt2;
  }
  
  public static boolean a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return false;
    }
    return paramIntent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
  }
  
  public static ActivityRecognitionResult b(Intent paramIntent)
  {
    if (!a(paramIntent)) {
      return null;
    }
    paramIntent = paramIntent.getExtras().get("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
    if ((paramIntent instanceof byte[]))
    {
      Parcel localParcel = Parcel.obtain();
      localParcel.unmarshall((byte[])paramIntent, 0, ((byte[])paramIntent).length);
      localParcel.setDataPosition(0);
      return gdm.a(localParcel);
    }
    if ((paramIntent instanceof ActivityRecognitionResult)) {
      return (ActivityRecognitionResult)paramIntent;
    }
    return null;
  }
  
  public DetectedActivity a()
  {
    return (DetectedActivity)a.get(0);
  }
  
  public int b()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (ActivityRecognitionResult)paramObject;
    } while ((b == b) && (c == c) && (d == d) && (aal.a(a, a)));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Long.valueOf(b), Long.valueOf(c), Integer.valueOf(d), a });
  }
  
  public String toString()
  {
    return "ActivityRecognitionResult [probableActivities=" + a + ", timeMillis=" + b + ", elapsedRealtimeMillis=" + c + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.c(paramParcel, 1000, b());
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.c(paramParcel, 4, d);
    aal.q(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.ActivityRecognitionResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */