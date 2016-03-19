package com.google.android.gms.googlehelp;

import aal;
import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.view.View;
import android.view.Window;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.feedback.ErrorReport;
import com.google.android.gms.feedback.FeedbackOptions;
import com.google.android.gms.feedback.ThemeSettings;
import com.google.android.gms.googlehelp.internal.common.OverflowMenuItem;
import com.google.android.gms.googlehelp.internal.common.TogglingData;
import fzi;
import gcm;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public final class GoogleHelp
  implements SafeParcelable
{
  public static final Parcelable.Creator<GoogleHelp> CREATOR = new fzi();
  final int a;
  String b;
  Account c;
  Bundle d;
  String e;
  int f;
  int g;
  boolean h;
  boolean i;
  List<String> j;
  @Deprecated
  Bundle k;
  @Deprecated
  Bitmap l;
  @Deprecated
  byte[] m;
  @Deprecated
  int n;
  @Deprecated
  int o;
  String p;
  Uri q;
  List<OverflowMenuItem> r;
  @Deprecated
  int s;
  ThemeSettings t;
  List<OfflineSuggestion> u;
  boolean v;
  ErrorReport w = new ErrorReport();
  TogglingData x;
  int y;
  PendingIntent z;
  
  public GoogleHelp(int paramInt1, String paramString1, Account paramAccount, Bundle paramBundle1, String paramString2, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, List<String> paramList, Bundle paramBundle2, Bitmap paramBitmap, byte[] paramArrayOfByte, int paramInt4, int paramInt5, String paramString3, Uri paramUri, List<OverflowMenuItem> paramList1, int paramInt6, ThemeSettings paramThemeSettings, List<OfflineSuggestion> paramList2, boolean paramBoolean3, ErrorReport paramErrorReport, TogglingData paramTogglingData, int paramInt7, PendingIntent paramPendingIntent)
  {
    a = paramInt1;
    b = paramString1;
    c = paramAccount;
    d = paramBundle1;
    e = paramString2;
    f = paramInt2;
    g = paramInt3;
    h = paramBoolean1;
    i = paramBoolean2;
    j = paramList;
    z = paramPendingIntent;
    k = paramBundle2;
    l = paramBitmap;
    m = paramArrayOfByte;
    n = paramInt4;
    o = paramInt5;
    p = paramString3;
    q = paramUri;
    r = paramList1;
    if (a < 4) {
      paramThemeSettings = new ThemeSettings().a(paramInt6);
    }
    for (;;)
    {
      t = paramThemeSettings;
      u = paramList2;
      v = paramBoolean3;
      w = paramErrorReport;
      if (w != null) {
        w.Y = "GoogleHelp";
      }
      x = paramTogglingData;
      y = paramInt7;
      return;
      if (paramThemeSettings == null) {
        paramThemeSettings = new ThemeSettings();
      }
    }
  }
  
  public GoogleHelp(String paramString)
  {
    this(7, paramString, null, null, null, 0, 0, true, true, new ArrayList(), null, null, null, 0, 0, null, null, new ArrayList(), 0, null, new ArrayList(), false, new ErrorReport(), null, 0, null);
  }
  
  public static Bitmap a(Activity paramActivity)
  {
    try
    {
      paramActivity = paramActivity.getWindow().getDecorView().getRootView();
      Bitmap localBitmap = Bitmap.createBitmap(paramActivity.getWidth(), paramActivity.getHeight(), Bitmap.Config.ARGB_8888);
      paramActivity.draw(new Canvas(localBitmap));
      return localBitmap;
    }
    catch (Exception paramActivity) {}
    return null;
  }
  
  public Intent a()
  {
    return new Intent("com.google.android.gms.googlehelp.HELP").setPackage("com.google.android.gms").putExtra("EXTRA_GOOGLE_HELP", this);
  }
  
  public GoogleHelp a(int paramInt, String paramString, Intent paramIntent)
  {
    r.add(new OverflowMenuItem(0, paramString, paramIntent));
    return this;
  }
  
  public GoogleHelp a(Account paramAccount)
  {
    c = paramAccount;
    return this;
  }
  
  public GoogleHelp a(Uri paramUri)
  {
    q = paramUri;
    return this;
  }
  
  public GoogleHelp a(FeedbackOptions paramFeedbackOptions, File paramFile)
  {
    w = gcm.a(paramFeedbackOptions, paramFile);
    w.Y = "GoogleHelp";
    return this;
  }
  
  public GoogleHelp a(ThemeSettings paramThemeSettings)
  {
    t = paramThemeSettings;
    return this;
  }
  
  public Uri b()
  {
    return q;
  }
  
  public TogglingData c()
  {
    return x;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, b);
    aal.a(paramParcel, 3, c, paramInt);
    aal.a(paramParcel, 4, d);
    aal.a(paramParcel, 5, h);
    aal.a(paramParcel, 6, i);
    aal.b(paramParcel, 7, j);
    aal.a(paramParcel, 10, k);
    aal.a(paramParcel, 11, l, paramInt);
    aal.a(paramParcel, 14, p);
    aal.a(paramParcel, 15, q, paramInt);
    aal.c(paramParcel, 17, s);
    aal.c(paramParcel, 16, r);
    aal.a(paramParcel, 19, m);
    aal.c(paramParcel, 18, u);
    aal.c(paramParcel, 21, o);
    aal.c(paramParcel, 20, n);
    aal.a(paramParcel, 23, w, paramInt);
    aal.a(paramParcel, 22, v);
    aal.a(paramParcel, 25, t, paramInt);
    aal.c(paramParcel, 29, f);
    aal.a(paramParcel, 28, e);
    aal.a(paramParcel, 31, x, paramInt);
    aal.c(paramParcel, 30, g);
    aal.c(paramParcel, 32, y);
    aal.a(paramParcel, 33, z, paramInt);
    aal.q(paramParcel, i1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.googlehelp.GoogleHelp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */