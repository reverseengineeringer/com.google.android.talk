import android.util.Log;
import java.io.InputStream;

final class hxg
{
  private final hww a;
  
  hxg(hww paramhww)
  {
    a = paramhww;
  }
  
  protected hwx a(InputStream paramInputStream)
  {
    paramInputStream = hxc.a(paramInputStream, a);
    hwx localhwx = new hwx(paramInputStream.k());
    int i = paramInputStream.a();
    if (i != 6)
    {
      switch (i)
      {
      }
      for (;;)
      {
        i = paramInputStream.a();
        break;
        localhwx.a(new hxi(paramInputStream.d()));
        continue;
        Object localObject = paramInputStream.c();
        if (!((hxh)localObject).f())
        {
          paramInputStream.a((hxh)localObject);
        }
        else
        {
          localhwx.b(((hxh)localObject).a()).a((hxh)localObject);
          continue;
          localObject = paramInputStream.c();
          if (((hxh)localObject).c() == 7) {
            paramInputStream.b((hxh)localObject);
          }
          localhwx.b(((hxh)localObject).a()).a((hxh)localObject);
          continue;
          i = paramInputStream.g();
          if (i < 0)
          {
            if (Log.isLoggable("ExifReader", 6)) {
              Log.e("ExifReader", "Found negative image size for compressed thumbnail");
            }
          }
          else
          {
            localObject = new byte[i];
            if (localObject.length == paramInputStream.a((byte[])localObject))
            {
              localhwx.b((byte[])localObject);
            }
            else if (Log.isLoggable("ExifReader", 5))
            {
              continue;
              localObject = new byte[paramInputStream.f()];
              if (localObject.length == paramInputStream.a((byte[])localObject))
              {
                localhwx.a(paramInputStream.e(), (byte[])localObject);
              }
              else if (Log.isLoggable("ExifReader", 5))
              {
                continue;
                localhwx.a(paramInputStream.h());
              }
            }
          }
        }
      }
    }
    return localhwx;
  }
}

/* Location:
 * Qualified Name:     hxg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */