import android.os.Environment;
import java.io.File;

public abstract class ejc
  extends ehx
{
  private final Object a;
  final boolean e;
  public eyg f;
  final String g;
  ejd h;
  
  public ejc(boolean paramBoolean, eyg parameyg, String paramString, Object paramObject)
  {
    a = paramObject;
    e = paramBoolean;
    f = parameyg;
    g = paramString;
  }
  
  public abstract ejb a(byte[] paramArrayOfByte);
  
  public abstract void a(ejb paramejb);
  
  public void a(String paramString) {}
  
  public boolean a()
  {
    return true;
  }
  
  public String c()
  {
    return f.s();
  }
  
  public abstract boolean e();
  
  public abstract boolean f();
  
  public abstract void g();
  
  public abstract void h();
  
  public File j()
  {
    return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
  }
  
  public abstract eis k_();
  
  public Object l()
  {
    return a;
  }
  
  public String m()
  {
    return f.o();
  }
  
  public eyg n()
  {
    return f;
  }
  
  public boolean o()
  {
    return e;
  }
  
  public String toString()
  {
    String str2 = String.valueOf(super.toString());
    if (f == null) {}
    for (String str1 = " None";; str1 = f.toString())
    {
      boolean bool1 = f();
      boolean bool2 = k();
      boolean bool3 = a();
      return String.valueOf(str2).length() + 69 + String.valueOf(str1).length() + str2 + " MediaUrl:" + str1 + " cacheable=" + bool1 + " cancelled=" + bool2 + " shouldUseLoaderQueue=" + bool3;
    }
  }
}

/* Location:
 * Qualified Name:     ejc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */