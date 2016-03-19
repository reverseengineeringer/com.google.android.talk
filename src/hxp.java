import android.os.Environment;
import android.os.StatFs;
import java.io.File;

final class hxp
  implements hxo
{
  public long a()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    long l = localStatFs.getBlockSize();
    return localStatFs.getBlockCount() * l;
  }
  
  public long b()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    long l = localStatFs.getBlockSize();
    return localStatFs.getFreeBlocks() * l;
  }
}

/* Location:
 * Qualified Name:     hxp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */