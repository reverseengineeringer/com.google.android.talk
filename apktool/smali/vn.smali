.class public final Lvn;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final i:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Lys;

.field c:I

.field d:I

.field e:I

.field private f:Landroid/widget/Spinner;

.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lvn;->i:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 182
    iput p1, p0, Lvn;->h:I

    .line 183
    iget-object v0, p0, Lvn;->b:Lys;

    invoke-virtual {v0}, Lys;->getChildCount()I

    move-result v3

    move v2, v1

    .line 184
    :goto_0
    if-ge v2, v3, :cond_3

    .line 185
    iget-object v0, p0, Lvn;->b:Lys;

    invoke-virtual {v0, v2}, Lys;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 186
    if-ne v2, p1, :cond_2

    const/4 v0, 0x1

    .line 187
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 188
    if-eqz v0, :cond_1

    .line 2260
    iget-object v0, p0, Lvn;->b:Lys;

    invoke-virtual {v0, p1}, Lys;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2261
    iget-object v4, p0, Lvn;->a:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 2262
    iget-object v4, p0, Lvn;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lvn;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2264
    :cond_0
    new-instance v4, Lvo;

    invoke-direct {v4, p0, v0}, Lvo;-><init>(Lvn;Landroid/view/View;)V

    iput-object v4, p0, Lvn;->a:Ljava/lang/Runnable;

    .line 2271
    iget-object v0, p0, Lvn;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lvn;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 186
    goto :goto_1

    .line 192
    :cond_3
    iget-object v0, p0, Lvn;->f:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    .line 193
    iget-object v0, p0, Lvn;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 195
    :cond_4
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lvn;->f:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvn;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Lvn;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return v4

    .line 174
    :cond_0
    iget-object v0, p0, Lvn;->f:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lvn;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lvn;->b:Lys;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lvn;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lvn;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lvn;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lvn;->g:Z

    .line 150
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 277
    iget-object v0, p0, Lvn;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lvn;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lvn;->post(Ljava/lang/Runnable;)Z

    .line 281
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 224
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lvn;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lss;->a(Landroid/content/Context;)Lss;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lss;->e()I

    move-result v1

    .line 3198
    iput v1, p0, Lvn;->e:I

    .line 3199
    invoke-virtual {p0}, Lvn;->requestLayout()V

    .line 231
    invoke-virtual {v0}, Lss;->g()I

    move-result v0

    iput v0, p0, Lvn;->d:I

    .line 232
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 286
    iget-object v0, p0, Lvn;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lvn;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lvn;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 372
    return-void
.end method

.method public onMeasure(II)V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 97
    if-ne v3, v7, :cond_6

    move v0, v1

    .line 98
    :goto_0
    invoke-virtual {p0, v0}, Lvn;->setFillViewport(Z)V

    .line 100
    iget-object v4, p0, Lvn;->b:Lys;

    invoke-virtual {v4}, Lys;->getChildCount()I

    move-result v4

    .line 101
    if-le v4, v1, :cond_8

    if-eq v3, v7, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_8

    .line 103
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_7

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lvn;->c:I

    .line 108
    :goto_1
    iget v3, p0, Lvn;->c:I

    iget v4, p0, Lvn;->d:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lvn;->c:I

    .line 113
    :goto_2
    iget v3, p0, Lvn;->e:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 115
    if-nez v0, :cond_9

    iget-boolean v4, p0, Lvn;->g:Z

    if-eqz v4, :cond_9

    .line 117
    :goto_3
    if-eqz v1, :cond_b

    .line 119
    iget-object v1, p0, Lvn;->b:Lys;

    invoke-virtual {v1, v2, v3}, Lys;->measure(II)V

    .line 120
    iget-object v1, p0, Lvn;->b:Lys;

    invoke-virtual {v1}, Lys;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_a

    .line 1153
    invoke-direct {p0}, Lvn;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1155
    iget-object v1, p0, Lvn;->f:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    .line 1213
    new-instance v1, Lxi;

    invoke-virtual {p0}, Lvn;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    sget v5, Laen;->A:I

    invoke-direct {v1, v2, v4, v5}, Lxi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1215
    new-instance v2, Lyt;

    invoke-direct {v2, v8, v6}, Lyt;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1218
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1156
    iput-object v1, p0, Lvn;->f:Landroid/widget/Spinner;

    .line 1158
    :cond_1
    iget-object v1, p0, Lvn;->b:Lys;

    invoke-virtual {p0, v1}, Lvn;->removeView(Landroid/view/View;)V

    .line 1159
    iget-object v1, p0, Lvn;->f:Landroid/widget/Spinner;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lvn;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1161
    iget-object v1, p0, Lvn;->f:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1162
    iget-object v1, p0, Lvn;->f:Landroid/widget/Spinner;

    new-instance v2, Lvp;

    .line 1547
    invoke-direct {v2, p0}, Lvp;-><init>(Lvn;)V

    .line 1162
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1164
    :cond_2
    iget-object v1, p0, Lvn;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 1165
    iget-object v1, p0, Lvn;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lvn;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1166
    const/4 v1, 0x0

    iput-object v1, p0, Lvn;->a:Ljava/lang/Runnable;

    .line 1168
    :cond_3
    iget-object v1, p0, Lvn;->f:Landroid/widget/Spinner;

    iget v2, p0, Lvn;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 129
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lvn;->getMeasuredWidth()I

    move-result v1

    .line 130
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 131
    invoke-virtual {p0}, Lvn;->getMeasuredWidth()I

    move-result v2

    .line 133
    if-eqz v0, :cond_5

    if-eq v1, v2, :cond_5

    .line 135
    iget v0, p0, Lvn;->h:I

    invoke-direct {p0, v0}, Lvn;->a(I)V

    .line 137
    :cond_5
    return-void

    :cond_6
    move v0, v2

    .line 97
    goto/16 :goto_0

    .line 106
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lvn;->c:I

    goto/16 :goto_1

    .line 110
    :cond_8
    iput v6, p0, Lvn;->c:I

    goto/16 :goto_2

    :cond_9
    move v1, v2

    .line 115
    goto/16 :goto_3

    .line 123
    :cond_a
    invoke-direct {p0}, Lvn;->b()Z

    goto :goto_4

    .line 126
    :cond_b
    invoke-direct {p0}, Lvn;->b()Z

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 377
    return-void
.end method
