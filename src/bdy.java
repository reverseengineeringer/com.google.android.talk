import android.text.TextUtils;
import android.util.Patterns;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class bdy
  implements Serializable
{
  public String a = "";
  
  @Deprecated
  public abstract bee a();
  
  public abstract Collection<bee> b();
  
  @Deprecated
  public abstract String c();
  
  public abstract Collection<bdw> d();
  
  public abstract String e();
  
  public abstract String f();
  
  public abstract boolean g();
  
  public abstract boolean h();
  
  @Deprecated
  public abstract String i();
  
  public abstract Collection<bdx> j();
  
  public abstract String k();
  
  public abstract boolean l();
  
  public abstract String m();
  
  public abstract boolean n();
  
  public abstract boolean o();
  
  public Collection<dtw> p()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = b().iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(dtw.a(((bee)localIterator.next()).b()));
    }
    localIterator = j().iterator();
    while (localIterator.hasNext())
    {
      bdx localbdx = (bdx)localIterator.next();
      localArrayList.add(dtw.a(localbdx.a(), localbdx.e()));
    }
    return localArrayList;
  }
  
  public boolean q()
  {
    return !b().isEmpty();
  }
  
  public int r()
  {
    if (TextUtils.isEmpty(a)) {
      return bdz.a;
    }
    if (Patterns.EMAIL_ADDRESS.matcher(a).matches()) {
      return bdz.c;
    }
    if (ezm.m(a) != null) {
      return bdz.d;
    }
    Iterator localIterator = d().iterator();
    while (localIterator.hasNext()) {
      if (((bdw)localIterator.next()).b().contains(a)) {
        return bdz.c;
      }
    }
    localIterator = b().iterator();
    while (localIterator.hasNext()) {
      if (((bee)localIterator.next()).d().contains(a)) {
        return bdz.d;
      }
    }
    return bdz.b;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(ezi.b(e()));
    String str2 = String.valueOf(ezi.b(f()));
    String str3 = String.valueOf(Arrays.toString(j().toArray()));
    String str4 = String.valueOf(ezi.b(k()));
    String str5 = String.valueOf(ezi.b(m()));
    String str6 = String.valueOf(Arrays.toString(d().toArray()));
    String str7 = String.valueOf(Arrays.toString(b().toArray()));
    String str8 = String.valueOf(Arrays.toString(p().toArray()));
    return String.valueOf(str1).length() + 126 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + "HangoutsContact {name: " + str1 + " | avatarUrl: " + str2 + " | gaias: " + str3 + " | contactLookupKey: " + str4 + " | contactId: " + str5 + " | emails: " + str6 + " | phoneNumbers: " + str7 + " | inviteeIds: " + str8 + "}";
  }
}

/* Location:
 * Qualified Name:     bdy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */