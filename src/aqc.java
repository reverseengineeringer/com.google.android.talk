import android.content.Context;
import android.net.Uri;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class aqc<Data>
  implements apg<Uri, Data>
{
  private static final Set<String> a = Collections.unmodifiableSet(new HashSet(Arrays.asList(new String[] { "file", "android.resource", "content" })));
  private final Context b;
  private final aqe<Data> c;
  
  public aqc(Context paramContext, aqe<Data> paramaqe)
  {
    b = paramContext;
    c = paramaqe;
  }
}

/* Location:
 * Qualified Name:     aqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */