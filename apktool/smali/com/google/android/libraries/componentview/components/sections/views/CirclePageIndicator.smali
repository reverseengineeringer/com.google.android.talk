.class public Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Llt;


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private c:Landroid/support/v4/view/ViewPager;

.field private final d:F

.field private final e:F

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/16 v0, 0x29

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->a:I

    .line 33
    const/16 v0, 0x66

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->b:I

    return-void
.end method

.method private a()I
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private b()I
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->d()I

    move-result v0

    .line 138
    iget v1, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->d:F

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->e:F

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 1153
    const/4 v0, 0x0

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1155
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->d:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method private d()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()Lkh;

    move-result-object v0

    invoke-virtual {v0}, Lkh;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->invalidate()V

    .line 201
    return-void
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 160
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v1, v0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-float v3, v0

    .line 163
    cmpg-float v0, v1, v4

    if-lez v0, :cond_0

    cmpg-float v0, v3, v4

    if-gtz v0, :cond_1

    .line 183
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->d()I

    move-result v4

    .line 169
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v0

    .line 170
    :goto_0
    iget v2, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->d:F

    div-float v5, v2, v6

    .line 173
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    .line 175
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->b()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    add-float v2, v1, v5

    .line 177
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v3, v6

    add-float v6, v1, v3

    .line 179
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    .line 180
    if-ne v0, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->f:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v3, v6, v5, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 181
    iget v1, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->d:F

    iget v7, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->e:F

    add-float/2addr v1, v7

    add-float/2addr v3, v1

    .line 179
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 169
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 180
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->g:Landroid/graphics/Paint;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getDefaultSize(II)I

    move-result v0

    .line 103
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getDefaultSize(II)I

    move-result v1

    .line 120
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 121
    return-void

    .line 88
    :sswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    goto :goto_0

    .line 91
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 96
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 97
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 105
    :sswitch_3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    goto :goto_1

    .line 108
    :sswitch_4
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 113
    :sswitch_5
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 114
    invoke-direct {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/components/sections/views/CirclePageIndicator;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 112
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    .line 86
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 103
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method
