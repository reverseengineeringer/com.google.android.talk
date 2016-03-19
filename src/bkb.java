import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class bkb
  implements bjp, ioo, ioq, iow, ioz, ipa
{
  final av a;
  final Context b;
  final int c;
  final ilh d;
  final axq e;
  final bkw f;
  hpu g;
  bdy h;
  final bjv i = new bke(this);
  private boolean j;
  private hty k;
  private bfw l;
  private boolean m;
  private String n;
  private int o;
  private final bjs p;
  private final bjm q;
  private final bju r;
  private bjt s = new bkc(this);
  private final bjo t = new bkd(this);
  private final htx u = new bkf(this);
  
  bkb(Context paramContext, iog paramiog, int paramInt, av paramav, axq paramaxq, bkw parambkw)
  {
    fii.a(paramaxq, "Can't create ConversationCreator with null participants model.");
    String str = String.valueOf(parambkw);
    ezi.a("Babel_ConvCreator", String.valueOf(str).length() + 53 + "Conversation creator created with conversation type: " + str, new Object[0]);
    a = paramav;
    paramContext = new ill(paramContext);
    b = paramContext;
    c = paramInt;
    e = paramaxq;
    f = parambkw;
    d = paramContext.getBinder();
    d.a(bjt.class, s);
    d.a(bjo.class, t);
    d.a(bjv.class, i);
    k = ((hty)d.a(hty.class));
    k.a(u);
    g = ((hpu)d.a(hpu.class));
    paramiog.a(this);
    p = ((bjr)d.a(bjr.class)).a(b, paramiog, paramInt);
    q = ((bjr)d.a(bjr.class)).a(b, paramiog, paramInt, paramav.getFragmentManager());
    r = ((bjr)d.a(bjr.class)).a(b, paramiog, paramav.getFragmentManager());
  }
  
  static axt a(bdy parambdy, bjn parambjn)
  {
    if (b != null) {}
    Iterator localIterator;
    for (parambjn = dtw.a(b.b());; parambjn = dtw.a(a.a(), parambdy.e()))
    {
      parambjn = axt.a(parambjn, parambdy.e(), parambdy.f());
      if (parambdy.d() == null) {
        break;
      }
      localIterator = parambdy.d().iterator();
      while (localIterator.hasNext()) {
        parambjn.b(((bdw)localIterator.next()).b());
      }
    }
    if (parambdy.b() != null)
    {
      localIterator = parambdy.b().iterator();
      while (localIterator.hasNext()) {
        parambjn.c(((bee)localIterator.next()).b());
      }
    }
    parambjn.a(a);
    return parambjn;
  }
  
  public String a()
  {
    String str = String.valueOf(getClass().getName());
    int i1 = c;
    return String.valueOf(str).length() + 11 + str + i1;
  }
  
  void a(int paramInt)
  {
    boolean bool = true;
    Object localObject1 = (dty)ilh.a(b, dty.class);
    int i2 = g.a();
    if (f == bkw.c)
    {
      localObject2 = e.d().iterator();
      while (((Iterator)localObject2).hasNext()) {
        if (!TextUtils.isEmpty(nextbd))
        {
          i1 = 1;
          if (i1 == 0) {
            break label393;
          }
          if ((!((dty)localObject1).b(b)) || (((eot)d.a(eot.class)).a(i2))) {
            break label278;
          }
          if (e.e() != 1) {
            break label272;
          }
          bool = true;
          label140:
          hbs.a("Audio calling to multiple phone numbers is not supported", bool);
          ezi.a("Babel_ConvCreator", "Making outbound audio call", new Object[0]);
          localObject1 = dvd.e(g.a());
          localObject2 = (axt)e.d().get(0);
          localObject2 = new dvv(2, bd, null, 0, ((axt)localObject2).d(), ((axt)localObject2).g(), null, 120);
          aal.a(a.getActivity(), (dvv)localObject2, ((bfd)localObject1).g(), ((bfd)localObject1).a());
        }
      }
      for (;;)
      {
        ((bjq)d.a(bjq.class)).a(null);
        return;
        i1 = 0;
        break;
        label272:
        bool = false;
        break label140;
        label278:
        if (ezm.b())
        {
          if (e.e() == 1) {}
          for (;;)
          {
            hbs.a("Audio calling to multiple phone numbers is not supported", bool);
            b.startActivity(aal.a(b, e.d().get(0)).b().d));
            break;
            bool = false;
          }
        }
        localObject1 = (bbx)ilh.b(b, bbx.class);
        if (localObject1 != null)
        {
          localObject1 = ((bbx)localObject1).a(b);
          b.startActivity((Intent)localObject1);
        }
      }
    }
    label393:
    ezi.a("Babel_ConvCreator", "Conversation creation background task started", new Object[0]);
    if ((f == bkw.b) && (e.e() > 1) && (paramInt == 2)) {
      ((hba)d.a(hba.class)).a(i2).a(2711).d();
    }
    localObject1 = (bjr)d.a(bjr.class);
    Object localObject2 = String.valueOf("conversation_creation");
    int i1 = c;
    localObject1 = ((bjr)localObject1).a(String.valueOf(localObject2).length() + 11 + (String)localObject2 + i1, i2, e.a(), l, f, paramInt, m, n, o);
    k.b((htu)localObject1);
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      ezi.a("Babel_ConvCreator", "Conversation creator restored from saved state", new Object[0]);
      if (!paramBundle.getBoolean("creation_completed"))
      {
        h = ((bdy)paramBundle.getSerializable("current_contact"));
        l = ((bfw)paramBundle.getSerializable("lookup_mode"));
        m = paramBundle.getBoolean("force_group_conversation");
        n = paramBundle.getString("invite_token_url");
        o = paramBundle.getInt("impression_id");
      }
    }
    else
    {
      return;
    }
    ezi.a("Babel_ConvCreator", "Not restoring instance state since the last creation was completed.", new Object[0]);
  }
  
  public void a(bdy parambdy)
  {
    if (!j) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "Should not add new contact after conversation has been created.");
      if (h == null) {
        break;
      }
      parambdy = String.valueOf(parambdy);
      ezi.a("Babel_ConvCreator", String.valueOf(parambdy).length() + 65 + "addContact for " + parambdy + " skipped because previous addition hasn't finished", new Object[0]);
      ((bjq)d.a(bjq.class)).a(false);
      return;
    }
    String str = String.valueOf(parambdy.toString());
    if (str.length() != 0) {}
    for (str = "addContact called with ".concat(str);; str = new String("addContact called with "))
    {
      ezi.a("Babel_ConvCreator", str, new Object[0]);
      h = parambdy;
      p.a(parambdy, f);
      return;
    }
  }
  
  public void a(bfw parambfw, int paramInt)
  {
    if (!j)
    {
      bool = true;
      fii.b(bool, "Can't create conversation more than once.");
      if (h != null) {
        break label151;
      }
    }
    label151:
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "Contact adding should be finished before creating conversation");
      ezi.a("Babel_ConvCreator", "create called without known conversationId", new Object[0]);
      l = parambfw;
      m = false;
      n = null;
      o = paramInt;
      parambfw = (eot)d.a(eot.class);
      if ((f != bkw.b) || (!ezm.d()) || (!parambfw.h().equals("auto")) || (!parambfw.d()) || (e.d().size() != 1)) {
        break label156;
      }
      aal.a(new bkg(this));
      return;
      bool = false;
      break;
    }
    label156:
    r.a(f, e.d());
  }
  
  public void a(String paramString, int paramInt)
  {
    boolean bool;
    if (!TextUtils.isEmpty(paramString))
    {
      bool = true;
      fii.a(bool, "Create called with empty conversation ID");
      if (j) {
        break label154;
      }
      bool = true;
      label25:
      fii.b(bool, "Can't create conversation more than once");
      if (h != null) {
        break label159;
      }
      bool = true;
      label41:
      fii.b(bool, "Contact adding should be finished before creating conversation");
      str = String.valueOf(ezi.b(paramString));
      if (str.length() == 0) {
        break label164;
      }
    }
    label154:
    label159:
    label164:
    for (String str = "create called with existing conversationId ".concat(str);; str = new String("create called with existing conversationId "))
    {
      ezi.a("Babel_ConvCreator", str, new Object[0]);
      ((hba)d.a(hba.class)).a(g.a()).a(paramInt).d();
      ((bjq)d.a(bjq.class)).a(paramString);
      b(true);
      return;
      bool = false;
      break;
      bool = false;
      break label25;
      bool = false;
      break label41;
    }
  }
  
  void a(boolean paramBoolean)
  {
    h = null;
    ((bjq)d.a(bjq.class)).a(paramBoolean);
  }
  
  void b()
  {
    boolean bool1 = aal.a(h, f);
    if (bool1)
    {
      Object localObject = b;
      bdy localbdy = h;
      int i1 = ((hpu)ilh.a((Context)localObject, hpu.class)).a();
      boolean bool2 = ((awo)ilh.a((Context)localObject, awo.class)).d(i1);
      int i2;
      if ((!localbdy.b().isEmpty()) && ((bool2) || (ezm.b())))
      {
        i1 = 1;
        if (localbdy.d().isEmpty()) {
          break label168;
        }
        i2 = 1;
        label104:
        if ((i1 == 0) && (i2 == 0)) {
          break label173;
        }
      }
      label168:
      label173:
      for (i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          break label178;
        }
        localObject = b.getString(aal.jq, new Object[] { h.e() });
        Toast.makeText(b, (CharSequence)localObject, 0).show();
        a(false);
        return;
        i1 = 0;
        break;
        i2 = 0;
        break label104;
      }
    }
    label178:
    q.a(h, f, bool1);
  }
  
  public void b(Bundle paramBundle)
  {
    ezi.a("Babel_ConvCreator", "Saving state of conversation creator", new Object[0]);
    paramBundle.putSerializable("current_contact", h);
    paramBundle.putBoolean("creation_completed", j);
    paramBundle.putSerializable("lookup_mode", l);
    paramBundle.putBoolean("force_group_conversation", m);
    paramBundle.putString("invite_token_url", n);
    paramBundle.putInt("impression_id", o);
  }
  
  public void b(bdy parambdy)
  {
    if (!j) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "Should not remove contact after conversation has been created.");
      if (h == null) {
        break;
      }
      parambdy = String.valueOf(parambdy);
      ezi.a("Babel_ConvCreator", String.valueOf(parambdy).length() + 68 + "removeContact for " + parambdy + " skipped because previous addition hasn't finished", new Object[0]);
      return;
    }
    String str = String.valueOf(parambdy.toString());
    if (str.length() != 0) {}
    for (str = "removeContact called with ".concat(str);; str = new String("removeContact called with "))
    {
      ezi.a("Babel_ConvCreator", str, new Object[0]);
      e.a(parambdy);
      return;
    }
  }
  
  void b(boolean paramBoolean)
  {
    j = paramBoolean;
    if (paramBoolean) {
      k.b(u);
    }
  }
  
  public void h_()
  {
    k.b(u);
  }
}

/* Location:
 * Qualified Name:     bkb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */