import android.accounts.Account;
import android.telephony.PhoneNumberUtils;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class aeu
{
  private static final Map<String, Integer> i;
  private static final List<String> s = Collections.unmodifiableList(new ArrayList(0));
  public List<afh> a;
  public List<aey> b;
  public List<afj> c;
  public List<afg> d;
  public List<afc> e;
  public List<afm> f;
  public List<aff> g;
  public aex h;
  private final afd j = new afd();
  private List<afi> k;
  private List<afk> l;
  private List<afe> m;
  private List<aev> n;
  private aew o;
  private final int p;
  private final Account q;
  private List<aeu> r;
  
  static
  {
    HashMap localHashMap = new HashMap();
    i = localHashMap;
    localHashMap.put("X-AIM", Integer.valueOf(0));
    i.put("X-MSN", Integer.valueOf(1));
    i.put("X-YAHOO", Integer.valueOf(2));
    i.put("X-ICQ", Integer.valueOf(6));
    i.put("X-JABBER", Integer.valueOf(7));
    i.put("X-SKYPE-USERNAME", Integer.valueOf(3));
    i.put("X-GOOGLE-TALK", Integer.valueOf(5));
    i.put("X-GOOGLE TALK", Integer.valueOf(5));
  }
  
  public aeu()
  {
    this((byte)0);
  }
  
  private aeu(byte paramByte)
  {
    this(-1073741824, null);
  }
  
  public aeu(int paramInt, Account paramAccount)
  {
    p = paramInt;
    q = paramAccount;
  }
  
  private void a(int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    int i3 = 0;
    if (a == null) {
      a = new ArrayList();
    }
    StringBuilder localStringBuilder = new StringBuilder();
    paramString1 = paramString1.trim();
    if ((paramInt == 6) || (aet.f(p))) {}
    for (;;)
    {
      paramString1 = new afh(paramString1, paramInt, paramString2, paramBoolean);
      a.add(paramString1);
      return;
      int i4 = paramString1.length();
      int i2 = 0;
      int i1;
      if (i2 < i4)
      {
        char c1 = paramString1.charAt(i2);
        if ((c1 == 'p') || (c1 == 'P'))
        {
          localStringBuilder.append(',');
          i1 = 1;
        }
        for (;;)
        {
          i2 += 1;
          i3 = i1;
          break;
          if ((c1 == 'w') || (c1 == 'W'))
          {
            localStringBuilder.append(';');
            i1 = 1;
          }
          else if (('0' > c1) || (c1 > '9'))
          {
            i1 = i3;
            if (i2 == 0)
            {
              i1 = i3;
              if (c1 != '+') {}
            }
          }
          else
          {
            localStringBuilder.append(c1);
            i1 = i3;
          }
        }
      }
      if (i3 == 0)
      {
        i1 = afz.a(p);
        paramString1 = new SpannableStringBuilder(localStringBuilder.toString());
        PhoneNumberUtils.formatNumber(paramString1, i1);
        paramString1 = paramString1.toString();
      }
      else
      {
        paramString1 = localStringBuilder.toString();
      }
    }
  }
  
  private void a(String paramString)
  {
    if (d == null)
    {
      a(null, null, paramString, null, 1, false);
      return;
    }
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext())
    {
      afg localafg = (afg)localIterator.next();
      if (c == null)
      {
        c = paramString;
        return;
      }
    }
    a(null, null, paramString, null, 1, false);
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, boolean paramBoolean)
  {
    if (d == null) {
      d = new ArrayList();
    }
    d.add(new afg(paramString1, paramString2, paramString3, paramString4, 1, paramBoolean));
  }
  
  private void a(String paramString, Collection<String> paramCollection)
  {
    if (TextUtils.isEmpty(paramString)) {}
    String str1;
    do
    {
      return;
      str1 = paramString;
      if (!paramString.startsWith("sip:")) {
        break;
      }
      str1 = paramString.substring(4);
    } while (str1.length() == 0);
    int i1 = -1;
    Iterator localIterator = null;
    paramString = null;
    boolean bool;
    if (paramCollection != null)
    {
      localIterator = paramCollection.iterator();
      bool = false;
      while (localIterator.hasNext())
      {
        paramCollection = (String)localIterator.next();
        String str2 = paramCollection.toUpperCase();
        if (str2.equals("PREF"))
        {
          bool = true;
        }
        else if (str2.equals("HOME"))
        {
          i1 = 1;
        }
        else if (str2.equals("WORK"))
        {
          i1 = 2;
        }
        else
        {
          if (i1 >= 0) {
            break label210;
          }
          paramString = paramCollection;
          if (str2.startsWith("X-")) {
            paramString = paramCollection.substring(2);
          }
          i1 = 0;
        }
      }
    }
    for (;;)
    {
      int i2 = i1;
      if (i1 < 0) {
        i2 = 3;
      }
      if (l == null) {
        l = new ArrayList();
      }
      l.add(new afk(str1, i2, paramString, bool));
      return;
      label210:
      break;
      bool = false;
      i1 = -1;
      paramString = localIterator;
    }
  }
  
  private void a(List<String> paramList)
  {
    if ((!TextUtils.isEmpty(j.g)) || (!TextUtils.isEmpty(j.i)) || (!TextUtils.isEmpty(j.h))) {}
    int i1;
    do
    {
      do
      {
        return;
      } while (paramList == null);
      i1 = paramList.size();
    } while (i1 <= 0);
    if (i1 > 3) {
      i1 = 3;
    }
    for (;;)
    {
      if (((String)paramList.get(0)).length() > 0)
      {
        i2 = 1;
        if (i2 >= i1) {
          break label299;
        }
        if (((String)paramList.get(i2)).length() <= 0) {}
      }
      label299:
      for (int i2 = 0;; i2 = 1)
      {
        if (i2 != 0)
        {
          String[] arrayOfString = ((String)paramList.get(0)).split(" ");
          i1 = arrayOfString.length;
          if (i1 == 3)
          {
            j.g = arrayOfString[0];
            j.i = arrayOfString[1];
            j.h = arrayOfString[2];
            return;
            i2 += 1;
            break;
          }
          if (i1 == 2)
          {
            j.g = arrayOfString[0];
            j.h = arrayOfString[1];
            return;
          }
          j.h = ((String)paramList.get(0));
          return;
        }
        switch (i1)
        {
        }
        for (;;)
        {
          j.g = ((String)paramList.get(0));
          return;
          j.i = ((String)paramList.get(2));
          j.h = ((String)paramList.get(1));
        }
      }
    }
  }
  
  private static void a(List<? extends aez> paramList, afa paramafa)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      paramafa.a(((aez)paramList.get(0)).a());
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramafa.a((aez)paramList.next());
      }
      paramafa.c();
    }
  }
  
  private void a(List<String> paramList)
  {
    Object localObject1 = (Collection)((Map)localObject1).get("SORT-AS");
    if ((localObject1 != null) && (((Collection)localObject1).size() != 0))
    {
      if (((Collection)localObject1).size() > 1)
      {
        localObject2 = String.valueOf(Arrays.toString(((Collection)localObject1).toArray()));
        if (((String)localObject2).length() == 0) {
          break label135;
        }
        "Incorrect multiple SORT_AS parameters detected: ".concat((String)localObject2);
      }
      for (;;)
      {
        localObject2 = afz.a((String)((Collection)localObject1).iterator().next(), p);
        localObject1 = new StringBuilder();
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((StringBuilder)localObject1).append((String)((Iterator)localObject2).next());
        }
        label135:
        new String("Incorrect multiple SORT_AS parameters detected: ");
      }
    }
    for (Object localObject2 = ((StringBuilder)localObject1).toString();; localObject2 = null)
    {
      localObject1 = paramList;
      if (paramList == null) {
        localObject1 = s;
      }
      int i2 = ((List)localObject1).size();
      switch (i2)
      {
      default: 
        paramList = (String)((List)localObject1).get(0);
        localObject3 = new StringBuilder();
        int i1 = 1;
        while (i1 < i2)
        {
          if (i1 > 1) {
            ((StringBuilder)localObject3).append(' ');
          }
          ((StringBuilder)localObject3).append((String)((List)localObject1).get(i1));
          i1 += 1;
        }
      }
    }
    localObject1 = null;
    paramList = "";
    boolean bool;
    while (d == null)
    {
      a(paramList, (String)localObject1, null, (String)localObject2, 1, bool);
      return;
      paramList = (String)((List)localObject1).get(0);
      localObject1 = null;
      continue;
      localObject1 = ((StringBuilder)localObject3).toString();
    }
    Object localObject3 = d.iterator();
    while (((Iterator)localObject3).hasNext())
    {
      afg localafg = (afg)((Iterator)localObject3).next();
      if ((a == null) && (b == null))
      {
        a = paramList;
        b = ((String)localObject1);
        d = bool;
        return;
      }
    }
    a(paramList, (String)localObject1, null, (String)localObject2, 1, bool);
  }
  
  private String c()
  {
    Object localObject2 = null;
    Object localObject1;
    if (!TextUtils.isEmpty(j.f)) {
      localObject1 = j.f;
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = "";
      }
      return (String)localObject2;
      if (!j.b())
      {
        localObject1 = afz.a(p, j.a, j.c, j.b, j.d, j.e);
      }
      else if (!j.c())
      {
        localObject1 = afz.a(p, j.g, j.i, j.h);
      }
      else if ((b != null) && (b.size() > 0))
      {
        localObject1 = b.get(0)).a;
      }
      else if ((a != null) && (a.size() > 0))
      {
        localObject1 = a.get(0)).a;
      }
      else if ((c != null) && (c.size() > 0))
      {
        localObject1 = ((afj)c.get(0)).a(p);
      }
      else
      {
        localObject1 = localObject2;
        if (d != null)
        {
          localObject1 = localObject2;
          if (d.size() > 0) {
            localObject1 = ((afg)d.get(0)).b();
          }
        }
      }
    }
  }
  
  public void a()
  {
    j.k = c();
  }
  
  public void a(aeu paramaeu)
  {
    if (r == null) {
      r = new ArrayList();
    }
    r.add(paramaeu);
  }
  
  public void a(afx paramafx)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool1 = false;
    boolean bool5 = true;
    boolean bool6 = true;
    int i2 = 1;
    String str = paramafx.a();
    Map localMap = paramafx.b();
    Object localObject3 = paramafx.d();
    Object localObject4 = paramafx.e();
    if (((localObject3 == null) || (((List)localObject3).size() == 0)) && (localObject4 == null)) {}
    label219:
    label221:
    label459:
    label1038:
    label1257:
    label1505:
    label1567:
    label1798:
    label1933:
    label2016:
    label2488:
    label2491:
    label2494:
    label2497:
    label2511:
    label2527:
    for (;;)
    {
      return;
      int i1;
      if (localObject3 != null)
      {
        i1 = ((List)localObject3).size();
        if (i1 > 1)
        {
          paramafx = new StringBuilder();
          Iterator localIterator = ((List)localObject3).iterator();
          while (localIterator.hasNext())
          {
            paramafx.append((String)localIterator.next());
            if (i1 - 1 > 0) {
              paramafx.append(";");
            }
          }
          paramafx = paramafx.toString();
        }
      }
      for (paramafx = paramafx.trim();; paramafx = null)
      {
        if (str.equals("VERSION")) {
          break label219;
        }
        if (!str.equals("FN")) {
          break label221;
        }
        j.f = paramafx;
        return;
        if (i1 == 1)
        {
          paramafx = (String)((List)localObject3).get(0);
          break;
        }
        paramafx = "";
        break;
      }
      continue;
      if (str.equals("NAME"))
      {
        if (TextUtils.isEmpty(j.f)) {
          j.f = paramafx;
        }
      }
      else if (str.equals("N"))
      {
        if ((aet.b(p)) && ((!TextUtils.isEmpty(j.g)) || (!TextUtils.isEmpty(j.i)) || (!TextUtils.isEmpty(j.h))))
        {
          if (localObject3 == null) {
            continue;
          }
          i2 = ((List)localObject3).size();
          if (i2 <= 0) {
            continue;
          }
          i1 = i2;
          if (i2 > 5) {
            i1 = 5;
          }
          switch (i1)
          {
          }
        }
        for (;;)
        {
          j.a = ((String)((List)localObject3).get(0));
          return;
          paramafx = (Collection)localMap.get("SORT-AS");
          if ((paramafx == null) || (paramafx.size() == 0)) {
            break;
          }
          if (paramafx.size() > 1)
          {
            localObject1 = String.valueOf(Arrays.toString(paramafx.toArray()));
            if (((String)localObject1).length() != 0) {
              "Incorrect multiple SORT_AS parameters detected: ".concat((String)localObject1);
            }
          }
          else
          {
            paramafx = afz.a((String)paramafx.iterator().next(), p);
            i2 = paramafx.size();
            i1 = i2;
            if (i2 > 3) {
              i1 = 3;
            }
            switch (i1)
            {
            }
          }
          for (;;)
          {
            j.g = ((String)paramafx.get(0));
            break;
            new String("Incorrect multiple SORT_AS parameters detected: ");
            break label459;
            j.i = ((String)paramafx.get(2));
            j.h = ((String)paramafx.get(1));
          }
          j.e = ((String)((List)localObject3).get(4));
          j.d = ((String)((List)localObject3).get(3));
          j.c = ((String)((List)localObject3).get(2));
          j.b = ((String)((List)localObject3).get(1));
        }
      }
      else
      {
        if (str.equals("SORT-STRING"))
        {
          j.j = paramafx;
          return;
        }
        if ((str.equals("NICKNAME")) || (str.equals("X-NICKNAME")))
        {
          if (m == null) {
            m = new ArrayList();
          }
          m.add(new afe(paramafx));
          return;
        }
        if (str.equals("SOUND"))
        {
          localObject1 = (Collection)localMap.get("TYPE");
          if ((localObject1 != null) && (((Collection)localObject1).contains("X-IRMC-N"))) {
            a(afz.a(paramafx, p));
          }
        }
        else
        {
          if (str.equals("ADR"))
          {
            paramafx = ((List)localObject3).iterator();
            do
            {
              if (!paramafx.hasNext()) {
                break;
              }
            } while (TextUtils.isEmpty((String)paramafx.next()));
          }
          for (i1 = 0;; i1 = 1)
          {
            if (i1 != 0) {
              break label2527;
            }
            paramafx = (Collection)localMap.get("TYPE");
            if (paramafx != null)
            {
              localObject2 = paramafx.iterator();
              paramafx = null;
              i1 = -1;
              bool1 = false;
              while (((Iterator)localObject2).hasNext())
              {
                localObject1 = (String)((Iterator)localObject2).next();
                localObject4 = ((String)localObject1).toUpperCase();
                if (((String)localObject4).equals("PREF"))
                {
                  bool1 = true;
                }
                else if (((String)localObject4).equals("HOME"))
                {
                  paramafx = null;
                  i1 = 1;
                }
                else if ((((String)localObject4).equals("WORK")) || (((String)localObject4).equalsIgnoreCase("COMPANY")))
                {
                  paramafx = null;
                  i1 = 2;
                }
                else
                {
                  if ((((String)localObject4).equals("PARCEL")) || (((String)localObject4).equals("DOM")) || (((String)localObject4).equals("INTL")) || (i1 >= 0)) {
                    break label2511;
                  }
                  if (((String)localObject4).startsWith("X-"))
                  {
                    paramafx = ((String)localObject1).substring(2);
                    i1 = 0;
                  }
                  else
                  {
                    i1 = 0;
                    paramafx = (afx)localObject1;
                  }
                }
              }
            }
            for (;;)
            {
              if (i1 < 0) {
                i1 = i2;
              }
              for (;;)
              {
                if (c == null) {
                  c = new ArrayList(0);
                }
                c.add(afj.a((List)localObject3, i1, paramafx, bool1, p));
                return;
                if (str.equals("EMAIL"))
                {
                  localObject1 = (Collection)localMap.get("TYPE");
                  if (localObject1 == null) {
                    break label2497;
                  }
                  localObject3 = ((Collection)localObject1).iterator();
                  bool1 = false;
                  i1 = -1;
                  localObject1 = null;
                  while (((Iterator)localObject3).hasNext())
                  {
                    localObject2 = (String)((Iterator)localObject3).next();
                    localObject4 = ((String)localObject2).toUpperCase();
                    if (((String)localObject4).equals("PREF"))
                    {
                      bool1 = true;
                    }
                    else if (((String)localObject4).equals("HOME"))
                    {
                      i1 = 1;
                    }
                    else if (((String)localObject4).equals("WORK"))
                    {
                      i1 = 2;
                    }
                    else if (((String)localObject4).equals("CELL"))
                    {
                      i1 = 4;
                    }
                    else
                    {
                      if (i1 >= 0) {
                        break label2494;
                      }
                      localObject1 = localObject2;
                      if (((String)localObject4).startsWith("X-")) {
                        localObject1 = ((String)localObject2).substring(2);
                      }
                      i1 = 0;
                    }
                  }
                }
                for (;;)
                {
                  i2 = i1;
                  if (i1 < 0) {
                    i2 = 3;
                  }
                  if (b == null) {
                    b = new ArrayList();
                  }
                  b.add(new aey(paramafx, i2, (String)localObject1, bool1));
                  return;
                  if (str.equals("ORG"))
                  {
                    paramafx = (Collection)localMap.get("TYPE");
                    if (paramafx != null)
                    {
                      paramafx = paramafx.iterator();
                      for (;;)
                      {
                        bool2 = bool1;
                        if (!paramafx.hasNext()) {
                          break;
                        }
                        if (((String)paramafx.next()).equals("PREF")) {
                          bool1 = true;
                        }
                      }
                    }
                    a((List)localObject3, localMap, bool2);
                    return;
                  }
                  if (str.equals("TITLE"))
                  {
                    a(paramafx);
                    return;
                  }
                  if (str.equals("ROLE")) {
                    break;
                  }
                  if ((str.equals("PHOTO")) || (str.equals("LOGO")))
                  {
                    paramafx = (Collection)localMap.get("VALUE");
                    if ((paramafx != null) && (paramafx.contains("URL"))) {
                      break;
                    }
                    paramafx = (Collection)localMap.get("TYPE");
                    if (paramafx != null)
                    {
                      localObject2 = paramafx.iterator();
                      paramafx = null;
                      for (bool1 = bool3;; bool1 = true)
                      {
                        localObject1 = paramafx;
                        bool2 = bool1;
                        if (!((Iterator)localObject2).hasNext()) {
                          break label1567;
                        }
                        localObject1 = (String)((Iterator)localObject2).next();
                        if (!"PREF".equals(localObject1)) {
                          break;
                        }
                      }
                      if (paramafx != null) {
                        break label2491;
                      }
                      paramafx = (afx)localObject1;
                    }
                  }
                  for (;;)
                  {
                    break label1505;
                    localObject1 = null;
                    bool2 = bool4;
                    if (k == null) {
                      k = new ArrayList(1);
                    }
                    paramafx = new afi((String)localObject1, (byte[])localObject4, bool2);
                    k.add(paramafx);
                    return;
                    if (str.equals("TEL"))
                    {
                      if (aet.c(p)) {
                        if (paramafx.startsWith("sip:"))
                        {
                          i1 = 1;
                          localObject1 = null;
                        }
                      }
                      while (i1 != 0)
                      {
                        a(paramafx, (Collection)localMap.get("TYPE"));
                        return;
                        if (paramafx.startsWith("tel:"))
                        {
                          localObject1 = paramafx.substring(4);
                          i1 = 0;
                        }
                        else
                        {
                          i1 = 0;
                          localObject1 = paramafx;
                          continue;
                          i1 = 0;
                          localObject1 = paramafx;
                        }
                      }
                      if (paramafx.length() == 0) {
                        break;
                      }
                      localObject3 = (Collection)localMap.get("TYPE");
                      paramafx = afz.a((Collection)localObject3, (String)localObject1);
                      if ((paramafx instanceof Integer))
                      {
                        i1 = ((Integer)paramafx).intValue();
                        paramafx = (afx)localObject2;
                        if ((localObject3 == null) || (!((Collection)localObject3).contains("PREF"))) {
                          break label1798;
                        }
                      }
                      for (bool1 = bool5;; bool1 = false)
                      {
                        a(i1, (String)localObject1, paramafx, bool1);
                        return;
                        paramafx = paramafx.toString();
                        i1 = 0;
                        break;
                      }
                    }
                    if (str.equals("X-SKYPE-PSTNNUMBER"))
                    {
                      localObject1 = (Collection)localMap.get("TYPE");
                      if ((localObject1 != null) && (((Collection)localObject1).contains("PREF"))) {}
                      for (bool1 = bool6;; bool1 = false)
                      {
                        a(7, paramafx, null, bool1);
                        return;
                      }
                    }
                    int i3;
                    if (i.containsKey(str))
                    {
                      i3 = ((Integer)i.get(str)).intValue();
                      localObject1 = (Collection)localMap.get("TYPE");
                      if (localObject1 != null)
                      {
                        localObject1 = ((Collection)localObject1).iterator();
                        bool1 = false;
                        i1 = -1;
                        for (;;)
                        {
                          i2 = i1;
                          bool2 = bool1;
                          if (!((Iterator)localObject1).hasNext()) {
                            break label2016;
                          }
                          localObject2 = (String)((Iterator)localObject1).next();
                          if (((String)localObject2).equals("PREF"))
                          {
                            bool1 = true;
                          }
                          else
                          {
                            if (i1 >= 0) {
                              break label2488;
                            }
                            if (!((String)localObject2).equalsIgnoreCase("HOME")) {
                              break;
                            }
                            i1 = 1;
                          }
                        }
                        if (!((String)localObject2).equalsIgnoreCase("WORK")) {
                          break label2488;
                        }
                        i1 = 2;
                      }
                    }
                    for (;;)
                    {
                      break label1933;
                      bool2 = false;
                      i2 = -1;
                      i1 = i2;
                      if (i2 < 0) {
                        i1 = 1;
                      }
                      if (e == null) {
                        e = new ArrayList();
                      }
                      e.add(new afc(i3, null, paramafx, i1, bool2));
                      return;
                      if (str.equals("NOTE"))
                      {
                        if (g == null) {
                          g = new ArrayList(1);
                        }
                        g.add(new aff(paramafx));
                        return;
                      }
                      if (str.equals("URL"))
                      {
                        if (f == null) {
                          f = new ArrayList(1);
                        }
                        f.add(new afm(paramafx));
                        return;
                      }
                      if (str.equals("BDAY"))
                      {
                        h = new aex(paramafx);
                        return;
                      }
                      if (str.equals("ANNIVERSARY"))
                      {
                        o = new aew(paramafx);
                        return;
                      }
                      if (str.equals("X-PHONETIC-FIRST-NAME"))
                      {
                        j.h = paramafx;
                        return;
                      }
                      if (str.equals("X-PHONETIC-MIDDLE-NAME"))
                      {
                        j.i = paramafx;
                        return;
                      }
                      if (str.equals("X-PHONETIC-LAST-NAME"))
                      {
                        j.g = paramafx;
                        return;
                      }
                      if (str.equals("IMPP"))
                      {
                        if (!paramafx.startsWith("sip:")) {
                          break;
                        }
                        a(paramafx, (Collection)localMap.get("TYPE"));
                        return;
                      }
                      if (str.equals("X-SIP"))
                      {
                        if (TextUtils.isEmpty(paramafx)) {
                          break;
                        }
                        a(paramafx, (Collection)localMap.get("TYPE"));
                        return;
                      }
                      if (!str.equals("X-ANDROID-CUSTOM")) {
                        break;
                      }
                      localObject3 = afz.a(paramafx, p);
                      if (n == null) {
                        n = new ArrayList();
                      }
                      localObject2 = n;
                      if (((List)localObject3).size() < 2)
                      {
                        paramafx = (String)((List)localObject3).get(0);
                        ((List)localObject2).add(new aev(paramafx, (List)localObject1));
                        return;
                      }
                      if (((List)localObject3).size() < 16) {}
                      for (i1 = ((List)localObject3).size();; i1 = 16)
                      {
                        paramafx = (String)((List)localObject3).get(0);
                        localObject1 = ((List)localObject3).subList(1, i1);
                        break;
                      }
                    }
                  }
                  break label1257;
                  bool1 = false;
                  i1 = -1;
                  localObject1 = null;
                }
              }
              break label1038;
              paramafx = null;
              i1 = -1;
              bool1 = false;
            }
          }
        }
      }
    }
  }
  
  public String b()
  {
    if (j.k == null) {
      j.k = c();
    }
    return j.k;
  }
  
  public String toString()
  {
    afl localafl = new afl(this);
    localafl.a();
    localafl.a(afb.a);
    localafl.a(j);
    localafl.c();
    a(a, localafl);
    a(b, localafl);
    a(c, localafl);
    a(d, localafl);
    a(e, localafl);
    a(k, localafl);
    a(f, localafl);
    a(l, localafl);
    a(m, localafl);
    a(g, localafl);
    a(n, localafl);
    if (h != null)
    {
      localafl.a(h.a());
      localafl.a(h);
      localafl.c();
    }
    if (o != null)
    {
      localafl.a(o.a());
      localafl.a(o);
      localafl.c();
    }
    localafl.b();
    return localafl.toString();
  }
}

/* Location:
 * Qualified Name:     aeu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */