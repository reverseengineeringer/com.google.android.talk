import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class iaj
  implements Parcelable
{
  public static final Parcelable.Creator<iaj> CREATOR = new iak();
  public String a;
  public String b = "com.google.android.libraries.social.login.LoginRequest.DEFAULT_ERROR_TOAST";
  public int c = -1;
  public boolean d = true;
  public String e;
  public boolean f;
  public boolean g;
  public boolean h;
  public boolean i;
  public boolean j;
  public int k = -1;
  public String l;
  public String m;
  public String n;
  public String o;
  public String p;
  public String q;
  public hzu r;
  public Class<? extends hzw> s;
  public Bundle t;
  public List<Class<? extends ial>> u = new ArrayList();
  
  public iaj() {}
  
  public iaj(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    e = paramParcel.readString();
    if (paramParcel.readInt() > 0)
    {
      bool1 = true;
      f = bool1;
      if (paramParcel.readInt() <= 0) {
        break label303;
      }
      bool1 = true;
      label88:
      g = bool1;
      if (paramParcel.readInt() <= 0) {
        break label308;
      }
      bool1 = true;
      label102:
      h = bool1;
      if (paramParcel.readInt() <= 0) {
        break label313;
      }
      bool1 = true;
      label116:
      i = bool1;
      if (paramParcel.readInt() <= 0) {
        break label318;
      }
    }
    label303:
    label308:
    label313:
    label318:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      j = bool1;
      k = paramParcel.readInt();
      l = paramParcel.readString();
      m = paramParcel.readString();
      n = paramParcel.readString();
      c = paramParcel.readInt();
      o = paramParcel.readString();
      p = paramParcel.readString();
      q = paramParcel.readString();
      r = ((hzu)paramParcel.readParcelable(getClass().getClassLoader()));
      String str = paramParcel.readString();
      t = paramParcel.readBundle();
      paramParcel = paramParcel.createStringArray();
      if (str != null) {}
      try
      {
        s = Class.forName(str);
        if (paramParcel.length <= 0) {
          return;
        }
        u = new ArrayList(paramParcel.length);
        while (i1 < paramParcel.length)
        {
          u.add(Class.forName(paramParcel[i1]));
          i1 += 1;
        }
        bool1 = false;
      }
      catch (ClassNotFoundException paramParcel)
      {
        if (!Log.isLoggable("LoginRequest", 6)) {
          return;
        }
        Log.e("LoginRequest", "Could not deserialize class", paramParcel);
      }
      bool1 = false;
      break label88;
      bool1 = false;
      break label102;
      bool1 = false;
      break label116;
    }
  }
  
  public iaj a()
  {
    f = true;
    return b();
  }
  
  public iaj a(int paramInt)
  {
    c = paramInt;
    return this;
  }
  
  public iaj a(Context paramContext, Intent paramIntent)
  {
    k = paramIntent.getIntExtra("account_id", -1);
    paramContext = ((gwc)ilh.a(paramContext, gwc.class)).a(paramContext, paramIntent);
    if (paramContext != null)
    {
      l = a;
      m = b;
    }
    String str = paramIntent.getStringExtra("viewerid");
    Object localObject = null;
    if (str != null)
    {
      paramContext = paramIntent.getStringExtra("effectiveid");
      paramIntent = str;
    }
    for (;;)
    {
      if (paramIntent != null)
      {
        n = paramIntent;
        m = paramContext;
      }
      return this;
      Uri localUri = paramIntent.getData();
      paramContext = (Context)localObject;
      paramIntent = str;
      if (localUri != null)
      {
        paramIntent = str;
        try
        {
          str = localUri.getQueryParameter("viewerid");
          paramContext = (Context)localObject;
          paramIntent = str;
          if (str != null)
          {
            paramIntent = str;
            paramContext = localUri.getQueryParameter("effectiveid");
            paramIntent = str;
          }
        }
        catch (UnsupportedOperationException paramContext)
        {
          paramContext = (Context)localObject;
        }
      }
    }
  }
  
  public iaj a(Class<? extends hzw> paramClass)
  {
    return a(paramClass, null);
  }
  
  public iaj a(Class<? extends hzw> paramClass, Bundle paramBundle)
  {
    s = paramClass;
    t = paramBundle;
    return this;
  }
  
  public iaj a(String paramString)
  {
    o = paramString;
    return this;
  }
  
  public iaj a(String paramString1, String paramString2)
  {
    o = paramString1;
    p = paramString2;
    return this;
  }
  
  public iaj b()
  {
    g = true;
    return this;
  }
  
  public iaj c()
  {
    h = true;
    return this;
  }
  
  public iaj d()
  {
    d = false;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i2 = 1;
    int i1 = 0;
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(e);
    if (f)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!g) {
        break label269;
      }
      paramInt = 1;
      label52:
      paramParcel.writeInt(paramInt);
      if (!h) {
        break label274;
      }
      paramInt = 1;
      label66:
      paramParcel.writeInt(paramInt);
      if (!i) {
        break label279;
      }
      paramInt = 1;
      label80:
      paramParcel.writeInt(paramInt);
      if (!j) {
        break label284;
      }
      paramInt = i2;
      label95:
      paramParcel.writeInt(paramInt);
      paramParcel.writeInt(k);
      paramParcel.writeString(l);
      paramParcel.writeString(m);
      paramParcel.writeString(n);
      paramParcel.writeInt(c);
      paramParcel.writeString(o);
      paramParcel.writeString(p);
      paramParcel.writeString(q);
      paramParcel.writeParcelable(r, 0);
      if (s == null) {
        break label289;
      }
    }
    label269:
    label274:
    label279:
    label284:
    label289:
    for (Object localObject = s.getName();; localObject = null)
    {
      paramParcel.writeString((String)localObject);
      paramParcel.writeBundle(t);
      localObject = new String[u.size()];
      Iterator localIterator = u.iterator();
      paramInt = i1;
      while (localIterator.hasNext())
      {
        localObject[paramInt] = ((Class)localIterator.next()).getName();
        paramInt += 1;
      }
      paramInt = 0;
      break;
      paramInt = 0;
      break label52;
      paramInt = 0;
      break label66;
      paramInt = 0;
      break label80;
      paramInt = 0;
      break label95;
    }
    paramParcel.writeStringArray((String[])localObject);
  }
}

/* Location:
 * Qualified Name:     iaj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */