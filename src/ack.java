import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.ex.photo.views.PhotoView;

public class ack
  extends av
  implements abs, abt, View.OnClickListener, ck<aco>
{
  public String a;
  public ImageView aj;
  public ada ak;
  public int al;
  public boolean am;
  public boolean an;
  public boolean ao;
  public boolean ap = true;
  public View aq;
  public boolean ar;
  public boolean as;
  public boolean at;
  public String b;
  public Intent c;
  public abr d;
  public acj e;
  public BroadcastReceiver f;
  public PhotoView g;
  public ImageView h;
  public TextView i;
  
  public static void a(Intent paramIntent, int paramInt, boolean paramBoolean, ack paramack)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("arg-intent", paramIntent);
    localBundle.putInt("arg-position", paramInt);
    localBundle.putBoolean("arg-show-spinner", paramBoolean);
    paramack.setArguments(localBundle);
  }
  
  private void v()
  {
    if (d == null) {}
    for (boolean bool = false;; bool = d.a(this))
    {
      b(bool);
      return;
    }
  }
  
  public void a()
  {
    v();
  }
  
  protected void a(View paramView)
  {
    g = ((PhotoView)paramView.findViewById(aal.bR));
    g.a(c.getFloatExtra("max_scale", 1.0F));
    g.setOnClickListener(this);
    g.a(am);
    g.b(false);
    aq = paramView.findViewById(aal.bP);
    h = ((ImageView)paramView.findViewById(aal.bQ));
    ar = false;
    ProgressBar localProgressBar = (ProgressBar)paramView.findViewById(aal.bL);
    ak = new ada((ProgressBar)paramView.findViewById(aal.bJ), localProgressBar);
    i = ((TextView)paramView.findViewById(aal.bK));
    aj = ((ImageView)paramView.findViewById(aal.bT));
    v();
  }
  
  public void a(fe<aco> paramfe, aco paramaco)
  {
    if ((getView() == null) || (!isAdded())) {
      return;
    }
    Drawable localDrawable = paramaco.a(getResources());
    switch (paramfe.o())
    {
    }
    for (;;)
    {
      if (!ap) {
        ak.a(8);
      }
      v();
      return;
      if (!at)
      {
        if (t()) {
          break;
        }
        if (localDrawable == null) {
          h.setImageResource(aal.bI);
        }
        for (ar = false;; ar = true)
        {
          h.setVisibility(0);
          if (getResources().getBoolean(aal.bC)) {
            h.setScaleType(ImageView.ScaleType.CENTER);
          }
          a(false);
          break;
          h.setImageDrawable(localDrawable);
        }
      }
      if (c == 1)
      {
        ap = false;
        i.setText(aal.bX);
        i.setVisibility(0);
        d.a(this, false);
      }
      else
      {
        i.setVisibility(8);
        paramfe = paramaco.a(getResources());
        if (paramfe != null)
        {
          if (g != null) {
            g.a(paramfe);
          }
          a(true);
          aq.setVisibility(8);
          ap = false;
        }
        d.a(this, true);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    g.b(paramBoolean);
  }
  
  public void a_(Cursor paramCursor)
  {
    if (e == null) {}
    do
    {
      do
      {
        do
        {
          return;
        } while ((!paramCursor.moveToPosition(al)) || (t()));
        localObject1 = getLoaderManager();
        Object localObject2 = ((cj)localObject1).b(3);
        if (localObject2 != null)
        {
          localObject2 = (acn)localObject2;
          a = e.b(paramCursor);
          ((acn)localObject2).a(a);
          ((acn)localObject2).u();
        }
      } while (ar);
      localObject1 = ((cj)localObject1).b(2);
    } while (localObject1 == null);
    Object localObject1 = (acn)localObject1;
    b = e.c(paramCursor);
    ((acn)localObject1).a(b);
    ((acn)localObject1).u();
  }
  
  public void b()
  {
    if (!d.b(this)) {
      s();
    }
    while (t()) {
      return;
    }
    getLoaderManager().b(2, null, this);
  }
  
  public void b(boolean paramBoolean)
  {
    am = paramBoolean;
  }
  
  public void c()
  {
    s();
  }
  
  public boolean d()
  {
    if (!d.b(this)) {}
    while ((g == null) || (!g.a())) {
      return false;
    }
    return true;
  }
  
  public boolean e()
  {
    if (!d.b(this)) {}
    while ((g == null) || (!g.b())) {
      return false;
    }
    return true;
  }
  
  protected abr f()
  {
    return ((acc)getActivity()).h();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    d = f();
    if (d == null) {
      throw new IllegalArgumentException("Activity must be a derived class of PhotoViewActivity");
    }
    e = d.l();
    if (e == null) {
      throw new IllegalStateException("Callback reported null adapter");
    }
    v();
  }
  
  public void onClick(View paramView)
  {
    d.f();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getArguments();
    if (localBundle == null) {}
    do
    {
      return;
      c = ((Intent)localBundle.getParcelable("arg-intent"));
      at = c.getBooleanExtra("display_thumbs_fullscreen", false);
      al = localBundle.getInt("arg-position");
      ao = localBundle.getBoolean("arg-show-spinner");
      ap = true;
      if (paramBundle != null)
      {
        paramBundle = paramBundle.getBundle("com.android.mail.photo.fragments.PhotoViewFragment.INTENT");
        if (paramBundle != null) {
          c = new Intent().putExtras(paramBundle);
        }
      }
    } while (c == null);
    a = c.getStringExtra("resolved_photo_uri");
    b = c.getStringExtra("thumbnail_uri");
    an = c.getBooleanExtra("watch_network", false);
  }
  
  public fe<aco> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    paramBundle = null;
    if (ao) {
      return null;
    }
    switch (paramInt)
    {
    }
    for (;;)
    {
      return d.a(paramInt, paramBundle);
      paramBundle = b;
      continue;
      paramBundle = a;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.bW, paramViewGroup, false);
    a(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    if (g != null)
    {
      g.c();
      g = null;
    }
    super.onDestroyView();
  }
  
  public void onDetach()
  {
    d = null;
    super.onDetach();
  }
  
  public void onLoaderReset(fe<aco> paramfe) {}
  
  public void onPause()
  {
    if (an) {
      getActivity().unregisterReceiver(f);
    }
    d.b(this);
    d.d(al);
    if (g != null) {
      g.d();
    }
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    d.a(al, this);
    d.a(this);
    NetworkInfo localNetworkInfo;
    if (an)
    {
      if (f == null) {
        f = new acl(this);
      }
      getActivity().registerReceiver(f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      localNetworkInfo = ((ConnectivityManager)getActivity().getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo == null) {
        break label148;
      }
    }
    label148:
    for (as = localNetworkInfo.isConnected();; as = false)
    {
      if (!t())
      {
        ap = true;
        aq.setVisibility(0);
        getLoaderManager().a(2, null, this);
        getLoaderManager().a(3, null, this);
      }
      return;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (c != null) {
      paramBundle.putParcelable("com.android.mail.photo.fragments.PhotoViewFragment.INTENT", c.getExtras());
    }
  }
  
  public String q()
  {
    return a;
  }
  
  public Drawable r()
  {
    if (g != null) {
      return g.e();
    }
    return null;
  }
  
  public void s()
  {
    if (g != null) {
      g.g();
    }
  }
  
  public boolean t()
  {
    return (g != null) && (g.f());
  }
  
  public int u()
  {
    return al;
  }
}

/* Location:
 * Qualified Name:     ack
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */