import android.content.Context;
import com.google.api.client.http.GenericUrl;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;

public final class dmq
  extends doo
{
  private static final boolean a = false;
  private static final long serialVersionUID = 2L;
  private final String b;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public dmq(String paramString)
  {
    b = paramString;
  }
  
  public dqf a(Context paramContext, cwk paramcwk)
  {
    Object localObject1;
    if (a)
    {
      localObject1 = String.valueOf(paramcwk.toString());
      if (((String)localObject1).length() == 0) {
        break label247;
      }
      "[SEND] ".concat((String)localObject1);
    }
    for (;;)
    {
      Object localObject2 = b(paramContext);
      k();
      localObject1 = new File(b);
      if (((File)localObject1).exists())
      {
        paramContext = dvd.e(c).a();
        paramcwk = new DefaultHttpClient();
        localObject2 = new HttpPost(((GenericUrl)localObject2).toURI());
        try
        {
          mnf localmnf = new mnf();
          localmnf.a("prod", new mni("Google_Hangouts_Android"));
          localmnf.a("ver", new mni(String.valueOf(h.c()).concat("-calls")));
          localmnf.a("email", new mni(paramContext));
          localmnf.a("type", new mni("log"));
          localmnf.a("log", new mnh((File)localObject1));
          ((HttpPost)localObject2).setEntity(localmnf);
          paramContext = paramcwk.execute((HttpUriRequest)localObject2);
          if ((paramContext == null) || (paramContext.getStatusLine().getStatusCode() != 200))
          {
            ezi.d("Babel", "Crash log upload unsuccessful.", new Object[0]);
            throw new dvn(108);
            label247:
            new String("[SEND] ");
          }
        }
        catch (FileNotFoundException paramContext)
        {
          for (;;)
          {
            paramContext = null;
          }
        }
        catch (ClientProtocolException paramcwk)
        {
          paramContext = String.valueOf(paramcwk.toString());
          if (paramContext.length() != 0) {}
          for (paramContext = "Crash log upload failed due to ClientProtocolException ".concat(paramContext);; paramContext = new String("Crash log upload failed due to ClientProtocolException "))
          {
            ezi.d("Babel", paramContext, new Object[0]);
            throw new dvn(114, paramcwk);
          }
        }
        catch (IOException paramcwk)
        {
          paramContext = String.valueOf(paramcwk.toString());
          if (paramContext.length() != 0) {}
          for (paramContext = "Crash log upload failed due to IOException ".concat(paramContext);; paramContext = new String("Crash log upload failed due to IOException "))
          {
            ezi.d("Babel", paramContext, new Object[0]);
            throw new dvn(102, paramcwk);
          }
          ezi.c("Babel", "Crash log successfully uploaded.", new Object[0]);
          ((File)localObject1).delete();
          return null;
        }
      }
    }
    paramContext = String.valueOf(((File)localObject1).getAbsolutePath());
    if (paramContext.length() != 0) {}
    for (paramContext = "Crash no such log file ".concat(paramContext);; paramContext = new String("Crash no such log file "))
    {
      ezi.c("Babel", paramContext, new Object[0]);
      return null;
    }
  }
  
  public String a()
  {
    return "background_queue";
  }
  
  protected String a(Context paramContext)
  {
    paramContext = String.valueOf("https://clients2.google.com");
    String str = String.valueOf(f());
    if (str.length() != 0) {
      return paramContext.concat(str);
    }
    return new String(paramContext);
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    parambfd = new File(b);
    if (parambfd.exists()) {
      parambfd.delete();
    }
  }
  
  public long b()
  {
    return TimeUnit.HOURS.toMillis(24L);
  }
  
  public String f()
  {
    return "/cr/report";
  }
}

/* Location:
 * Qualified Name:     dmq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */