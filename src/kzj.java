import java.io.File;

final class kzj
  extends kyx
{
  private final File a;
  private final kth<kzg> b;
  
  kzj(File paramFile, kzg... paramVarArgs)
  {
    a = ((File)fii.a(paramFile));
    b = kth.a(paramVarArgs);
  }
  
  public String toString()
  {
    String str1 = String.valueOf(a);
    String str2 = String.valueOf(b);
    return String.valueOf(str1).length() + 20 + String.valueOf(str2).length() + "Files.asByteSink(" + str1 + ", " + str2 + ")";
  }
}

/* Location:
 * Qualified Name:     kzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */