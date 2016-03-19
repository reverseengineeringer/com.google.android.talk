import android.os.Handler;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.views.EasterEggView;
import com.google.android.apps.hangouts.views.FixedParticipantsView;
import com.google.android.apps.hangouts.views.ParticipantsGalleryView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

final class bpl
  extends eap
{
  bpl(bng parambng) {}
  
  private void a(dwd paramdwd)
  {
    if (paramdwd == null)
    {
      paramdwd = String.valueOf(a.i.a().h);
      ezi.e("Babel_Conv", String.valueOf(paramdwd).length() + 64 + "creating conversation with " + paramdwd + " resulting in null ConversationResult", new Object[0]);
      return;
    }
    Object localObject = String.valueOf(a);
    if (((String)localObject).length() != 0) {}
    for (localObject = "Switching conversation; clearing text. New id:".concat((String)localObject);; localObject = new String("Switching conversation; clearing text. New id:"))
    {
      ezi.d("Babel_Conv", (String)localObject, new Object[0]);
      paramdwd = new axj(a, 0);
      d = true;
      e = true;
      f = a.ai();
      a.ae();
      localObject = a;
      k = i.b().k;
      RealTimeChatService.b(ax);
      bm.a(paramdwd);
      bm = null;
      return;
    }
  }
  
  private void b(bfd parambfd, String paramString, Runnable paramRunnable)
  {
    if (!parambfd.equals(a.at)) {}
    while (!a.aI.containsKey(paramString)) {
      return;
    }
    if (a.aI.size() > 1)
    {
      parambfd = a.aI.keySet().iterator();
      while (parambfd.hasNext())
      {
        paramRunnable = (String)parambfd.next();
        if (!TextUtils.equals(paramRunnable, paramString))
        {
          parambfd = new axj(paramRunnable, 1);
          paramString = a;
          k = i.b().k;
          RealTimeChatService.b(ax);
          bm.a(parambfd);
          bm = null;
          return;
        }
      }
      hbs.a("should never get here");
      return;
    }
    a.bm.a(paramRunnable);
  }
  
  public void a()
  {
    a.w();
  }
  
  public void a(int paramInt, bfd parambfd, dwd paramdwd, eau parameau)
  {
    if (paramInt != a.e) {
      return;
    }
    a(paramdwd);
  }
  
  public void a(int paramInt1, bfd parambfd, dwd paramdwd, eau parameau, int paramInt2)
  {
    if (ezi.a("Babel_Conv", 3))
    {
      parameau = String.valueOf(a);
      String str = String.valueOf(parambfd);
      ezi.a("Babel_Conv", String.valueOf(parameau).length() + 81 + String.valueOf(str).length() + "Forked a new conversation " + parameau + " from an existing conversation " + paramInt2 + " for account " + str, new Object[0]);
    }
    if (!parambfd.equals(a.at)) {
      return;
    }
    a(paramdwd);
  }
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    parambfd = parameau.c();
    if ((parambfd instanceof dra))
    {
      parambfd = (doz)parambfd.c();
      if ((b) && (!a))
      {
        parambfd = (bpa)a.aI.get(c);
        if (parambfd != null) {
          e = -1;
        }
      }
    }
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if ((parameff instanceof doz))
    {
      parambfd = (doz)parameff;
      if ((b) && (!a))
      {
        parambfd = (bpa)a.aI.get(c);
        if (parambfd != null)
        {
          a.af();
          e = -1;
          ezi.c("Babel_Conv", "message load timeout", new Object[0]);
        }
      }
    }
    while ((!(parameff instanceof dos)) || (!j.equals(a.an()))) {
      return;
    }
    a.U();
    a.getActivity().y_();
  }
  
  public void a(bfd parambfd, String paramString)
  {
    b(parambfd, paramString, null);
  }
  
  public void a(bfd parambfd, String paramString1, czb paramczb, String paramString2)
  {
    bjb localbjb = a.i.a();
    if ((a.at == parambfd) && (localbjb != null) && (TextUtils.equals(a, paramString1)) && (!a.at.b().a(paramczb)) && (!a.ao()) && (a.Y()))
    {
      if (ezi.a("Babel_Conv", 3))
      {
        paramczb = String.valueOf(paramczb);
        ezi.b("Babel_Conv", String.valueOf(paramString1).length() + 60 + String.valueOf(paramczb).length() + String.valueOf(paramString2).length() + "Received easter egg for conversation: " + paramString1 + " from: " + paramczb + " with message: " + paramString2, new Object[0]);
      }
      if (a.aT != null) {
        a.aT.a(parambfd, paramString2);
      }
    }
  }
  
  public void a(bfd parambfd, String paramString1, czb paramczb, String paramString2, long paramLong, boolean paramBoolean)
  {
    parambfd = a.i.a();
    if (parambfd == null) {}
    do
    {
      do
      {
        return;
      } while ((!TextUtils.equals(a, paramString1)) || (a.at.b().a(paramczb)) || (a.ao()) || (!a.Y()) || (!a.i.g().a(paramczb)));
      parambfd = a.a(paramczb);
    } while (parambfd == null);
    if (paramBoolean)
    {
      a.aR.put(paramczb, new bpo(a, paramString2));
      a.aQ.a(parambfd, 4);
    }
    for (;;)
    {
      if (ezi.a("Babel_Conv", 3))
      {
        parambfd = String.valueOf(paramczb);
        ezi.b("Babel_Conv", String.valueOf(parambfd).length() + 35 + "Typing status for " + parambfd + " changed to " + paramBoolean, new Object[0]);
      }
      a.aS.removeCallbacks(a.bo);
      a.aS.post(a.bo);
      a.aS.postDelayed(a.bo, 31000L);
      return;
      a.aR.remove(paramczb);
      a.aQ.a(parambfd, 4, true);
    }
  }
  
  public void a(bfd parambfd, String paramString, Runnable paramRunnable)
  {
    b(parambfd, paramString, paramRunnable);
  }
  
  public void a(String paramString, czb paramczb, boolean paramBoolean)
  {
    bjb localbjb = a.i.a();
    if (localbjb == null) {}
    do
    {
      do
      {
        return;
      } while ((!TextUtils.equals(a, paramString)) || (a.at.b().a(paramczb)) || (a.ao()) || (!a.Y()));
      if (!a.i.g().a(paramczb))
      {
        a.bi.add(new bpk(a, paramString, paramczb, paramBoolean));
        return;
      }
      paramString = a.a(paramczb);
    } while (paramString == null);
    if (paramBoolean)
    {
      a.aQ.a(paramString, 2);
      return;
    }
    a.aQ.a(paramString, 2, true);
  }
  
  public void a(String paramString1, String paramString2)
  {
    hbs.a();
    a.h.a(new bpm(this, paramString1, paramString2));
  }
  
  public void a(String paramString, List<czb> paramList)
  {
    Object localObject = a.i.a();
    if ((localObject != null) && (TextUtils.equals(a, paramString)) && (a.Y()))
    {
      if (paramList == null) {}
      for (paramString = "null";; paramString = String.valueOf(paramList.size()))
      {
        ezi.a("Babel_Conv", String.format("onUserHangoutPresenceChanged: handling %s participants", new Object[] { paramString }), new Object[0]);
        if ((paramList == null) || (paramList.isEmpty())) {
          break label355;
        }
        paramString = new ArrayList(paramList.size());
        paramList = paramList.iterator();
        while (paramList.hasNext())
        {
          localObject = (czb)paramList.next();
          cyx localcyx = a.a((czb)localObject);
          if ((localcyx != null) && (!a.at.b().a((czb)localObject)))
          {
            paramString.add(localcyx);
            localObject = String.valueOf(localObject);
            ezi.a("Babel_Conv", String.valueOf(localObject).length() + 36 + "onUserHangoutPresenceChanged: added " + (String)localObject, new Object[0]);
          }
        }
      }
    }
    for (;;)
    {
      if ((paramString == null) || (paramString.isEmpty()))
      {
        a.bp.a();
        a.bp.setVisibility(8);
        ezi.a("Babel_Conv", "onUserHangoutPresenceChanged: display no participants", new Object[0]);
        return;
      }
      a.bp.a(a.at, paramString);
      a.bp.setVisibility(0);
      int i = paramString.size();
      ezi.a("Babel_Conv", 62 + "onUserHangoutPresenceChanged: display " + i + " participants", new Object[0]);
      return;
      label355:
      paramString = null;
    }
  }
  
  public void b()
  {
    a.w();
  }
  
  public void b(String paramString1, String paramString2)
  {
    bjb localbjb = a.i.a();
    if ((localbjb == null) || (a == null)) {}
    while (((!TextUtils.equals(paramString2, a.aC)) && (!a.aI.containsKey(paramString1))) || (a.e != -1)) {
      return;
    }
    paramString1 = new axj(a, 1);
    d = true;
    e = true;
    paramString2 = a;
    k = i.b().k;
    RealTimeChatService.b(ax);
    bm.a(paramString1);
    bm = null;
  }
  
  public void c()
  {
    if ((a.ao()) || (!a.Y())) {
      return;
    }
    a.aj();
    ((bhx)a.bA).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     bpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */