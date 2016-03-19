import java.io.File;
import java.io.FileFilter;

final class ag
  implements FileFilter
{
  ag(String paramString) {}
  
  public boolean accept(File paramFile)
  {
    return !paramFile.getName().startsWith(a);
  }
}

/* Location:
 * Qualified Name:     ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */