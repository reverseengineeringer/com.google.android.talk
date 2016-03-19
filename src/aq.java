import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.ArrayList;
import org.chromium.net.CronetEngine.Builder.Pkp;

final class aq
  implements Parcelable
{
  public static final Parcelable.Creator<aq> CREATOR = new ar();
  final int[] a;
  final int b;
  final int c;
  final String d;
  final int e;
  final int f;
  final CharSequence g;
  final int h;
  final CharSequence i;
  final ArrayList<String> j;
  final ArrayList<String> k;
  
  public aq(an paraman)
  {
    CronetEngine.Builder.Pkp localPkp = c;
    int n;
    for (int m = 0; localPkp != null; m = n)
    {
      n = m;
      if (m != null) {
        n = m + m.size();
      }
      localPkp = e;
    }
    a = new int[m + e * 7];
    if (!l) {
      throw new IllegalStateException("Not on back stack");
    }
    localPkp = c;
    m = 0;
    if (localPkp != null)
    {
      int[] arrayOfInt = a;
      n = m + 1;
      arrayOfInt[m] = g;
      arrayOfInt = a;
      int i1 = n + 1;
      if (h != null) {}
      for (m = h.p;; m = -1)
      {
        arrayOfInt[n] = m;
        arrayOfInt = a;
        m = i1 + 1;
        arrayOfInt[i1] = i;
        arrayOfInt = a;
        n = m + 1;
        arrayOfInt[m] = j;
        arrayOfInt = a;
        m = n + 1;
        arrayOfInt[n] = k;
        arrayOfInt = a;
        n = m + 1;
        arrayOfInt[m] = l;
        if (m == null) {
          break label314;
        }
        i1 = m.size();
        arrayOfInt = a;
        m = n + 1;
        arrayOfInt[n] = i1;
        n = 0;
        while (n < i1)
        {
          a[m] = m.get(n)).p;
          n += 1;
          m += 1;
        }
      }
      for (;;)
      {
        localPkp = e;
        break;
        label314:
        arrayOfInt = a;
        m = n + 1;
        arrayOfInt[n] = 0;
      }
    }
    b = j;
    c = k;
    d = n;
    e = p;
    f = q;
    g = r;
    h = s;
    i = t;
    j = u;
    k = v;
  }
  
  public aq(Parcel paramParcel)
  {
    a = paramParcel.createIntArray();
    b = paramParcel.readInt();
    c = paramParcel.readInt();
    d = paramParcel.readString();
    e = paramParcel.readInt();
    f = paramParcel.readInt();
    g = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    h = paramParcel.readInt();
    i = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    j = paramParcel.createStringArrayList();
    k = paramParcel.createStringArrayList();
  }
  
  public an a(bh parambh)
  {
    an localan = new an(parambh);
    int i1 = 0;
    int m = 0;
    while (m < a.length)
    {
      CronetEngine.Builder.Pkp localPkp = new CronetEngine.Builder.Pkp();
      Object localObject = a;
      int n = m + 1;
      g = localObject[m];
      if (bh.a) {
        new StringBuilder("Instantiate ").append(localan).append(" op #").append(i1).append(" base fragment #").append(a[n]);
      }
      localObject = a;
      m = n + 1;
      n = localObject[n];
      if (n >= 0) {}
      for (h = ((av)f.get(n));; h = null)
      {
        localObject = a;
        n = m + 1;
        i = localObject[m];
        localObject = a;
        m = n + 1;
        j = localObject[n];
        localObject = a;
        n = m + 1;
        k = localObject[m];
        localObject = a;
        m = n + 1;
        l = localObject[n];
        localObject = a;
        n = m + 1;
        int i3 = localObject[m];
        m = n;
        if (i3 <= 0) {
          break;
        }
        m = new ArrayList(i3);
        int i2 = 0;
        for (;;)
        {
          m = n;
          if (i2 >= i3) {
            break;
          }
          if (bh.a) {
            new StringBuilder("Instantiate ").append(localan).append(" set remove fragment #").append(a[n]);
          }
          localObject = (av)f.get(a[n]);
          m.add(localObject);
          i2 += 1;
          n += 1;
        }
      }
      localan.a(localPkp);
      i1 += 1;
    }
    j = b;
    k = c;
    n = d;
    p = e;
    l = true;
    q = f;
    r = g;
    s = h;
    t = i;
    u = j;
    v = k;
    localan.a(1);
    return localan;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeIntArray(a);
    paramParcel.writeInt(b);
    paramParcel.writeInt(c);
    paramParcel.writeString(d);
    paramParcel.writeInt(e);
    paramParcel.writeInt(f);
    TextUtils.writeToParcel(g, paramParcel, 0);
    paramParcel.writeInt(h);
    TextUtils.writeToParcel(i, paramParcel, 0);
    paramParcel.writeStringList(j);
    paramParcel.writeStringList(k);
  }
}

/* Location:
 * Qualified Name:     aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */