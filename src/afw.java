import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class afw
  extends afr
{
  static final Set<String> a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "BEGIN", "END", "LOGO", "PHOTO", "LABEL", "FN", "TITLE", "SOUND", "VERSION", "TEL", "EMAIL", "TZ", "GEO", "NOTE", "URL", "BDAY", "ROLE", "REV", "UID", "KEY", "MAILER", "NAME", "PROFILE", "SOURCE", "NICKNAME", "CLASS", "SORT-STRING", "CATEGORIES", "PRODID", "IMPP" })));
  static final Set<String> b = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "7BIT", "8BIT", "BASE64", "B" })));
  private final afu c;
  
  public afw()
  {
    c = new afu();
  }
  
  public afw(int paramInt)
  {
    c = new afu((byte)0);
  }
  
  public void a(afq paramafq)
  {
    c.a(paramafq);
  }
  
  public void a(InputStream paramInputStream)
  {
    c.a(paramInputStream);
  }
}

/* Location:
 * Qualified Name:     afw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */