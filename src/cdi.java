import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

public class cdi
  extends bxv
{
  cdl i;
  
  public void a(cdl paramcdl)
  {
    i = paramcdl;
  }
  
  public void a(eim parameim, fkg paramfkg, gpx paramgpx)
  {
    super.a(parameim, paramfkg, paramgpx);
    if (parameim == c)
    {
      a(0, new ehy(paramfkg));
      if (i != null) {
        i.e();
      }
    }
  }
  
  protected abl[] a()
  {
    return new abl[] { new abl(), new abl(), new abl() };
  }
  
  protected void b(CharSequence paramCharSequence)
  {
    super.b(paramCharSequence);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      paramCharSequence = ezm.g(paramCharSequence.toString());
      localObject1 = localObject2;
      if (paramCharSequence != null)
      {
        localObject1 = new cdm();
        ((cdm)localObject1).a(paramCharSequence, getActivity());
      }
    }
    a(2, (bzh)localObject1);
  }
  
  protected boolean e()
  {
    return d() != null;
  }
  
  protected boolean isEmpty()
  {
    return false;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle, aal.gE);
    b().setOnTouchListener(new cdj(this));
    f.setOnTouchListener(new cdk(this));
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     cdi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */