import android.os.PowerManager;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class exr
{
  static final String a = System.getProperty("line.separator");
  static final String b;
  static final SimpleDateFormat p;
  String c;
  String d;
  long e;
  long f;
  boolean g;
  String h;
  int i;
  boolean j;
  int k;
  String l;
  String m;
  String n;
  int o;
  
  static
  {
    String str1 = String.valueOf("date,logType,extraData,messageTime,screenOn,activity,activeClient,notificationLevel,conversationId,sizeInBytes,accountName,accountID");
    String str2 = String.valueOf(a);
    if (str2.length() != 0) {}
    for (str1 = str1.concat(str2);; str1 = new String(str1))
    {
      b = str1;
      p = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSSZ", Locale.US);
      return;
    }
  }
  
  public exr()
  {
    a();
  }
  
  public exr a()
  {
    c = null;
    d = "";
    e = -1L;
    f = -1L;
    g = false;
    h = "";
    i = -1;
    j = false;
    k = -1;
    l = "";
    m = "";
    n = "";
    o = 0;
    return this;
  }
  
  public exr a(int paramInt)
  {
    i = paramInt;
    return this;
  }
  
  public exr a(long paramLong)
  {
    e = paramLong;
    return this;
  }
  
  public exr a(bfd parambfd)
  {
    m = parambfd.b().toString();
    n = parambfd.a();
    return this;
  }
  
  public exr a(czb paramczb)
  {
    m = paramczb.toString();
    return this;
  }
  
  public exr a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public exr a(boolean paramBoolean)
  {
    j = paramBoolean;
    return this;
  }
  
  public exr b(int paramInt)
  {
    k = paramInt;
    return this;
  }
  
  public exr b(long paramLong)
  {
    f = paramLong;
    return this;
  }
  
  public exr b(String paramString)
  {
    if (TextUtils.isEmpty(d))
    {
      d = paramString;
      return this;
    }
    d = d.concat(";").concat(paramString);
    return this;
  }
  
  public void b()
  {
    for (;;)
    {
      synchronized (exo.a)
      {
        if (!exo.b) {
          return;
        }
        try
        {
          BufferedOutputStream localBufferedOutputStream = exo.c;
          g = exo.d.isScreenOn();
          if (exo.e == null) {
            break label303;
          }
          Object localObject1 = exo.e;
          h = ((String)localObject1);
          if (e == -1L) {
            e = System.currentTimeMillis();
          }
          localObject1 = new StringBuilder();
          if (c == null)
          {
            ezi.e("Babel", "null datatype in DataLog.build", new Object[0]);
            c = "(unknown)";
          }
          ((StringBuilder)localObject1).append(p.format(new Date(e))).append("(").append(e).append("),").append(c).append(",").append(d).append(",").append(f).append(",").append(g).append(",").append(h).append(",").append(i).append(",").append(j).append(",").append(k).append(",").append(l).append(",").append(o).append(",").append(n).append(",").append(m).append(a);
          localBufferedOutputStream.write(((StringBuilder)localObject1).toString().getBytes());
          exo.c.flush();
        }
        catch (IOException localIOException)
        {
          String str;
          ezi.d("Babel", "error writing to datalog output stream", localIOException);
          continue;
        }
        return;
      }
      label303:
      str = "--";
    }
  }
  
  public exr c(int paramInt)
  {
    o = paramInt;
    return this;
  }
  
  public exr c(String paramString)
  {
    l = paramString;
    return this;
  }
  
  public exr d(String paramString)
  {
    n = paramString;
    return this;
  }
}

/* Location:
 * Qualified Name:     exr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */