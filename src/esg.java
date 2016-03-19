import android.os.Bundle;
import android.text.TextUtils;

public final class esg
{
  public final cgs a;
  public final String b;
  final long c;
  public final long d;
  final ero e;
  public final int f;
  final boolean g;
  final est h;
  
  public esg(cgs paramcgs, String paramString, long paramLong1, long paramLong2, ero paramero, int paramInt, boolean paramBoolean, est paramest)
  {
    a = paramcgs;
    b = paramString;
    c = paramLong1;
    d = paramLong2;
    e = paramero;
    f = paramInt;
    g = paramBoolean;
    h = paramest;
  }
  
  public static esg a(Bundle paramBundle)
  {
    est localest = null;
    if (paramBundle == null) {}
    Bundle localBundle;
    cgs localcgs;
    do
    {
      do
      {
        return null;
        localBundle = (Bundle)paramBundle.getParcelable("com.google.android.apps.hangouts.telephony.hangout_info_bundle");
      } while (localBundle == null);
      localBundle.setClassLoader(cgs.class.getClassLoader());
      localcgs = (cgs)localBundle.getParcelable("hangout_request");
    } while (localcgs == null);
    String str1 = localBundle.getString("experiment_code");
    String str2 = localBundle.getString("experiment_flags");
    if (str1 == null)
    {
      paramBundle = localest;
      if (str2 == null) {}
    }
    else
    {
      paramBundle = new ero(str1, str2);
    }
    localest = (est)localBundle.getParcelable("network_status");
    return new esg(localcgs, localBundle.getString("inviter_phone_number"), localBundle.getLong("invitation_id"), localBundle.getLong("timestamp_millis"), paramBundle, localBundle.getInt("account_id"), localBundle.getBoolean("did_fallback_to_lte"), localest);
  }
  
  public Bundle a()
  {
    Bundle localBundle1 = new Bundle();
    Bundle localBundle2 = new Bundle();
    localBundle2.putParcelable("hangout_request", a);
    localBundle2.putString("inviter_phone_number", b);
    localBundle2.putLong("invitation_id", c);
    localBundle2.putLong("timestamp_millis", d);
    if (e != null)
    {
      localBundle2.putString("experiment_code", e.a());
      localBundle2.putString("experiment_flags", e.b());
    }
    localBundle2.putInt("account_id", f);
    localBundle2.putBoolean("did_fallback_to_lte", g);
    localBundle2.putParcelable("network_status", h);
    localBundle1.putParcelable("com.google.android.apps.hangouts.telephony.hangout_info_bundle", localBundle2);
    return localBundle1;
  }
  
  public eur b()
  {
    eur localeur = new eur();
    if (a != null)
    {
      cgs localcgs = a;
      eup localeup = new eup();
      if (!TextUtils.isEmpty(localcgs.a())) {
        a = localcgs.a();
      }
      j = localcgs.m();
      if (!TextUtils.isEmpty(localcgs.b())) {
        b = localcgs.b();
      }
      if (!TextUtils.isEmpty(localcgs.d())) {
        c = localcgs.d();
      }
      if (!TextUtils.isEmpty(localcgs.e())) {
        d = localcgs.e();
      }
      if (!TextUtils.isEmpty(localcgs.f())) {
        e = localcgs.f();
      }
      if (!TextUtils.isEmpty(localcgs.g())) {
        f = localcgs.g();
      }
      if (!TextUtils.isEmpty(localcgs.h())) {
        g = localcgs.h();
      }
      if (!TextUtils.isEmpty(localcgs.i())) {
        h = localcgs.i();
      }
      if (!TextUtils.isEmpty(localcgs.j())) {
        i = localcgs.j();
      }
      k = localcgs.l();
      if (!TextUtils.isEmpty(localcgs.n())) {
        l = localcgs.n();
      }
      hbs.a("Expected null", localcgs.o());
      hbs.a("Expected null", localcgs.k());
      a = localeup;
    }
    if (!TextUtils.isEmpty(b)) {
      b = b;
    }
    c = c;
    d = d;
    if (e != null)
    {
      if (!TextUtils.isEmpty(e.a())) {
        e = e.a();
      }
      if (!TextUtils.isEmpty(e.b())) {
        f = e.b();
      }
    }
    g = f;
    i = g;
    if (h != null) {
      h = h.f();
    }
    return localeur;
  }
}

/* Location:
 * Qualified Name:     esg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */