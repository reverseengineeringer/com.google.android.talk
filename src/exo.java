import android.content.Context;
import android.os.PowerManager;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;

public final class exo
{
  static final Object a = new Object();
  public static volatile boolean b = false;
  static BufferedOutputStream c;
  static PowerManager d;
  static volatile String e;
  
  static
  {
    aal.a(new exp());
  }
  
  public static void a()
  {
    e = null;
  }
  
  public static void a(String paramString)
  {
    e = paramString;
  }
  
  static void b()
  {
    Object localObject1 = aal.oJ;
    boolean bool1 = aal.a(aal.oJ, "babel_data_logging", false);
    label176:
    label179:
    for (;;)
    {
      synchronized (a)
      {
        boolean bool2;
        if (bool1 != b)
        {
          if (bool1)
          {
            d = (PowerManager)((Context)localObject1).getSystemService("power");
            bool2 = ((Context)localObject1).getFileStreamPath("datalogs.csv").exists();
          }
        }
        else {
          try
          {
            localObject1 = ((Context)localObject1).openFileOutput("datalogs.csv", 32768);
            if (localObject1 == null) {
              break label176;
            }
            c = new BufferedOutputStream((OutputStream)localObject1);
            if (bool2) {
              break label176;
            }
          }
          catch (FileNotFoundException localFileNotFoundException)
          {
            try
            {
              c.write(exr.b.getBytes());
              c.flush();
              b = bool1;
              return;
            }
            catch (IOException localIOException1)
            {
              Object localObject2;
              ezi.d("Babel", "error writing header to datalog output stream", localIOException1);
            }
            localFileNotFoundException = localFileNotFoundException;
            ezi.d("Babel", "error opening datalog output stream", localFileNotFoundException);
            localObject2 = null;
            bool1 = false;
            continue;
          }
        }
        d = null;
        BufferedOutputStream localBufferedOutputStream = c;
        if (localBufferedOutputStream == null) {
          break label179;
        }
        try
        {
          c.close();
          c = null;
        }
        catch (IOException localIOException2)
        {
          ezi.d("Babel", "error closing datalog output stream", localIOException2);
          continue;
        }
      }
    }
  }
  
  public static boolean c()
  {
    return b;
  }
  
  public static void d()
  {
    synchronized (a)
    {
      if (!b) {
        return;
      }
    }
    try
    {
      c.flush();
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        ezi.d("Babel", "error flushing datalog output stream", localIOException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     exo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */