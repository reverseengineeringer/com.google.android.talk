import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class fkq
{
  private final Account a;
  private final Set<Scope> b;
  private final Set<Scope> c;
  private final Map<fhw<?>, fkr> d;
  private final int e;
  private final View f;
  private final String g;
  private final String h;
  private final gqd i;
  private Integer j;
  
  public fkq(Account paramAccount, Set<Scope> paramSet, Map<fhw<?>, fkr> paramMap, int paramInt, View paramView, String paramString1, String paramString2, gqd paramgqd)
  {
    a = paramAccount;
    if (paramSet == null) {}
    for (paramAccount = Collections.EMPTY_SET;; paramAccount = Collections.unmodifiableSet(paramSet))
    {
      b = paramAccount;
      paramAccount = paramMap;
      if (paramMap == null) {
        paramAccount = Collections.EMPTY_MAP;
      }
      d = paramAccount;
      f = paramView;
      e = paramInt;
      g = paramString1;
      h = paramString2;
      i = paramgqd;
      paramAccount = new HashSet(b);
      paramSet = d.values().iterator();
      while (paramSet.hasNext()) {
        paramAccount.addAll(nexta);
      }
    }
    c = Collections.unmodifiableSet(paramAccount);
  }
  
  @Deprecated
  public String a()
  {
    if (a != null) {
      return a.name;
    }
    return null;
  }
  
  public void a(Integer paramInteger)
  {
    j = paramInteger;
  }
  
  public Account b()
  {
    return a;
  }
  
  public Account c()
  {
    if (a != null) {
      return a;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  public Set<Scope> d()
  {
    return b;
  }
  
  public Set<Scope> e()
  {
    return c;
  }
  
  public Map<fhw<?>, fkr> f()
  {
    return d;
  }
  
  public String g()
  {
    return g;
  }
  
  public String h()
  {
    return h;
  }
  
  public gqd i()
  {
    return i;
  }
  
  public Integer j()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     fkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */