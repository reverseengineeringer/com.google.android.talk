import java.io.File;
import java.io.FilenameFilter;

final class dhc
  implements FilenameFilter
{
  dhc(dhb paramdhb) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    return (paramString != null) && ((paramString.startsWith("mmsdump-")) || (paramString.startsWith("smsdump-")));
  }
}

/* Location:
 * Qualified Name:     dhc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */