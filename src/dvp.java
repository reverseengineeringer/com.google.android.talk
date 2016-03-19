import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class dvp
  implements beh, cnz, dxj
{
  public static final dml A;
  public static final dml B;
  public static final dml C;
  public static final dml D;
  public static final dml E;
  public static final dml F;
  public static final dml G;
  public static final dml H;
  public static final dml I;
  public static final dml J;
  public static final dml K;
  public static final dml L;
  public static final dml M;
  public static final dml N;
  public static final dml O;
  static final dml P;
  static final dml Q;
  public static final dml R;
  public static final dml S;
  public static final dml T;
  public static final dml U;
  public static final dml V = new dml("1d9a5232", false);
  public static final dml W = new dml("fc4e8643", false);
  public static final dml X = new dml("7aac4467", false);
  private static final dml Y = new dml("cfd3274b", false);
  private static final dml Z = new dml("dd69e883", true);
  public static final dml a = new dml("648d1162", false);
  private static final dml aa;
  private static final dml ab;
  private static final dml ac;
  private static final dml ad;
  private static final dml ae;
  private static final dml af;
  private static final dml ag;
  private static final dml ah;
  private static final dml[] ai = { ac, J, O, n, Q, Y, Z, af, g, D, d, X, i, W, T, P, j, C, aa, S, q, r, o, p, H, I, ah, ag, v, V, x, N, E, F, G, t, u, a, b, c, ad, h, y, R, ae, s, w, k, e, B, l, m, U, ab, f, L, M, K, z, A };
  public static final dml b = new dml("4ad97016", false);
  public static final dml c = new dml("93dbdb4d", false);
  public static final dml d = new dml("de9507e5", false);
  public static final dml e;
  static final dml f;
  static final dml g;
  public static final dml h;
  public static final dml i;
  public static final dml j;
  public static final dml k;
  public static final dml l;
  public static final dml m;
  public static final dml n;
  public static final dml o;
  public static final dml p;
  public static final dml q;
  public static final dml r;
  public static final dml s;
  public static final dml t;
  public static final dml u;
  public static final dml v;
  public static final dml w;
  public static final dml x;
  public static final dml y;
  public static final dml z;
  private final Context aj;
  
  static
  {
    aa = new dml("e830ee0f", false);
    ab = new dml("28de1a65", false);
    ac = new dml("638c9a45", false);
    e = new dml("715d526b", false);
    f = new dml("8376fb32", false);
    g = new dml("d2b8406d", false);
    h = new dml("5d18028f", false);
    i = new dml("99c978d5", false);
    j = new dml("8ce9147e", false);
    k = new dml("c678ad4c", true);
    l = new dml("921c6ef1", 60000L);
    m = new dml("92acc909", 1L);
    n = new dml("740e8ae0", 0L);
    o = new dml("79b46bfb", false);
    p = new dml("a42fee7f", false);
    q = new dml("1c54e739", false);
    r = new dml("fc4914ca", false);
    s = new dml("bf9b09ab", false);
    t = new dml("aa48e46b", false);
    u = new dml("eeaee535", false);
    v = new dml("5e810a56", false);
    w = new dml("b95a58f5", false);
    x = new dml("44cc58da", false);
    ad = new dml("ceb85578", false);
    y = new dml("d11d3e38", false);
    z = new dml("c86b39d9", true);
    A = new dml("1e345451", false);
    B = new dml("be12bbc2", false);
    C = new dml("23dac235", false);
    ae = new dml("6cd8df27", false);
    D = new dml("e357e93a", false);
    E = new dml("cba54ff4", false);
    F = new dml("752dd18b", false);
    G = new dml("677d41b1", false);
    H = new dml("40e50305", false);
    I = new dml("4e10592b", false);
    J = new dml("ded386c3", 1000L);
    K = new dml("9ebe31b8", false);
    L = new dml("66ac36b8", false);
    M = new dml("f193cbe1", false);
    N = new dml("6659dab5", false);
    O = new dml("dd8c17d9");
    P = new dml("173eb495", false);
    Q = new dml("cd0113d2", false);
    R = new dml("4c84ade5", false);
    S = new dml("2a7d375c", false);
    T = new dml("c639d94f", false);
    af = new dml("cfefa79c", false);
    U = new dml("b8cfdff0", false);
    ag = new dml("cc28d640", false);
    ah = new dml("759490d3", false);
  }
  
  dvp(Context paramContext)
  {
    aj = paramContext;
  }
  
  public static dml a(String paramString)
  {
    dml[] arrayOfdml = ai;
    int i2 = arrayOfdml.length;
    int i1 = 0;
    while (i1 < i2)
    {
      dml localdml = arrayOfdml[i1];
      if (localdml.b().equals(paramString)) {
        return localdml;
      }
      i1 += 1;
    }
    return null;
  }
  
  public static boolean a(int paramInt)
  {
    return ad.b(paramInt);
  }
  
  private static boolean a(String paramString, hqe paramhqe, Map.Entry<String, ?> paramEntry)
  {
    String str = (String)paramEntry.getKey();
    if (str == null)
    {
      paramString = String.valueOf(paramEntry.getValue());
      ezi.e("Babel", String.valueOf(paramString).length() + 29 + "Unexpected null key; value = " + paramString, new Object[0]);
      return false;
    }
    if (str.startsWith(paramString))
    {
      paramString = str.substring(paramString.length());
      paramEntry = paramEntry.getValue();
      if ((paramEntry instanceof Boolean)) {
        paramhqe.c(paramString, aal.a((Boolean)paramEntry, false));
      }
      for (;;)
      {
        return true;
        if ((paramEntry instanceof Long))
        {
          paramhqe.c(paramString, aal.a((Long)paramEntry, 0L));
        }
        else
        {
          paramhqe = String.valueOf(paramEntry);
          hbs.a(String.valueOf(paramhqe).length() + 27 + String.valueOf(paramString).length() + "Unexpected babel exp: " + paramhqe + " for " + paramString);
        }
      }
    }
    return false;
  }
  
  public static String b(int paramInt)
  {
    if (!((hpz)ilh.a(aal.oJ, hpz.class)).c(paramInt))
    {
      ezi.d("BabelExperiments", 61 + "Getting experiment signatures for invalid account " + paramInt, new Object[0]);
      return "invalid_account";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    dml[] arrayOfdml = ai;
    int i2 = arrayOfdml.length;
    int i1 = 0;
    if (i1 < i2)
    {
      dml localdml = arrayOfdml[i1];
      localStringBuilder.append(localdml.b());
      localStringBuilder.append(":");
      if (localdml.a() == 1) {
        localStringBuilder.append(localdml.b(paramInt));
      }
      for (;;)
      {
        localStringBuilder.append(";");
        i1 += 1;
        break;
        if (localdml.a() == 2) {
          localStringBuilder.append(localdml.c(paramInt));
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String[] c(int paramInt)
  {
    Object localObject = (hpz)ilh.a(aal.oJ, hpz.class);
    if (!((hpz)localObject).c(paramInt))
    {
      ezi.d("BabelExperiments", 60 + "Getting loggable experiments for invalid account " + paramInt, new Object[0]);
      return new String[0];
    }
    localObject = ((hpz)localObject).a(paramInt).b("loggable_experiments");
    if (localObject == null) {
      return new String[0];
    }
    return ((String)localObject).split(";");
  }
  
  public void a(Activity paramActivity, Bundle paramBundle)
  {
    paramActivity = b(((hpu)ilh.a(paramActivity, hpu.class)).a());
    if (!TextUtils.isEmpty(paramActivity)) {
      paramBundle.putString("exp", paramActivity);
    }
  }
  
  public void a(hqe paramhqe, SharedPreferences paramSharedPreferences, SharedPreferences.Editor paramEditor)
  {
    hqe localhqe = paramhqe.h("babel_exp");
    paramhqe = paramhqe.h("babel_exp_override");
    paramSharedPreferences = paramSharedPreferences.getAll().entrySet().iterator();
    while (paramSharedPreferences.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramSharedPreferences.next();
      if ((a("BABEL_EXP_", localhqe, localEntry)) || (a("OVERRIDE_BABEL_EXP_", paramhqe, localEntry))) {
        paramEditor.remove((String)localEntry.getKey());
      }
    }
    paramEditor.apply();
  }
  
  public void a(hqe paramhqe, drl paramdrl)
  {
    int i1 = 0;
    int i2 = ((hpz)ilh.a(aj, hpz.class)).b(paramhqe.b("account_name"), paramhqe.b("effective_gaia_id"));
    if (i2 == -1)
    {
      ezi.d("BabelExperiments", 66 + "Pre-computing loggable experiments for invalid account " + i2, new Object[0]);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    dml[] arrayOfdml = ai;
    int i3 = arrayOfdml.length;
    if (i1 < i3)
    {
      dml localdml = arrayOfdml[i1];
      String str;
      if (localdml.c())
      {
        str = String.valueOf(localdml.b()).concat(":");
        if (localdml.a() != 1) {
          break label218;
        }
        str = String.valueOf(str);
        if (!localdml.b(i2)) {
          break label198;
        }
        paramdrl = "1";
        label165:
        paramdrl = String.valueOf(paramdrl);
        if (paramdrl.length() == 0) {
          break label205;
        }
        paramdrl = str.concat(paramdrl);
      }
      for (;;)
      {
        localArrayList.add(paramdrl);
        i1 += 1;
        break;
        label198:
        paramdrl = "0";
        break label165;
        label205:
        paramdrl = new String(str);
        continue;
        label218:
        paramdrl = str;
        if (localdml.a() == 2)
        {
          paramdrl = String.valueOf(str);
          long l1 = localdml.c(i2);
          paramdrl = String.valueOf(paramdrl).length() + 20 + paramdrl + l1;
        }
      }
    }
    paramhqe.c("loggable_experiments", knk.a(";").a(localArrayList));
  }
}

/* Location:
 * Qualified Name:     dvp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */