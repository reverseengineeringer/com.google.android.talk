import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

public class eaz
  extends dyx
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<eaz> CREATOR = new eba();
  private static final boolean e;
  private final boolean a;
  
  static
  {
    imx localimx = ezi.o;
    e = false;
  }
  
  protected eaz(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public eaz(bfd parambfd, boolean paramBoolean)
  {
    super(parambfd);
    a = paramBoolean;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return super.a(parambcg);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void p_()
  {
    Object localObject2 = aal.oJ;
    boolean bool1 = aal.a((Context)localObject2, "babel_android_id_check", false);
    Object localObject1 = (awm)ilh.a((Context)localObject2, awm.class);
    if (!dwt.a().c())
    {
      ezi.e("Babel_RegisterAcctOp", "GCM registration not done before registering account", new Object[0]);
      ((awm)localObject1).f(b.a);
      return;
    }
    String str = dwt.a().e();
    if (TextUtils.isEmpty(str))
    {
      ezi.d("Babel", "Register account with invalid gcm registration id", new Object[0]);
      ((awm)localObject1).f(b.a);
      return;
    }
    long l = exa.a();
    if ((l == 0L) && (bool1))
    {
      ezi.d("Babel", "Register account with invalid android id", new Object[0]);
      ((awm)localObject1).f(b.a);
      return;
    }
    Configuration localConfiguration = ((Context)localObject2).getResources().getConfiguration();
    int i = smallestScreenWidthDp;
    boolean bool2 = ((dty)ilh.a((Context)localObject2, dty.class)).b((Context)localObject2, b.b);
    if (e) {
      new StringBuilder(60).append("RegisterAccountOperation, userWantsIncomingPhoneCalls: ").append(bool2);
    }
    bool1 = bool2;
    if (!bool2)
    {
      localObject1 = ilh.c((Context)localObject2, chj.class).iterator();
      do
      {
        bool1 = bool2;
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject3 = (chj)((Iterator)localObject1).next();
      } while (!((chj)localObject3).a((Context)localObject2, b.b));
      bool2 = true;
      bool1 = bool2;
      if (e)
      {
        localObject1 = String.valueOf(localObject3);
        new StringBuilder(String.valueOf(localObject1).length() + 55).append("RegisterAccountOperation, enabling because of handler: ").append((String)localObject1);
        bool1 = bool2;
      }
    }
    bool2 = ((elm)ilh.a((Context)localObject2, elm.class)).a(b.a);
    localObject1 = ezm.b(ezm.f(), ezm.j());
    Object localObject3 = (eot)ilh.a((Context)localObject2, eot.class);
    boolean bool3 = cfc.a().c();
    localObject2 = ((Context)localObject2).getPackageName();
    boolean bool4 = a;
    dvi localdvi = dvd.d;
    boolean bool5 = dvi.a();
    boolean bool6 = ((eot)localObject3).b(b.a);
    int j = mcc;
    int k = mnc;
    if (b.b.a((String)localObject1)) {}
    for (;;)
    {
      a(new dpj(1, l, str, bool3, (String)localObject2, null, bool4, i, bool5, bool6, bool1, j, k, bool2, (String)localObject1));
      return;
      localObject1 = null;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    if (a) {}
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     eaz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */