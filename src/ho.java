import java.util.Locale;

public class ho
{
  public int a(Locale paramLocale)
  {
    int j = 1;
    if ((paramLocale != null) && (!paramLocale.equals(hn.b)))
    {
      String str = gz.a.a(paramLocale);
      int i;
      if (str == null)
      {
        i = j;
        switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
        {
        default: 
          i = 0;
        }
      }
      do
      {
        do
        {
          return i;
          i = j;
        } while (str.equalsIgnoreCase(hn.c));
        i = j;
      } while (str.equalsIgnoreCase(hn.d));
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     ho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */