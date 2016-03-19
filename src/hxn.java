import android.os.Environment;
import android.os.StatFs;
import java.io.File;

final class hxn
  implements hxo
{
  public long a()
  {
    return new StatFs(Environment.getDataDirectory().getPath()).getTotalBytes();
  }
  
  public long b()
  {
    return new StatFs(Environment.getDataDirectory().getPath()).getFreeBytes();
  }
}

/* Location:
 * Qualified Name:     hxn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */