import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;

public class bvr
  extends dyx
  implements Parcelable, bcl, bcn
{
  public static final Parcelable.Creator<bvr> CREATOR = new bvs();
  private Context a;
  private final String e;
  private final String f;
  private final bkq g;
  private final int h;
  private final String i;
  private final boolean j;
  private final String k;
  private final long l;
  
  public bvr(Context paramContext, bfd parambfd, String paramString1, String paramString2, bkq parambkq, int paramInt, String paramString3, boolean paramBoolean, String paramString4, long paramLong)
  {
    super(parambfd);
    a = paramContext;
    e = paramString1;
    f = aal.y(paramString2);
    g = parambkq;
    h = 0;
    i = paramString3;
    j = paramBoolean;
    k = paramString4;
    l = paramLong;
  }
  
  protected bvr(Parcel paramParcel)
  {
    super(paramParcel);
    e = paramParcel.readString();
    f = paramParcel.readString();
    if (paramParcel.readByte() != 0)
    {
      g = ((bkq)paramParcel.readParcelable(bkq.class.getClassLoader()));
      h = paramParcel.readInt();
      i = paramParcel.readString();
      if (paramParcel.readByte() == 0) {
        break label99;
      }
    }
    label99:
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      k = paramParcel.readString();
      l = paramParcel.readLong();
      return;
      g = null;
      break;
    }
  }
  
  private boolean a(bfz parambfz, int paramInt, String paramString)
  {
    int m = b.a;
    csn localcsn = new csn().b(k).a(e);
    parambfz.a();
    aen.a(m, SystemClock.elapsedRealtime(), 10, localcsn.a(101));
    String str = e;
    Object localObject4;
    Object localObject3;
    try
    {
      bgd localbgd = parambfz.f(str);
      localObject4 = localbgd;
      localObject3 = str;
      if (localbgd == null)
      {
        localObject2 = localbgd;
        localObject1 = str;
        if (bfz.a(str))
        {
          localObject3 = RealTimeChatService.a(str);
          localObject2 = localbgd;
          localObject1 = str;
          if (localObject3 != null)
          {
            localObject2 = parambfz.f((String)localObject3);
            localObject1 = localObject3;
          }
        }
        localObject4 = localObject2;
        localObject3 = localObject1;
        if (localObject2 == null)
        {
          paramString = String.valueOf(localObject1);
          if (paramString.length() != 0) {}
          for (paramString = "Failed to find conversation: ".concat(paramString);; paramString = new String("Failed to find conversation: "))
          {
            ezi.d("Babel", paramString, new Object[0]);
            parambfz.b();
            return false;
          }
        }
      }
      l1 = bfz.b(q, 1);
    }
    finally
    {
      parambfz.c();
    }
    boolean bool = a((bgd)localObject4);
    Object localObject1 = a(paramInt, g);
    a(parambfz, bool, paramInt, paramString, (bgd)localObject4, (String)localObject3, (String)localObject1);
    localObject1 = aal.h((String)localObject1);
    Object localObject2 = a();
    paramString = new edn((String)localObject3, b.b.b(), l1, k, (List)localObject1, null, (List)localObject2, bool, emc.c, 0, paramInt, paramString, null, 0L, 0, 0L, null, 6, null, 0, l * 1000L);
    paramString.a(parambfz, c);
    long l1 = paramString.a();
    parambfz.b();
    parambfz.c();
    aen.a(m, SystemClock.elapsedRealtime(), 10, localcsn.a(102));
    bft.d(parambfz, (String)localObject3);
    return Long.valueOf(l1) != null;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    a = paramContext;
    int m = b.a;
    parambcg = new csn().b(k).a(e);
    aen.a(m, l, 11, parambcg.a(0));
    aen.a(m, SystemClock.elapsedRealtime(), 10, parambcg.a(201));
    parambcg = new bfz(paramContext, m);
    m = parambcg.g(e);
    if (aal.e(parambcg.g(e)))
    {
      paramContext = a(g);
      ((efk)ilh.a(a, efk.class)).a(b.b, e, f, a, b, c, d, e, f, i, j, g, h);
      return bco.a;
    }
    switch (m)
    {
    }
    for (paramContext = null;; paramContext = b.b.v())
    {
      a(parambcg, m, paramContext);
      break;
    }
  }
  
  bvu a(bkq parambkq)
  {
    int i1 = 0;
    if (parambkq != null) {}
    geo localgeo;
    String str;
    int n;
    Object localObject;
    int m;
    switch (bvt.a[c.ordinal()])
    {
    default: 
      localgeo = null;
      str = null;
      n = 0;
      localObject = null;
      m = 0;
      parambkq = null;
    }
    for (;;)
    {
      return new bvu(this, parambkq, m, (String)localObject, n, i1, str, localgeo);
      parambkq = (bkz)parambkq;
      str = "hangouts/location";
      localgeo = e;
      n = 0;
      localObject = null;
      m = 0;
      parambkq = null;
      continue;
      localObject = (blb)parambkq;
      str = d;
      parambkq = a;
      n = f;
      i1 = e;
      m = g;
      localgeo = null;
      localObject = null;
      continue;
      localObject = (blj)parambkq;
      str = d;
      parambkq = a;
      localObject = e;
      localgeo = null;
      n = 0;
      m = 0;
    }
  }
  
  String a(int paramInt, bkq parambkq)
  {
    if ((parambkq == null) || (c != bkr.e)) {
      return f;
    }
    Object localObject = ag;
    if ((localObject != null) && (aal.f(paramInt)))
    {
      parambkq = new StringBuilder(f);
      String str = ((crv)ilh.a(a, crv.class)).b((geo)localObject);
      if (parambkq.length() > 0) {
        parambkq.append("\n");
      }
      parambkq.append(str);
      parambkq.append("\n");
      parambkq.append(((geo)localObject).c());
      localObject = ((geo)localObject).b();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        parambkq.append("\n");
        parambkq.append((CharSequence)localObject);
      }
      return parambkq.toString();
    }
    return f;
  }
  
  List<eft> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (g == null) {
      return localArrayList;
    }
    Object localObject2 = a(g);
    Object localObject3;
    Object localObject1;
    String str;
    if (g.c == bkr.e)
    {
      localObject3 = g;
      crv localcrv = (crv)ilh.a(a, crv.class);
      localObject1 = ((geo)localObject3).c().toString();
      double d1 = da;
      double d2 = db;
      str = ((geo)localObject3).b().toString();
      localObject2 = localcrv.a((geo)localObject3);
      localObject3 = localcrv.b((geo)localObject3);
      localArrayList.add(new efv(new int[] { 0 }, (String)localObject1, d1, d2, str, (String)localObject2, (String)localObject3));
    }
    for (;;)
    {
      return localArrayList;
      if ((c != null) || (a != null))
      {
        str = f;
        localObject1 = str;
        if (str == null)
        {
          str = a.getContentResolver().getType(Uri.parse(a));
          localObject1 = str;
          if (str == null) {
            localObject1 = "image/jpg";
          }
        }
        str = c;
        localObject3 = a;
        int m = d;
        int n = e;
        int i1 = b;
        localArrayList.add(new efw(new int[] { 0 }, str, (String)localObject3, m, n, (String)localObject1, i1));
      }
    }
  }
  
  void a(bfz parambfz, boolean paramBoolean, int paramInt, String paramString1, bgd parambgd, String paramString2, String paramString3)
  {
    dvm localdvm = b.c;
    if ((!bfz.a(paramString2)) && (i == 0)) {
      if (parambfz.X(paramString2))
      {
        bft.a(parambfz.g(), paramString2, 5);
        localdvm.a(new doz(new dos(k, 1, null, bft.a(parambfz.g(), paramString2)), paramString2), ebi.b().a());
      }
    }
    do
    {
      return;
      long l1 = parambfz.k(paramString2);
      parambgd = new ArrayList();
      if ((g != null) && (g.c == bkr.d) && (parambfz.af(g).e) != null)) {
        parambgd.add(aal.a(a, "babel_stickers_account_id", "108618507921641169817"));
      }
      paramString3 = aal.h(paramString3);
      ArrayList localArrayList = new ArrayList();
      if (g != null) {
        localArrayList.add(g);
      }
      localdvm.a(new bvy(k, paramString2).a(parambfz.S(paramString2)).a(l1).a(paramBoolean).b().b(paramString1).a(paramInt).c().a(paramString3).b(localArrayList).c(parambgd).a(), ebi.b().a());
      parambfz.b(paramString2, 1L + l1);
      return;
      if ((i == 2) || (k == 1))
      {
        localdvm.a(new dpm(paramString2), ebi.b().a());
        return;
      }
    } while (i != 4);
    RealTimeChatService.h(b.b, paramString2);
  }
  
  boolean a(bgd parambgd)
  {
    switch (h)
    {
    default: 
      if (l != 1) {
        break;
      }
    case 1: 
      return true;
    case 2: 
      return false;
    }
    return false;
  }
  
  public String c()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    super.a(paramParcel, paramInt);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    if (g != null)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      if (g != null) {
        g.writeToParcel(paramParcel, paramInt);
      }
      paramParcel.writeInt(h);
      paramParcel.writeString(i);
      if (!j) {
        break label108;
      }
    }
    label108:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeString(k);
      paramParcel.writeLong(l);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     bvr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */