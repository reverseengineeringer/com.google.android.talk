import java.io.InputStream;
import java.lang.reflect.Type;
import java.nio.charset.Charset;

public abstract interface isl
{
  public abstract <T> T parseAndClose(InputStream paramInputStream, Charset paramCharset, Class<T> paramClass);
  
  public abstract Object parseAndClose(InputStream paramInputStream, Charset paramCharset, Type paramType);
}

/* Location:
 * Qualified Name:     isl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */