import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public final class cqb
  extends ime
{
  hpu aj;
  
  public Dialog a(Bundle paramBundle)
  {
    String str2 = getArguments().getString("conversation_id");
    String str1 = getArguments().getString("name");
    Object localObject = getArguments().getString("contact");
    cpx localcpx = (cpx)getArguments().getSerializable("trigger_action");
    View localView = getActivity().getLayoutInflater().inflate(aal.nr, null);
    ImageView localImageView = (ImageView)localView.findViewById(aal.no);
    TextView localTextView1 = (TextView)localView.findViewById(aal.nq);
    TextView localTextView2 = (TextView)localView.findViewById(aal.nn);
    Button localButton1 = (Button)localView.findViewById(aal.np);
    Button localButton2 = (Button)localView.findViewById(aal.nk);
    Button localButton3 = (Button)localView.findViewById(aal.nm);
    Button localButton4 = (Button)localView.findViewById(aal.nj);
    LinearLayout localLinearLayout1 = (LinearLayout)localView.findViewById(aal.nl);
    LinearLayout localLinearLayout2 = (LinearLayout)localView.findViewById(aal.ni);
    paramBundle = dvd.e(aj.a());
    bfd localbfd = dvd.a(paramBundle);
    ill localill = am;
    boolean bool = bzq.a((String)localObject);
    awo localawo = (awo)ilh.a(localill, awo.class);
    int i;
    label267:
    int j;
    if (((eot)ilh.a(localill, eot.class)).a(paramBundle.g()))
    {
      i = cpz.a;
      if ((i != cpz.b) && (i != cpz.a)) {
        break label653;
      }
      bool = true;
      if (!bool) {
        break label659;
      }
      localButton1.setText(am.getString(aen.jc));
      localTextView2.setVisibility(8);
      switch (cqg.a[localcpx.ordinal()])
      {
      default: 
        j = aal.nf;
        label332:
        localImageView.setImageResource(j);
        if (bool) {
          switch (cqg.a[localcpx.ordinal()])
          {
          default: 
            paramBundle = am.getString(aen.jm);
            label391:
            localTextView1.setText(paramBundle);
            localTextView1.setMovementMethod(new ScrollingMovementMethod());
            localButton1.setAllCaps(true);
            localButton3.setAllCaps(true);
            localButton2.setAllCaps(true);
            localButton4.setAllCaps(true);
            paramBundle = bzq.b((String)localObject);
            if ((localcpx == cpx.f) && (!bzq.a((String)localObject)))
            {
              localLinearLayout1.setVisibility(8);
              localButton2.setOnClickListener(new cqc(this, bool, localcpx, (String)localObject, str2, i));
              localButton4.setOnClickListener(new cqd(this, paramBundle));
              label498:
              paramBundle = new AlertDialog.Builder(getActivity());
              paramBundle.setView(localView);
              localObject = dvd.e(((hpu)an.a(hpu.class)).a());
              if (!bool) {
                break label1083;
              }
              switch (cqg.a[localcpx.ordinal()])
              {
              }
            }
            break;
          }
        }
        break;
      }
    }
    for (;;)
    {
      return paramBundle.create();
      if (dvd.h().length > 0) {}
      for (i = 1;; i = 0)
      {
        if ((bool) || (localawo.d(paramBundle.g())) || (i == 0) || (localbfd != null)) {
          break label646;
        }
        i = cpz.b;
        break;
      }
      label646:
      i = cpz.c;
      break;
      label653:
      bool = false;
      break label267;
      label659:
      if (bzq.a((String)localObject)) {
        paramBundle = am.getString(aen.jg);
      }
      for (;;)
      {
        localTextView2.setText(paramBundle);
        break;
        if (bzq.b((String)localObject) != null)
        {
          if (localcpx == cpx.f) {
            paramBundle = am.getString(aen.ji);
          } else {
            paramBundle = am.getString(aen.jo);
          }
        }
        else
        {
          ezi.e("Babel_OffnetworkInvite", "Couldn't get valid invite message", new Object[0]);
          paramBundle = null;
        }
      }
      j = aal.ng;
      break label332;
      j = aal.nh;
      break label332;
      paramBundle = am.getString(aen.jl);
      break label391;
      paramBundle = am.getString(aen.jn);
      break label391;
      paramBundle = am.getString(aen.jk);
      break label391;
      if (TextUtils.isEmpty(str1)) {}
      for (paramBundle = (Bundle)localObject;; paramBundle = str1)
      {
        paramBundle = ezm.p(paramBundle);
        if (!TextUtils.isEmpty(paramBundle)) {
          break label848;
        }
        paramBundle = am.getString(aen.js);
        break;
      }
      label848:
      switch (cqg.a[localcpx.ordinal()])
      {
      default: 
        paramBundle = am.getString(aen.jq, new Object[] { paramBundle });
        break;
      case 1: 
        paramBundle = am.getString(aen.jp, new Object[] { paramBundle });
        break;
      case 2: 
        paramBundle = am.getString(aen.jr, new Object[] { paramBundle });
        break;
      case 3: 
        paramBundle = am.getString(aen.je, new Object[] { paramBundle });
        break;
        localLinearLayout2.setVisibility(8);
        localButton1.setOnClickListener(new cqe(this, bool, localcpx, (String)localObject, str2, i));
        localButton3.setOnClickListener(new cqf(this));
        break label498;
        aal.a((bfd)localObject, 1863);
        continue;
        aal.a((bfd)localObject, 1864);
        continue;
        aal.a((bfd)localObject, 1862);
        continue;
        aal.a((bfd)localObject, 2620);
        continue;
        aal.a((bfd)localObject, 2334);
        continue;
        aal.a((bfd)localObject, 2442);
        continue;
        label1083:
        switch (cqg.a[localcpx.ordinal()])
        {
        default: 
          break;
        case 1: 
          aal.a((bfd)localObject, 1857);
          break;
        case 4: 
          aal.a((bfd)localObject, 1856);
          break;
        case 2: 
          aal.a((bfd)localObject, 1854);
          break;
        case 3: 
          aal.a((bfd)localObject, 2618);
          break;
        case 6: 
          aal.a((bfd)localObject, 2263);
          break;
        case 5: 
          aal.a((bfd)localObject, 2332);
        }
        break;
      }
    }
  }
  
  protected void e(Bundle paramBundle)
  {
    super.e(paramBundle);
    aj = ((hpu)an.a(hpu.class));
  }
  
  public void onStart()
  {
    super.onStart();
    if (c() != null)
    {
      int i = 350;
      if (getResourcesgetConfigurationorientation == 2) {
        i = 600;
      }
      ewz.a(getActivity(), c().getWindow(), i);
    }
  }
}

/* Location:
 * Qualified Name:     cqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */