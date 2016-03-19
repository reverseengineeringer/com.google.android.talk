import android.net.Uri;
import android.text.TextUtils;

public final class ier
{
  Uri a;
  String b;
  String c;
  String d;
  String e;
  String f;
  String g;
  String h;
  String i;
  long j;
  boolean k = true;
  int l;
  boolean m;
  lfi n;
  mcq o;
  jae p;
  
  public ier a()
  {
    k = true;
    return this;
  }
  
  public ier a(Uri paramUri)
  {
    a = paramUri;
    return this;
  }
  
  public ier a(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public ier b()
  {
    m = true;
    return this;
  }
  
  public ier b(String paramString)
  {
    e = paramString;
    return this;
  }
  
  public ieq c()
  {
    boolean bool2 = true;
    if ((!TextUtils.isEmpty(e)) || (!TextUtils.isEmpty(g)) || (!TextUtils.isEmpty(i)))
    {
      bool1 = true;
      aen.b(bool1, "must specify an albumId, albumMediaKey or eventId");
      if ((a == null) || (a == Uri.EMPTY)) {
        break label79;
      }
    }
    label79:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      aen.b(bool1, "must specify a mediaUri");
      return new ieq(this);
      bool1 = false;
      break;
    }
  }
  
  public ier c(String paramString)
  {
    h = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     ier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */