import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

public class ys
  extends ViewGroup
{
  private boolean a = true;
  private int b = -1;
  private int c = 0;
  private int d;
  private int e = 8388659;
  private int f;
  private float g;
  private boolean h;
  private int[] i;
  private int[] j;
  private Drawable k;
  private int l;
  private int m;
  private int n;
  private int o;
  
  public ys(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ys(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ys(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = vw.a(paramContext, paramAttributeSet, sb.av, paramInt);
    paramInt = paramContext.a(sb.az, -1);
    if (paramInt >= 0) {
      e(paramInt);
    }
    paramInt = paramContext.a(sb.ay, -1);
    if (paramInt >= 0) {
      f(paramInt);
    }
    boolean bool = paramContext.a(sb.aw, true);
    if (!bool) {
      b(bool);
    }
    g = paramContext.e(sb.aA);
    b = paramContext.a(sb.ax, -1);
    h = paramContext.a(sb.aD, false);
    b(paramContext.a(sb.aB));
    n = paramContext.a(sb.aE, 0);
    o = paramContext.d(sb.aC, 0);
    paramContext.a();
  }
  
  private static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    int i1 = 0;
    while (i1 < paramInt1)
    {
      View localView = c(i1);
      if (localView.getVisibility() != 8)
      {
        yt localyt = (yt)localView.getLayoutParams();
        if (width == -1)
        {
          int i3 = height;
          height = localView.getMeasuredHeight();
          measureChildWithMargins(localView, i2, 0, paramInt2, 0);
          height = i3;
        }
      }
      i1 += 1;
    }
  }
  
  void a(int paramInt1, int paramInt2)
  {
    f = 0;
    int i3 = 0;
    int i2 = 0;
    int i1 = 0;
    int i7 = 0;
    int i4 = 1;
    float f1 = 0.0F;
    int i14 = n();
    int i15 = View.MeasureSpec.getMode(paramInt1);
    int i16 = View.MeasureSpec.getMode(paramInt2);
    int i8 = 0;
    int i6 = 0;
    int i17 = b;
    boolean bool = h;
    int i5 = Integer.MIN_VALUE;
    int i9 = 0;
    Object localObject;
    int i10;
    int i11;
    int i12;
    if (i9 < i14)
    {
      localObject = c(i9);
      if (localObject == null)
      {
        f = f;
        i10 = i5;
        i11 = i6;
        i12 = i4;
        i4 = i7;
        i7 = i3;
        i6 = i2;
        i5 = i1;
        i3 = i12;
        i2 = i11;
        i1 = i10;
      }
    }
    for (;;)
    {
      int i13 = i9 + 1;
      i9 = i4;
      i10 = i5;
      i11 = i6;
      i12 = i7;
      i5 = i1;
      i6 = i2;
      i4 = i3;
      i7 = i9;
      i1 = i10;
      i2 = i11;
      i3 = i12;
      i9 = i13;
      break;
      if (((View)localObject).getVisibility() != 8)
      {
        if (d(i9)) {
          f += m;
        }
        yt localyt = (yt)((View)localObject).getLayoutParams();
        f1 += g;
        if ((i16 == 1073741824) && (height == 0) && (g > 0.0F))
        {
          i6 = f;
          f = Math.max(i6, topMargin + i6 + bottomMargin);
          i6 = 1;
        }
        label574:
        label647:
        label654:
        label1111:
        label1164:
        label1215:
        label1224:
        label1250:
        label1356:
        label1362:
        label1369:
        label1584:
        label1599:
        label1629:
        for (;;)
        {
          if ((i17 >= 0) && (i17 == i9 + 1)) {
            c = f;
          }
          if ((i9 < i17) && (g > 0.0F))
          {
            throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
            i11 = Integer.MIN_VALUE;
            i10 = i11;
            if (height == 0)
            {
              i10 = i11;
              if (g > 0.0F)
              {
                i10 = 0;
                height = -2;
              }
            }
            if (f1 == 0.0F) {}
            for (i11 = f;; i11 = 0)
            {
              b((View)localObject, paramInt1, 0, paramInt2, i11);
              if (i10 != Integer.MIN_VALUE) {
                height = i10;
              }
              i10 = ((View)localObject).getMeasuredHeight();
              i11 = f;
              f = Math.max(i11, i11 + i10 + topMargin + bottomMargin);
              if (!bool) {
                break label1629;
              }
              i5 = Math.max(i10, i5);
              break;
            }
          }
          i11 = 0;
          if ((i15 != 1073741824) && (width == -1))
          {
            i8 = 1;
            i11 = 1;
          }
          for (;;)
          {
            i12 = leftMargin + rightMargin;
            i13 = ((View)localObject).getMeasuredWidth() + i12;
            i3 = Math.max(i3, i13);
            i10 = vz.a(i2, ks.a.e((View)localObject));
            if ((i4 != 0) && (width == -1))
            {
              i2 = 1;
              if (g <= 0.0F) {
                break label654;
              }
              if (i11 == 0) {
                break label647;
              }
            }
            for (;;)
            {
              i7 = Math.max(i7, i12);
              i4 = i2;
              i2 = i5;
              i5 = i1;
              i11 = i3;
              i1 = i2;
              i2 = i6;
              i3 = i4;
              i4 = i7;
              i6 = i10;
              i7 = i11;
              break;
              i2 = 0;
              break label574;
              i12 = i13;
            }
            if (i11 != 0) {}
            for (;;)
            {
              i1 = Math.max(i1, i12);
              i4 = i2;
              i2 = i6;
              i11 = i3;
              i6 = i1;
              i1 = i5;
              i3 = i4;
              i4 = i7;
              i5 = i6;
              i6 = i10;
              i7 = i11;
              break;
              i12 = i13;
            }
            if ((f > 0) && (d(i14))) {
              f += m;
            }
            if ((bool) && ((i16 == Integer.MIN_VALUE) || (i16 == 0)))
            {
              f = 0;
              i9 = 0;
              if (i9 < i14)
              {
                localObject = c(i9);
                if (localObject == null) {
                  f = f;
                }
                for (;;)
                {
                  i9 += 1;
                  break;
                  if (((View)localObject).getVisibility() != 8)
                  {
                    localObject = (yt)((View)localObject).getLayoutParams();
                    i10 = f;
                    i11 = topMargin;
                    f = Math.max(i10, bottomMargin + (i10 + i5 + i11));
                  }
                }
              }
            }
            f += getPaddingTop() + getPaddingBottom();
            i11 = ks.a(Math.max(f, getSuggestedMinimumHeight()), paramInt2, 0);
            i9 = (0xFFFFFF & i11) - f;
            if ((i6 != 0) || ((i9 != 0) && (f1 > 0.0F)))
            {
              if (g > 0.0F) {
                f1 = g;
              }
              f = 0;
              i7 = 0;
              i5 = i4;
              i6 = i1;
              i1 = i2;
              i4 = i3;
              i3 = i6;
              i2 = i5;
              i5 = i9;
              if (i7 < i14)
              {
                localObject = c(i7);
                if (((View)localObject).getVisibility() == 8) {
                  break label1599;
                }
                localyt = (yt)((View)localObject).getLayoutParams();
                float f2 = g;
                if (f2 <= 0.0F) {
                  break label1584;
                }
                i9 = (int)(i5 * f2 / f1);
                i12 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin, width);
                if ((height != 0) || (i16 != 1073741824))
                {
                  i10 = i9 + ((View)localObject).getMeasuredHeight();
                  i6 = i10;
                  if (i10 < 0) {
                    i6 = 0;
                  }
                  ((View)localObject).measure(i12, View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
                  i1 = vz.a(i1, ks.a.e((View)localObject) & 0xFF00);
                  i6 = i5 - i9;
                  i5 = i1;
                  f1 -= f2;
                  i1 = i6;
                  i9 = leftMargin + rightMargin;
                  i10 = ((View)localObject).getMeasuredWidth() + i9;
                  i6 = Math.max(i4, i10);
                  if ((i15 == 1073741824) || (width != -1)) {
                    break label1356;
                  }
                  i4 = 1;
                  if (i4 == 0) {
                    break label1362;
                  }
                  i4 = i9;
                  i3 = Math.max(i3, i4);
                  if ((i2 == 0) || (width != -1)) {
                    break label1369;
                  }
                  i2 = 1;
                  i4 = f;
                  i9 = ((View)localObject).getMeasuredHeight();
                  i10 = topMargin;
                  f = Math.max(i4, bottomMargin + (i9 + i4 + i10));
                  i4 = i2;
                  i2 = i6;
                }
              }
            }
            for (;;)
            {
              i9 = i7 + 1;
              i7 = i5;
              i6 = i2;
              i5 = i1;
              i1 = i7;
              i2 = i4;
              i4 = i6;
              i7 = i9;
              break;
              if (i9 > 0)
              {
                i6 = i9;
                break label1111;
              }
              i6 = 0;
              break label1111;
              i4 = 0;
              break label1215;
              i4 = i10;
              break label1224;
              i2 = 0;
              break label1250;
              f += getPaddingTop() + getPaddingBottom();
              i5 = i3;
              i3 = i4;
              i4 = i2;
              i2 = i1;
              for (i1 = i5;; i1 = i6)
              {
                if ((i4 == 0) && (i15 != 1073741824)) {}
                for (;;)
                {
                  setMeasuredDimension(ks.a(Math.max(i1 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), paramInt1, i2), i11);
                  if (i8 != 0) {
                    c(i14, paramInt2);
                  }
                  return;
                  i6 = Math.max(i1, i7);
                  if ((!bool) || (i16 == 1073741824)) {
                    break;
                  }
                  i1 = 0;
                  while (i1 < i14)
                  {
                    localObject = c(i1);
                    if ((localObject != null) && (((View)localObject).getVisibility() != 8) && (getLayoutParamsg > 0.0F)) {
                      ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(((View)localObject).getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i5, 1073741824));
                    }
                    i1 += 1;
                  }
                  i1 = i3;
                }
              }
              i6 = i1;
              i1 = i5;
              i5 = i6;
              break label1164;
              i6 = i2;
              i2 = i4;
              i4 = i1;
              i1 = i5;
              i5 = i4;
              i4 = i6;
            }
          }
        }
      }
      i10 = i7;
      i11 = i1;
      i12 = i2;
      i7 = i3;
      i1 = i5;
      i2 = i6;
      i3 = i4;
      i4 = i10;
      i5 = i11;
      i6 = i12;
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getPaddingLeft();
    int i2 = paramInt3 - paramInt1;
    int i3 = getPaddingRight();
    int i4 = getPaddingRight();
    int i5 = n();
    paramInt1 = e;
    int i6 = e;
    label79:
    View localView;
    switch (paramInt1 & 0x70)
    {
    default: 
      paramInt1 = getPaddingTop();
      paramInt3 = 0;
      if (paramInt3 >= i5) {
        return;
      }
      localView = c(paramInt3);
      if (localView == null) {
        paramInt2 = paramInt1;
      }
      break;
    }
    do
    {
      paramInt3 += 1;
      paramInt1 = paramInt2;
      break label79;
      paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - f;
      break;
      paramInt1 = getPaddingTop() + (paramInt4 - paramInt2 - f) / 2;
      break;
      paramInt2 = paramInt1;
    } while (localView.getVisibility() == 8);
    int i7 = localView.getMeasuredWidth();
    int i8 = localView.getMeasuredHeight();
    yt localyt = (yt)localView.getLayoutParams();
    paramInt4 = h;
    paramInt2 = paramInt4;
    if (paramInt4 < 0) {
      paramInt2 = 0x800007 & i6;
    }
    switch (iy.a(paramInt2, ks.a.u(this)) & 0x7)
    {
    default: 
      paramInt2 = leftMargin + i1;
    }
    for (;;)
    {
      paramInt4 = paramInt1;
      if (d(paramInt3)) {
        paramInt4 = paramInt1 + m;
      }
      paramInt1 = paramInt4 + topMargin;
      a(localView, paramInt2, paramInt1, i7, i8);
      paramInt2 = paramInt1 + (bottomMargin + i8);
      break;
      paramInt2 = (i2 - i1 - i4 - i7) / 2 + i1 + leftMargin - rightMargin;
      continue;
      paramInt2 = i2 - i3 - i7 - rightMargin;
    }
  }
  
  void a(Canvas paramCanvas)
  {
    int i2 = n();
    int i1 = 0;
    View localView;
    yt localyt;
    while (i1 < i2)
    {
      localView = c(i1);
      if ((localView != null) && (localView.getVisibility() != 8) && (d(i1)))
      {
        localyt = (yt)localView.getLayoutParams();
        a(paramCanvas, localView.getTop() - topMargin - m);
      }
      i1 += 1;
    }
    if (d(i2))
    {
      localView = c(i2 - 1);
      if (localView != null) {
        break label124;
      }
    }
    for (i1 = getHeight() - getPaddingBottom() - m;; i1 = bottomMargin + i1)
    {
      a(paramCanvas, i1);
      return;
      label124:
      localyt = (yt)localView.getLayoutParams();
      i1 = localView.getBottom();
    }
  }
  
  void a(Canvas paramCanvas, int paramInt)
  {
    k.setBounds(getPaddingLeft() + o, paramInt, getWidth() - getPaddingRight() - o, m + paramInt);
    k.draw(paramCanvas);
  }
  
  public yt b(AttributeSet paramAttributeSet)
  {
    return new yt(getContext(), paramAttributeSet);
  }
  
  public yt b(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new yt(paramLayoutParams);
  }
  
  void b(int paramInt1, int paramInt2)
  {
    f = 0;
    int i7 = 0;
    int i4 = 0;
    int i3 = 0;
    int i6 = 0;
    int i5 = 1;
    float f1 = 0.0F;
    int i15 = n();
    int i17 = View.MeasureSpec.getMode(paramInt1);
    int i16 = View.MeasureSpec.getMode(paramInt2);
    int i8 = 0;
    int i1 = 0;
    if ((i == null) || (j == null))
    {
      i = new int[4];
      j = new int[4];
    }
    Object localObject1 = i;
    Object localObject2 = j;
    localObject1[3] = -1;
    localObject1[2] = -1;
    localObject1[1] = -1;
    localObject1[0] = -1;
    localObject2[3] = -1;
    localObject2[2] = -1;
    localObject2[1] = -1;
    localObject2[0] = -1;
    boolean bool1 = a;
    boolean bool2 = h;
    int i9;
    int i2;
    int i10;
    label155:
    Object localObject3;
    int i11;
    int i12;
    if (i17 == 1073741824)
    {
      i9 = 1;
      i2 = Integer.MIN_VALUE;
      i10 = 0;
      if (i10 >= i15) {
        break label901;
      }
      localObject3 = c(i10);
      if (localObject3 != null) {
        break label274;
      }
      f = f;
      i11 = i2;
      i2 = i5;
      i12 = i6;
      i6 = i4;
      i5 = i3;
      i4 = i12;
      i3 = i2;
      i2 = i1;
      i1 = i11;
    }
    for (;;)
    {
      i12 = i10 + 1;
      i10 = i5;
      i11 = i6;
      i5 = i2;
      i2 = i1;
      i1 = i5;
      i5 = i3;
      i6 = i4;
      i3 = i10;
      i4 = i11;
      i10 = i12;
      break label155;
      i9 = 0;
      break;
      label274:
      if (((View)localObject3).getVisibility() != 8)
      {
        if (d(i10)) {
          f += l;
        }
        yt localyt = (yt)((View)localObject3).getLayoutParams();
        f1 += g;
        if ((i17 == 1073741824) && (width == 0) && (g > 0.0F)) {
          if (i9 != 0)
          {
            f += leftMargin + rightMargin;
            label374:
            if (!bool1) {
              break label654;
            }
            i11 = View.MeasureSpec.makeMeasureSpec(0, 0);
            ((View)localObject3).measure(i11, i11);
            i11 = i2;
            i2 = i1;
            i1 = i11;
          }
        }
        for (;;)
        {
          label407:
          i12 = 0;
          if ((i16 != 1073741824) && (height == -1))
          {
            i8 = 1;
            i12 = 1;
          }
          for (;;)
          {
            i13 = topMargin + bottomMargin;
            int i14 = ((View)localObject3).getMeasuredHeight() + i13;
            i11 = vz.a(i4, ks.a.e((View)localObject3));
            if (bool1)
            {
              int i18 = ((View)localObject3).getBaseline();
              if (i18 != -1)
              {
                if (h >= 0) {
                  break label842;
                }
                i4 = e;
                label502:
                i4 = ((i4 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
                localObject1[i4] = Math.max(localObject1[i4], i18);
                localObject2[i4] = Math.max(localObject2[i4], i14 - i18);
              }
            }
            i7 = Math.max(i7, i14);
            if ((i5 != 0) && (height == -1))
            {
              i4 = 1;
              label575:
              if (g <= 0.0F) {
                break label865;
              }
              if (i12 == 0) {
                break label858;
              }
            }
            for (;;)
            {
              i5 = Math.max(i6, i13);
              i6 = i11;
              i11 = i3;
              i3 = i4;
              i4 = i5;
              i5 = i11;
              break;
              i11 = f;
              f = Math.max(i11, leftMargin + i11 + rightMargin);
              break label374;
              label654:
              i1 = i2;
              i2 = 1;
              break label407;
              i12 = Integer.MIN_VALUE;
              i11 = i12;
              if (width == 0)
              {
                i11 = i12;
                if (g > 0.0F)
                {
                  i11 = 0;
                  width = -2;
                }
              }
              if (f1 == 0.0F)
              {
                i12 = f;
                label716:
                b((View)localObject3, paramInt1, i12, paramInt2, 0);
                if (i11 != Integer.MIN_VALUE) {
                  width = i11;
                }
                i11 = ((View)localObject3).getMeasuredWidth();
                if (i9 == 0) {
                  break label807;
                }
              }
              for (f += leftMargin + i11 + rightMargin;; f = Math.max(i12, i12 + i11 + leftMargin + rightMargin))
              {
                if (!bool2) {
                  break label2301;
                }
                i11 = Math.max(i11, i2);
                i2 = i1;
                i1 = i11;
                break;
                i12 = 0;
                break label716;
                label807:
                i12 = f;
              }
              label842:
              i4 = h;
              break label502;
              i4 = 0;
              break label575;
              label858:
              i13 = i14;
            }
            label865:
            if (i12 != 0) {}
            for (;;)
            {
              i5 = Math.max(i3, i13);
              i3 = i4;
              i4 = i6;
              i6 = i11;
              break;
              i13 = i14;
            }
            label901:
            if ((f > 0) && (d(i15))) {
              f += l;
            }
            if ((localObject1[1] != -1) || (localObject1[0] != -1) || (localObject1[2] != -1) || (localObject1[3] != -1)) {
              i7 = Math.max(i7, Math.max(localObject1[3], Math.max(localObject1[0], Math.max(localObject1[1], localObject1[2]))) + Math.max(localObject2[3], Math.max(localObject2[0], Math.max(localObject2[1], localObject2[2]))));
            }
            for (;;)
            {
              if ((bool2) && ((i17 == Integer.MIN_VALUE) || (i17 == 0)))
              {
                f = 0;
                i10 = 0;
                if (i10 < i15)
                {
                  localObject3 = c(i10);
                  if (localObject3 == null) {
                    f = f;
                  }
                  for (;;)
                  {
                    i10 += 1;
                    break;
                    if (((View)localObject3).getVisibility() != 8)
                    {
                      localObject3 = (yt)((View)localObject3).getLayoutParams();
                      if (i9 != 0)
                      {
                        i11 = f;
                        i12 = leftMargin;
                        f = (rightMargin + (i12 + i2) + i11);
                      }
                      else
                      {
                        i11 = f;
                        i12 = leftMargin;
                        f = Math.max(i11, rightMargin + (i11 + i2 + i12));
                      }
                    }
                  }
                }
              }
              f += getPaddingLeft() + getPaddingRight();
              i13 = ks.a(Math.max(f, getSuggestedMinimumWidth()), paramInt1, 0);
              i10 = (0xFFFFFF & i13) - f;
              if ((i1 != 0) || ((i10 != 0) && (f1 > 0.0F)))
              {
                if (g > 0.0F) {
                  f1 = g;
                }
                localObject1[3] = -1;
                localObject1[2] = -1;
                localObject1[1] = -1;
                localObject1[0] = -1;
                localObject2[3] = -1;
                localObject2[2] = -1;
                localObject2[1] = -1;
                localObject2[0] = -1;
                f = 0;
                i7 = 0;
                i2 = i5;
                i5 = -1;
                i1 = i4;
                i4 = i5;
                i5 = i10;
                if (i7 < i15)
                {
                  localObject3 = c(i7);
                  if ((localObject3 == null) || (((View)localObject3).getVisibility() == 8)) {
                    break label2264;
                  }
                  localyt = (yt)((View)localObject3).getLayoutParams();
                  float f2 = g;
                  if (f2 <= 0.0F) {
                    break label2249;
                  }
                  i10 = (int)(i5 * f2 / f1);
                  i12 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin, height);
                  if ((width != 0) || (i17 != 1073741824))
                  {
                    i11 = i10 + ((View)localObject3).getMeasuredWidth();
                    i6 = i11;
                    if (i11 < 0) {
                      i6 = 0;
                    }
                    label1459:
                    ((View)localObject3).measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), i12);
                    i1 = vz.a(i1, ks.a.e((View)localObject3) & 0xFF000000);
                    f1 -= f2;
                    i6 = i5 - i10;
                    i5 = i1;
                    i1 = i6;
                    label1512:
                    if (i9 == 0) {
                      break label1783;
                    }
                    f += ((View)localObject3).getMeasuredWidth() + leftMargin + rightMargin;
                    label1543:
                    if ((i16 == 1073741824) || (height != -1)) {
                      break label1821;
                    }
                    i6 = 1;
                    label1562:
                    i12 = topMargin + bottomMargin;
                    i11 = ((View)localObject3).getMeasuredHeight() + i12;
                    i10 = Math.max(i4, i11);
                    if (i6 == 0) {
                      break label1827;
                    }
                    i4 = i12;
                    label1603:
                    i4 = Math.max(i3, i4);
                    if ((i2 == 0) || (height != -1)) {
                      break label1834;
                    }
                    i2 = 1;
                    label1629:
                    if (bool1)
                    {
                      i6 = ((View)localObject3).getBaseline();
                      if (i6 != -1)
                      {
                        if (h >= 0) {
                          break label1840;
                        }
                        i3 = e;
                        label1661:
                        i3 = ((i3 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
                        localObject1[i3] = Math.max(localObject1[i3], i6);
                        localObject2[i3] = Math.max(localObject2[i3], i11 - i6);
                      }
                    }
                    i6 = i5;
                    i5 = i2;
                    i3 = i10;
                    i2 = i6;
                  }
                }
              }
              for (;;)
              {
                i10 = i7 + 1;
                i6 = i5;
                i7 = i3;
                i5 = i1;
                i1 = i2;
                i2 = i6;
                i3 = i4;
                i4 = i7;
                i7 = i10;
                break;
                if (i10 > 0)
                {
                  i6 = i10;
                  break label1459;
                }
                i6 = 0;
                break label1459;
                label1783:
                i6 = f;
                f = Math.max(i6, ((View)localObject3).getMeasuredWidth() + i6 + leftMargin + rightMargin);
                break label1543;
                label1821:
                i6 = 0;
                break label1562;
                label1827:
                i4 = i11;
                break label1603;
                label1834:
                i2 = 0;
                break label1629;
                label1840:
                i3 = h;
                break label1661;
                f += getPaddingLeft() + getPaddingRight();
                if ((localObject1[1] == -1) && (localObject1[0] == -1) && (localObject1[2] == -1))
                {
                  i5 = i4;
                  if (localObject1[3] == -1) {}
                }
                else
                {
                  i5 = Math.max(i4, Math.max(localObject1[3], Math.max(localObject1[0], Math.max(localObject1[1], localObject1[2]))) + Math.max(localObject2[3], Math.max(localObject2[0], Math.max(localObject2[1], localObject2[2]))));
                }
                i4 = i1;
                i7 = i5;
                i1 = i3;
                for (;;)
                {
                  if ((i2 == 0) && (i16 != 1073741824)) {}
                  for (;;)
                  {
                    setMeasuredDimension(0xFF000000 & i4 | i13, ks.a(Math.max(i1 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), paramInt2, i4 << 16));
                    if (i8 != 0)
                    {
                      i1 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
                      paramInt2 = 0;
                      while (paramInt2 < i15)
                      {
                        localObject1 = c(paramInt2);
                        if (((View)localObject1).getVisibility() != 8)
                        {
                          localObject2 = (yt)((View)localObject1).getLayoutParams();
                          if (height == -1)
                          {
                            i2 = width;
                            width = ((View)localObject1).getMeasuredWidth();
                            measureChildWithMargins((View)localObject1, paramInt1, 0, i1, 0);
                            width = i2;
                          }
                        }
                        paramInt2 += 1;
                        continue;
                        i3 = Math.max(i3, i6);
                        if ((!bool2) || (i17 == 1073741824)) {
                          break label2238;
                        }
                        i1 = 0;
                        while (i1 < i15)
                        {
                          localObject1 = c(i1);
                          if ((localObject1 != null) && (((View)localObject1).getVisibility() != 8) && (getLayoutParamsg > 0.0F)) {
                            ((View)localObject1).measure(View.MeasureSpec.makeMeasureSpec(i2, 1073741824), View.MeasureSpec.makeMeasureSpec(((View)localObject1).getMeasuredHeight(), 1073741824));
                          }
                          i1 += 1;
                        }
                      }
                    }
                    return;
                    i1 = i7;
                  }
                  label2238:
                  i1 = i3;
                  i2 = i5;
                }
                label2249:
                i6 = i1;
                i1 = i5;
                i5 = i6;
                break label1512;
                label2264:
                i10 = i2;
                i2 = i1;
                i6 = i4;
                i1 = i5;
                i5 = i10;
                i4 = i3;
                i3 = i6;
              }
            }
          }
          label2301:
          i11 = i1;
          i1 = i2;
          i2 = i11;
        }
      }
      i11 = i1;
      i12 = i3;
      int i13 = i4;
      i1 = i2;
      i2 = i11;
      i3 = i5;
      i4 = i6;
      i5 = i12;
      i6 = i13;
    }
  }
  
  void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = vz.a(this);
    int i3 = getPaddingTop();
    int i5 = paramInt4 - paramInt2;
    int i6 = getPaddingBottom();
    int i7 = getPaddingBottom();
    int i8 = n();
    paramInt2 = e;
    int i9 = e;
    boolean bool2 = a;
    int[] arrayOfInt1 = i;
    int[] arrayOfInt2 = j;
    switch (iy.a(paramInt2 & 0x800007, ks.a.u(this)))
    {
    default: 
      paramInt1 = getPaddingLeft();
      if (bool1) {
        paramInt4 = i8 - 1;
      }
      break;
    }
    for (paramInt3 = -1;; paramInt3 = 1)
    {
      int i1 = 0;
      paramInt2 = paramInt1;
      label127:
      int i12;
      View localView;
      int i10;
      int i11;
      yt localyt;
      int i2;
      int i4;
      if (i1 < i8)
      {
        i12 = paramInt4 + paramInt3 * i1;
        localView = c(i12);
        if (localView == null) {
          paramInt1 = paramInt2;
        }
        do
        {
          i1 += 1;
          paramInt2 = paramInt1;
          break label127;
          paramInt1 = getPaddingLeft() + paramInt3 - paramInt1 - f;
          break;
          paramInt1 = getPaddingLeft() + (paramInt3 - paramInt1 - f) / 2;
          break;
          paramInt1 = paramInt2;
        } while (localView.getVisibility() == 8);
        i10 = localView.getMeasuredWidth();
        i11 = localView.getMeasuredHeight();
        paramInt1 = -1;
        localyt = (yt)localView.getLayoutParams();
        i2 = paramInt1;
        if (bool2)
        {
          i2 = paramInt1;
          if (height != -1) {
            i2 = localView.getBaseline();
          }
        }
        i4 = h;
        paramInt1 = i4;
        if (i4 < 0) {
          paramInt1 = i9 & 0x70;
        }
        switch (paramInt1 & 0x70)
        {
        default: 
          paramInt1 = i3;
        }
      }
      label331:
      label496:
      for (;;)
      {
        if (d(i12)) {
          paramInt2 = l + paramInt2;
        }
        for (;;)
        {
          paramInt2 += leftMargin;
          a(localView, paramInt2, paramInt1, i10, i11);
          paramInt1 = paramInt2 + (rightMargin + i10);
          break;
          i4 = topMargin + i3;
          paramInt1 = i4;
          if (i2 == -1) {
            break label496;
          }
          paramInt1 = arrayOfInt1[1] - i2 + i4;
          break label331;
          paramInt1 = (i5 - i3 - i7 - i11) / 2 + i3 + topMargin - bottomMargin;
          break label331;
          i4 = i5 - i6 - i11 - bottomMargin;
          paramInt1 = i4;
          if (i2 == -1) {
            break label496;
          }
          paramInt1 = localView.getMeasuredHeight();
          paramInt1 = i4 - (arrayOfInt2[2] - (paramInt1 - i2));
          break label331;
          return;
        }
      }
      paramInt4 = 0;
    }
  }
  
  void b(Canvas paramCanvas)
  {
    int i3 = n();
    boolean bool = vz.a(this);
    int i1 = 0;
    View localView;
    yt localyt;
    if (i1 < i3)
    {
      localView = c(i1);
      if ((localView != null) && (localView.getVisibility() != 8) && (d(i1)))
      {
        localyt = (yt)localView.getLayoutParams();
        if (!bool) {
          break label92;
        }
        i2 = localView.getRight();
      }
      label92:
      for (int i2 = rightMargin + i2;; i2 = localView.getLeft() - leftMargin - l)
      {
        b(paramCanvas, i2);
        i1 += 1;
        break;
      }
    }
    if (d(i3))
    {
      localView = c(i3 - 1);
      if (localView != null) {
        break label171;
      }
      if (!bool) {
        break label153;
      }
      i1 = getPaddingLeft();
    }
    for (;;)
    {
      b(paramCanvas, i1);
      return;
      label153:
      i1 = getWidth() - getPaddingRight() - l;
      continue;
      label171:
      localyt = (yt)localView.getLayoutParams();
      if (bool)
      {
        i1 = localView.getLeft() - leftMargin - l;
      }
      else
      {
        i1 = localView.getRight();
        i1 = rightMargin + i1;
      }
    }
  }
  
  void b(Canvas paramCanvas, int paramInt)
  {
    k.setBounds(paramInt, getPaddingTop() + o, l + paramInt, getHeight() - getPaddingBottom() - o);
    k.draw(paramCanvas);
  }
  
  public void b(Drawable paramDrawable)
  {
    boolean bool = false;
    if (paramDrawable == k) {
      return;
    }
    k = paramDrawable;
    if (paramDrawable != null) {
      l = paramDrawable.getIntrinsicWidth();
    }
    for (m = paramDrawable.getIntrinsicHeight();; m = 0)
    {
      if (paramDrawable == null) {
        bool = true;
      }
      setWillNotDraw(bool);
      requestLayout();
      return;
      l = 0;
    }
  }
  
  void b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void b(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  View c(int paramInt)
  {
    return getChildAt(paramInt);
  }
  
  public boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof yt;
  }
  
  protected boolean d(int paramInt)
  {
    if (paramInt == 0) {
      if ((n & 0x1) == 0) {}
    }
    do
    {
      return true;
      return false;
      if (paramInt != getChildCount()) {
        break;
      }
    } while ((n & 0x4) != 0);
    return false;
    if ((n & 0x2) != 0)
    {
      paramInt -= 1;
      for (;;)
      {
        if (paramInt < 0) {
          break label75;
        }
        if (getChildAt(paramInt).getVisibility() != 8) {
          break;
        }
        paramInt -= 1;
      }
    }
    return false;
    label75:
    return false;
  }
  
  public void e(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      requestLayout();
    }
  }
  
  public void f(int paramInt)
  {
    if (e != paramInt)
    {
      if ((0x800007 & paramInt) != 0) {
        break label45;
      }
      paramInt = 0x800003 | paramInt;
    }
    label45:
    for (;;)
    {
      int i1 = paramInt;
      if ((paramInt & 0x70) == 0) {
        i1 = paramInt | 0x30;
      }
      e = i1;
      requestLayout();
      return;
    }
  }
  
  public int getBaseline()
  {
    int i1 = -1;
    if (b < 0) {
      i1 = super.getBaseline();
    }
    View localView;
    int i2;
    do
    {
      return i1;
      if (getChildCount() <= b) {
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
      }
      localView = getChildAt(b);
      i2 = localView.getBaseline();
      if (i2 != -1) {
        break;
      }
    } while (b == 0);
    throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
    i1 = c;
    if (d == 1)
    {
      int i3 = e & 0x70;
      if (i3 != 48) {
        switch (i3)
        {
        }
      }
    }
    for (;;)
    {
      return getLayoutParamstopMargin + i1 + i2;
      i1 = getBottom() - getTop() - getPaddingBottom() - f;
      continue;
      i1 += (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - f) / 2;
    }
  }
  
  public yt l()
  {
    if (d == 0) {
      return new yt(-2, -2);
    }
    if (d == 1) {
      return new yt(-1, -2);
    }
    return null;
  }
  
  public int m()
  {
    return l;
  }
  
  int n()
  {
    return getChildCount();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (k == null) {
      return;
    }
    if (d == 1)
    {
      a(paramCanvas);
      return;
    }
    b(paramCanvas);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ys.class.getName());
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(ys.class.getName());
    }
  }
  
  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (d == 1)
    {
      a(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    b(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    if (d == 1)
    {
      a(paramInt1, paramInt2);
      return;
    }
    b(paramInt1, paramInt2);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     ys
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */