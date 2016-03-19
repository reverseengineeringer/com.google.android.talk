import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

final class ctu
{
  long a;
  String b;
  String c;
  Long d;
  Long e;
  String f;
  String g;
  boolean h;
  final Map<String, ctz> i = new hq();
  final Map<String, ctw> j = new hq();
  
  boolean a()
  {
    Iterator localIterator = i.values().iterator();
    while (localIterator.hasNext()) {
      if (nextf) {
        return true;
      }
    }
    localIterator = j.values().iterator();
    while (localIterator.hasNext()) {
      if (nextf) {
        return true;
      }
    }
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        return bool1;
                        bool1 = bool2;
                      } while (paramObject == null);
                      bool1 = bool2;
                    } while (getClass() != paramObject.getClass());
                    paramObject = (ctu)paramObject;
                    bool1 = bool2;
                  } while (h != h);
                  bool1 = bool2;
                } while (!aal.c(b, b));
                bool1 = bool2;
              } while (!aal.c(c, c));
              bool1 = bool2;
            } while (!aal.c(d, d));
            bool1 = bool2;
          } while (!aal.c(e, e));
          bool1 = bool2;
        } while (!aal.c(f, f));
        bool1 = bool2;
      } while (!aal.c(g, g));
      bool1 = bool2;
    } while (!i.equals(i));
    return j.equals(j);
  }
  
  public int hashCode()
  {
    if (c != null) {
      return c.hashCode();
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     ctu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */