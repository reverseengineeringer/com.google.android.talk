.class public Lcom/android/ex/photo/PhotoViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private d:F

.field private e:I

.field private f:F

.field private g:F

.field private h:Lacf;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewPager;->h()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Lcom/android/ex/photo/PhotoViewPager;->h()V

    .line 74
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Llu;

    invoke-direct {v0, p0}, Llu;-><init>(Lcom/android/ex/photo/PhotoViewPager;)V

    invoke-virtual {p0, v0}, Lcom/android/ex/photo/PhotoViewPager;->a(Llu;)V

    .line 105
    return-void
.end method


# virtual methods
.method public a(Lacf;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/ex/photo/PhotoViewPager;->h:Lacf;

    .line 188
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewPager;->h:Lacf;

    if-eqz v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/android/ex/photo/PhotoViewPager;->h:Lacf;

    iget v1, p0, Lcom/android/ex/photo/PhotoViewPager;->f:F

    iget v4, p0, Lcom/android/ex/photo/PhotoViewPager;->g:F

    invoke-interface {v0, v1, v4}, Lacf;->a(FF)I

    move-result v0

    .line 118
    :goto_0
    sget v1, Lace;->d:I

    if-eq v0, v1, :cond_0

    sget v1, Lace;->b:I

    if-ne v0, v1, :cond_6

    :cond_0
    move v1, v3

    .line 120
    :goto_1
    sget v4, Lace;->d:I

    if-eq v0, v4, :cond_1

    sget v4, Lace;->c:I

    if-ne v0, v4, :cond_7

    :cond_1
    move v0, v3

    .line 124
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    .line 126
    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    if-ne v4, v3, :cond_3

    .line 127
    :cond_2
    iput v6, p0, Lcom/android/ex/photo/PhotoViewPager;->e:I

    .line 130
    :cond_3
    sparse-switch v4, :sswitch_data_0

    .line 180
    :cond_4
    :goto_3
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_4
    return v2

    .line 117
    :cond_5
    sget v0, Lace;->a:I

    goto :goto_0

    :cond_6
    move v1, v2

    .line 118
    goto :goto_1

    :cond_7
    move v0, v2

    .line 120
    goto :goto_2

    .line 132
    :sswitch_0
    if-nez v1, :cond_8

    if-eqz v0, :cond_4

    .line 133
    :cond_8
    iget v3, p0, Lcom/android/ex/photo/PhotoViewPager;->e:I

    .line 134
    if-eq v3, v6, :cond_4

    .line 140
    invoke-static {p1, v3}, Ljx;->a(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 141
    invoke-static {p1, v3}, Ljx;->c(Landroid/view/MotionEvent;I)F

    move-result v3

    .line 143
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 144
    iput v3, p0, Lcom/android/ex/photo/PhotoViewPager;->d:F

    goto :goto_4

    .line 146
    :cond_9
    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/ex/photo/PhotoViewPager;->d:F

    cmpl-float v1, v3, v1

    if-lez v1, :cond_a

    .line 147
    iput v3, p0, Lcom/android/ex/photo/PhotoViewPager;->d:F

    goto :goto_4

    .line 149
    :cond_a
    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/ex/photo/PhotoViewPager;->d:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_4

    .line 150
    iput v3, p0, Lcom/android/ex/photo/PhotoViewPager;->d:F

    goto :goto_4

    .line 158
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/PhotoViewPager;->d:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/PhotoViewPager;->f:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/PhotoViewPager;->g:F

    .line 163
    invoke-static {p1, v2}, Ljx;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/PhotoViewPager;->e:I

    goto :goto_3

    .line 168
    :sswitch_2
    invoke-static {p1}, Ljx;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 169
    invoke-static {p1, v0}, Ljx;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 170
    iget v4, p0, Lcom/android/ex/photo/PhotoViewPager;->e:I

    if-ne v1, v4, :cond_4

    .line 172
    if-nez v0, :cond_b

    .line 173
    :goto_5
    invoke-static {p1, v3}, Ljx;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/PhotoViewPager;->d:F

    .line 174
    invoke-static {p1, v3}, Ljx;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/android/ex/photo/PhotoViewPager;->e:I

    goto :goto_3

    :cond_b
    move v3, v2

    .line 172
    goto :goto_5

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method
