package com.google.android.gms.feedback;

import aal;
import android.app.ApplicationErrorReport;
import android.app.ApplicationErrorReport.CrashInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import fyj;
import java.util.ArrayList;

public class FeedbackOptions
  implements SafeParcelable
{
  public static final Parcelable.Creator<FeedbackOptions> CREATOR = new fyj();
  public final int a;
  public String b;
  public Bundle c;
  public String d;
  public ApplicationErrorReport e;
  public String f;
  public BitmapTeleporter g;
  public String h;
  public ArrayList<FileTeleporter> i;
  public boolean j;
  public ThemeSettings k;
  public LogOptions l;
  
  public FeedbackOptions()
  {
    this(3, null, null, null, new ApplicationErrorReport(), null, null, null, null, true, null, null);
  }
  
  public FeedbackOptions(int paramInt, String paramString1, Bundle paramBundle, String paramString2, ApplicationErrorReport paramApplicationErrorReport, String paramString3, BitmapTeleporter paramBitmapTeleporter, String paramString4, ArrayList<FileTeleporter> paramArrayList, boolean paramBoolean, ThemeSettings paramThemeSettings, LogOptions paramLogOptions)
  {
    a = paramInt;
    b = paramString1;
    c = paramBundle;
    d = paramString2;
    e = paramApplicationErrorReport;
    f = paramString3;
    g = paramBitmapTeleporter;
    h = paramString4;
    i = paramArrayList;
    j = paramBoolean;
    k = paramThemeSettings;
    l = paramLogOptions;
  }
  
  public String a()
  {
    return b;
  }
  
  public Bundle b()
  {
    return c;
  }
  
  public ThemeSettings c()
  {
    return k;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ApplicationErrorReport.CrashInfo e()
  {
    if (e == null) {
      return null;
    }
    return e.crashInfo;
  }
  
  public String f()
  {
    return f;
  }
  
  public BitmapTeleporter g()
  {
    return g;
  }
  
  public String h()
  {
    return h;
  }
  
  public ArrayList<FileTeleporter> i()
  {
    return i;
  }
  
  public boolean j()
  {
    return j;
  }
  
  public LogOptions k()
  {
    return l;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int m = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c);
    aal.a(paramParcel, 5, d);
    aal.a(paramParcel, 6, e, paramInt);
    aal.a(paramParcel, 7, f);
    aal.a(paramParcel, 8, g, paramInt);
    aal.a(paramParcel, 9, h);
    aal.c(paramParcel, 10, i);
    aal.a(paramParcel, 11, j);
    aal.a(paramParcel, 12, k, paramInt);
    aal.a(paramParcel, 13, l, paramInt);
    aal.q(paramParcel, m);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.feedback.FeedbackOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */