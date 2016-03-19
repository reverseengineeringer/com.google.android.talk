package com.google.android.gms.location.places.internal;

import aal;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import fmh;
import geo;
import gep;
import ger;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class PlaceImpl
  implements SafeParcelable, geo
{
  public static final gep CREATOR = new gep();
  final int a;
  final boolean b;
  private final String c;
  private final Bundle d;
  @Deprecated
  private final PlaceLocalization e;
  private final LatLng f;
  private final float g;
  private final LatLngBounds h;
  private final String i;
  private final Uri j;
  private final boolean k;
  private final float l;
  private final int m;
  private final long n;
  private final List<Integer> o;
  private final List<Integer> p;
  private final String q;
  private final String r;
  private final String s;
  private final String t;
  private final List<String> u;
  private final Map<Integer, String> v;
  private final TimeZone w;
  private Locale x;
  private ger y;
  
  public PlaceImpl(int paramInt1, String paramString1, List<Integer> paramList1, List<Integer> paramList2, Bundle paramBundle, String paramString2, String paramString3, String paramString4, String paramString5, List<String> paramList, LatLng paramLatLng, float paramFloat1, LatLngBounds paramLatLngBounds, String paramString6, Uri paramUri, boolean paramBoolean1, float paramFloat2, int paramInt2, long paramLong, boolean paramBoolean2, PlaceLocalization paramPlaceLocalization)
  {
    a = paramInt1;
    c = paramString1;
    p = Collections.unmodifiableList(paramList1);
    o = paramList2;
    if (paramBundle != null)
    {
      d = paramBundle;
      q = paramString2;
      r = paramString3;
      s = paramString4;
      t = paramString5;
      if (paramList == null) {
        break label182;
      }
      label68:
      u = paramList;
      f = paramLatLng;
      g = paramFloat1;
      h = paramLatLngBounds;
      if (paramString6 == null) {
        break label190;
      }
    }
    for (;;)
    {
      i = paramString6;
      j = paramUri;
      k = paramBoolean1;
      l = paramFloat2;
      m = paramInt2;
      n = paramLong;
      v = Collections.unmodifiableMap(new HashMap());
      w = null;
      x = null;
      b = paramBoolean2;
      e = paramPlaceLocalization;
      return;
      paramBundle = new Bundle();
      break;
      label182:
      paramList = Collections.emptyList();
      break label68;
      label190:
      paramString6 = "UTC";
    }
  }
  
  private void a(String paramString)
  {
    if ((b) && (y != null)) {
      y.a(c, paramString);
    }
  }
  
  private List<Integer> g()
  {
    a("getPlaceTypes");
    return p;
  }
  
  private List<Integer> h()
  {
    a("getTypesDeprecated");
    return o;
  }
  
  private String i()
  {
    a("getName");
    return q;
  }
  
  private String j()
  {
    a("getAddress");
    return r;
  }
  
  private float k()
  {
    a("getLevelNumber");
    return g;
  }
  
  private LatLngBounds l()
  {
    a("getViewport");
    return h;
  }
  
  private Uri m()
  {
    a("getWebsiteUri");
    return j;
  }
  
  private String n()
  {
    a("getPhoneNumber");
    return s;
  }
  
  private String o()
  {
    a("getRegularOpenHours");
    return t;
  }
  
  private List<String> p()
  {
    a("getAttributions");
    return u;
  }
  
  private boolean q()
  {
    a("isPermanentlyClosed");
    return k;
  }
  
  private float r()
  {
    a("getRating");
    return l;
  }
  
  private int s()
  {
    a("getPriceLevel");
    return m;
  }
  
  private long t()
  {
    return n;
  }
  
  private Bundle u()
  {
    return d;
  }
  
  private String v()
  {
    return i;
  }
  
  @Deprecated
  private PlaceLocalization w()
  {
    a("getLocalization");
    return e;
  }
  
  public boolean O_()
  {
    return true;
  }
  
  public String a()
  {
    a("getId");
    return c;
  }
  
  public void a(ger paramger)
  {
    y = paramger;
  }
  
  public LatLng d()
  {
    a("getLatLng");
    return f;
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
      if (!(paramObject instanceof PlaceImpl)) {
        return false;
      }
      paramObject = (PlaceImpl)paramObject;
    } while ((c.equals(c)) && (aal.a(x, x)) && (n == n));
    return false;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { c, x, Long.valueOf(n) });
  }
  
  public String toString()
  {
    return aal.c(this).a("id", c).a("placeTypes", p).a("locale", x).a("name", q).a("address", r).a("phoneNumber", s).a("latlng", f).a("viewport", h).a("websiteUri", j).a("isPermanentlyClosed", Boolean.valueOf(k)).a("priceLevel", Integer.valueOf(m)).a("timestampSecs", Long.valueOf(n)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i1 = aal.p(paramParcel, 20293);
    aal.a(paramParcel, 1, a());
    aal.a(paramParcel, 2, u());
    aal.a(paramParcel, 3, w(), paramInt);
    aal.a(paramParcel, 4, d(), paramInt);
    aal.a(paramParcel, 5, k());
    aal.a(paramParcel, 6, l(), paramInt);
    aal.a(paramParcel, 7, v());
    aal.a(paramParcel, 8, m(), paramInt);
    aal.a(paramParcel, 9, q());
    aal.a(paramParcel, 10, r());
    aal.c(paramParcel, 11, s());
    aal.a(paramParcel, 12, t());
    aal.a(paramParcel, 13, h());
    aal.a(paramParcel, 14, j());
    aal.a(paramParcel, 15, n());
    aal.b(paramParcel, 17, p());
    aal.a(paramParcel, 16, o());
    aal.c(paramParcel, 1000, a);
    aal.a(paramParcel, 19, i());
    aal.a(paramParcel, 18, b);
    aal.a(paramParcel, 20, g());
    aal.q(paramParcel, i1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */