import android.app.ActivityManager;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.util.ArrayList;
import java.util.List;

final class bum
  extends ArrayAdapter<bul>
{
  public bum(ArrayList<bul> paramArrayList)
  {
    super(paramArrayList.getActivity(), 0, localList);
  }
  
  static void a(ImageView paramImageView, bul parambul)
  {
    if (d.b != null)
    {
      paramImageView.setImageBitmap(d.b.e());
      paramImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
    for (;;)
    {
      paramImageView.setAlpha(0.0F);
      paramImageView.animate().alpha(1.0F).setDuration(250L).start();
      return;
      if (d.a == null) {
        break;
      }
      paramImageView.setImageDrawable(d.a);
      paramImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
      d.a.a();
    }
    parambul = String.valueOf(a);
    if (parambul.length() != 0) {}
    for (parambul = "No cache item set:".concat(parambul);; parambul = new String("No cache item set:"))
    {
      hbs.a(parambul);
      break;
    }
  }
  
  public void a()
  {
    int i = 0;
    while (i < getCount())
    {
      bul localbul = (bul)getItem(i);
      if ((localbul != null) && (d != null))
      {
        d.a();
        d = null;
      }
      i += 1;
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = a.getActivity().getLayoutInflater().inflate(aal.la, paramViewGroup, false);
    }
    paramViewGroup = (bul)getItem(paramInt);
    paramView = (ImageView)localView.findViewById(aen.hR);
    if (a.f.a())
    {
      paramView.setContentDescription(bus.a(a.getResources(), a));
      localObject1 = a.f;
      paramViewGroup = b;
      localObject2 = a.g;
      localbuh = a;
      if (((ActivityManager)context.getSystemService("activity")).getMemoryClass() >= 192)
      {
        paramInt = localbuh.getActivity().getResources().getInteger(aal.kX);
        ((ceh)localObject1).a(paramViewGroup, paramView, ((cei)localObject2).a(paramInt));
      }
    }
    while (paramInt == aal.a((Integer)paramView.getTag(), -1)) {
      for (;;)
      {
        return localView;
        paramInt = localbuh.getActivity().getResources().getInteger(aal.kY);
      }
    }
    Object localObject1 = buh.a;
    int i = buh.b;
    buh.b = i + 1;
    localObject1 = ((ezv)localObject1).b(39 + "setImageItemWithBitmapCache_" + i);
    paramView.setTag(Integer.valueOf(paramInt));
    paramView.setContentDescription(bus.a(a.getResources(), a));
    if (d != null)
    {
      a(paramView, paramViewGroup);
      return localView;
    }
    paramView.setImageResource(aal.kV);
    paramView.setScaleType(ImageView.ScaleType.CENTER);
    paramView.setAlpha(0.2F);
    i = a.getActivity().getResources().getInteger(aal.kX);
    Object localObject2 = new eyd(b, null).b(i, i);
    buh localbuh = a;
    if (((ActivityManager)context.getSystemService("activity")).getMemoryClass() >= 192) {}
    for (i = localbuh.getActivity().getResources().getInteger(aal.kX);; i = localbuh.getActivity().getResources().getInteger(aal.kY))
    {
      localObject2 = ((eyd)localObject2).a(i);
      ((eyd)localObject2).b(a);
      paramView = new bit(((hpu)a.binder.a(hpu.class)).a(), (eyd)localObject2, c, new bun(this, paramViewGroup, paramInt), paramView);
      ((eit)a.binder.a(eit.class)).a(paramView);
      buh.a.c((String)localObject1);
      return localView;
    }
  }
}

/* Location:
 * Qualified Name:     bum
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */