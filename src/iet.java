import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import java.io.BufferedInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class iet
{
  private final String a;
  private final Context b;
  private final idi c;
  private final String d;
  private final lfi e;
  private final mcq f;
  private final jae g;
  private long h;
  private String i;
  private boolean j;
  private long k;
  private Uri l;
  private Uri m;
  private idi n;
  
  iet(Context paramContext, Uri paramUri, String paramString1, String paramString2, lfi paramlfi, mcq parammcq, jae paramjae)
  {
    b = paramContext;
    l = paramUri;
    m = paramUri;
    d = paramString1;
    e = paramlfi;
    f = parammcq;
    g = paramjae;
    if (paramString2 != null)
    {
      a = paramString2;
      paramContext = a(m);
      c = paramContext;
      n = c;
      if (paramContext != null) {
        break label152;
      }
    }
    label152:
    for (long l1 = 0L;; l1 = paramContext.b())
    {
      k = l1;
      if (k > 0L) {
        break label161;
      }
      paramContext = String.valueOf(m);
      throw new ids(String.valueOf(paramContext).length() + 17 + "Empty content at " + paramContext);
      paramString2 = aal.a(paramContext, paramUri);
      break;
    }
    label161:
    paramString1 = null;
    if (ipk.b(paramUri))
    {
      paramContext = a(paramUri, a);
      paramString1 = a;
    }
    for (h = b;; h = System.currentTimeMillis())
    {
      paramContext = paramString1;
      if (paramString1 == null) {
        paramContext = paramUri.toString();
      }
      int i1 = paramContext.lastIndexOf('/');
      paramUri = paramContext;
      if (i1 != -1) {
        paramUri = paramContext.substring(i1 + 1);
      }
      i = paramUri;
      return;
    }
  }
  
  private idi a(Uri paramUri)
  {
    ContentResolver localContentResolver = b.getContentResolver();
    try
    {
      paramUri = idi.a(localContentResolver.openInputStream(paramUri));
      return paramUri;
    }
    catch (IOException paramUri)
    {
      return null;
    }
    catch (FileNotFoundException paramUri) {}
    return null;
  }
  
  private ieu a(Uri paramUri, String paramString)
  {
    if (ipk.b(paramString)) {}
    try
    {
      for (;;)
      {
        paramString = b.getContentResolver().query(paramUri, new String[] { "datetaken", "_data" }, null, null, null);
        if (paramString != null) {}
        try
        {
          if (paramString.moveToNext())
          {
            paramUri = new ieu(paramString.getString(paramString.getColumnIndexOrThrow("_data")), paramString.getLong(paramString.getColumnIndexOrThrow("datetaken")));
            if (paramString != null) {
              paramString.close();
            }
            return paramUri;
            if (!ipk.c(paramString))
            {
              paramUri = String.valueOf(paramUri);
              throw new idr(String.valueOf(paramUri).length() + 20 + "Invalid content at: " + paramUri, true);
            }
          }
          else
          {
            paramUri = String.valueOf(paramUri);
            throw new ids(String.valueOf(paramUri).length() + 20 + "No content for URI: " + paramUri);
          }
        }
        finally {}
      }
    }
    finally
    {
      paramString = null;
    }
    if (paramString != null) {
      paramString.close();
    }
    throw paramUri;
  }
  
  public InputStream a(long paramLong)
  {
    BufferedInputStream localBufferedInputStream = new BufferedInputStream(b.getContentResolver().openInputStream(m));
    if (0L > 0L) {
      localBufferedInputStream.skip(0L);
    }
    return localBufferedInputStream;
  }
  
  public void a()
  {
    Object localObject = aal.c(b, m);
    if (localObject != null)
    {
      m = ((Uri)localObject);
      localObject = a(m);
      n = ((idi)localObject);
      k = ((idi)localObject).b();
      j = true;
    }
  }
  
  public void a(String paramString)
  {
    i = paramString;
  }
  
  public void b(long paramLong)
  {
    h = paramLong;
  }
  
  public boolean b()
  {
    return j;
  }
  
  public Uri c()
  {
    return m;
  }
  
  public String d()
  {
    return i;
  }
  
  public String e()
  {
    return a;
  }
  
  public long f()
  {
    return h;
  }
  
  public Uri g()
  {
    return l;
  }
  
  public idi h()
  {
    return c;
  }
  
  public idi i()
  {
    return n;
  }
  
  public String j()
  {
    return d;
  }
  
  public long k()
  {
    return k;
  }
  
  public lfi l()
  {
    return e;
  }
  
  public mcq m()
  {
    return f;
  }
  
  public jae n()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     iet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */