package com.google.android.gms.signin;

import aal;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import gqv;

public class GoogleSignInAccount
  implements SafeParcelable
{
  public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new gqv();
  final int a;
  private String b;
  private String c;
  private String d;
  private String e;
  private Uri f;
  
  public GoogleSignInAccount(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri)
  {
    a = paramInt;
    b = aal.v(paramString1);
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramUri;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return d;
  }
  
  public String d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Uri e()
  {
    return f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = aal.p(paramParcel, 20293);
    aal.c(paramParcel, 1, a);
    aal.a(paramParcel, 2, a());
    aal.a(paramParcel, 3, b());
    aal.a(paramParcel, 4, c());
    aal.a(paramParcel, 5, d());
    aal.a(paramParcel, 6, e(), paramInt);
    aal.q(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.GoogleSignInAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */