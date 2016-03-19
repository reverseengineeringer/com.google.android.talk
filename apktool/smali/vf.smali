.class public Lvf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:I

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/graphics/drawable/Drawable;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/drawable/Drawable;

.field h:Z

.field i:Ljava/lang/CharSequence;

.field j:Ljava/lang/CharSequence;

.field k:Ljava/lang/CharSequence;

.field l:Landroid/view/Window$Callback;

.field m:Z

.field n:Lwe;

.field o:I

.field final p:Lvv;

.field q:I

.field r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 5093
    sget v0, Laal;->bq:I

    sget v1, Laal;->Q:I

    invoke-direct {p0, p1, p2, v0, v1}, Lvf;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 5095
    return-void
.end method

.method constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 6098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6086
    iput v1, p0, Lvf;->o:I

    .line 6089
    iput v1, p0, Lvf;->q:I

    .line 6099
    iput-object p1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    .line 6100
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->i()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lvf;->i:Ljava/lang/CharSequence;

    .line 6101
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->j()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lvf;->j:Ljava/lang/CharSequence;

    .line 6102
    iget-object v0, p0, Lvf;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lvf;->h:Z

    .line 6103
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lvf;->g:Landroid/graphics/drawable/Drawable;

    .line 6105
    if-eqz p2, :cond_d

    .line 6106
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lsb;->a:[I

    sget v4, Laen;->v:I

    invoke-static {v0, v2, v3, v4}, Lvw;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;

    move-result-object v0

    .line 6109
    sget v2, Lsb;->r:I

    invoke-virtual {v0, v2}, Lvw;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6111
    invoke-virtual {p0, v2}, Lvf;->b(Ljava/lang/CharSequence;)V

    .line 6114
    :cond_0
    sget v2, Lsb;->p:I

    invoke-virtual {v0, v2}, Lvw;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 6115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6116
    invoke-virtual {p0, v2}, Lvf;->c(Ljava/lang/CharSequence;)V

    .line 6119
    :cond_1
    sget v2, Lsb;->n:I

    invoke-virtual {v0, v2}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6120
    if-eqz v2, :cond_2

    .line 6121
    invoke-virtual {p0, v2}, Lvf;->d(Landroid/graphics/drawable/Drawable;)V

    .line 6124
    :cond_2
    sget v2, Lsb;->m:I

    invoke-virtual {v0, v2}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6125
    iget-object v3, p0, Lvf;->g:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 6126
    invoke-virtual {p0, v2}, Lvf;->c(Landroid/graphics/drawable/Drawable;)V

    .line 6129
    :cond_3
    sget v2, Lsb;->l:I

    invoke-virtual {v0, v2}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6130
    if-eqz v2, :cond_4

    .line 6131
    invoke-virtual {p0, v2}, Lvf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 6134
    :cond_4
    sget v2, Lsb;->h:I

    invoke-virtual {v0, v2, v1}, Lvw;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lvf;->a(I)V

    .line 6136
    sget v2, Lsb;->g:I

    invoke-virtual {v0, v2, v1}, Lvw;->f(II)I

    move-result v2

    .line 6138
    if-eqz v2, :cond_5

    .line 6139
    iget-object v3, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lvf;->a(Landroid/view/View;)V

    .line 6141
    iget v2, p0, Lvf;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Lvf;->a(I)V

    .line 6144
    :cond_5
    sget v2, Lsb;->j:I

    invoke-virtual {v0, v2, v1}, Lvw;->e(II)I

    move-result v2

    .line 6145
    if-lez v2, :cond_6

    .line 6146
    iget-object v3, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 6147
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6148
    iget-object v2, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6151
    :cond_6
    sget v2, Lsb;->f:I

    invoke-virtual {v0, v2, v5}, Lvw;->c(II)I

    move-result v2

    .line 6153
    sget v3, Lsb;->e:I

    invoke-virtual {v0, v3, v5}, Lvw;->c(II)I

    move-result v3

    .line 6155
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 6156
    :cond_7
    iget-object v4, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 6160
    :cond_8
    sget v2, Lsb;->s:I

    invoke-virtual {v0, v2, v1}, Lvw;->f(II)I

    move-result v2

    .line 6161
    if-eqz v2, :cond_9

    .line 6162
    iget-object v3, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 6165
    :cond_9
    sget v2, Lsb;->q:I

    invoke-virtual {v0, v2, v1}, Lvw;->f(II)I

    move-result v2

    .line 6167
    if-eqz v2, :cond_a

    .line 6168
    iget-object v3, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 6171
    :cond_a
    sget v2, Lsb;->o:I

    invoke-virtual {v0, v2, v1}, Lvw;->f(II)I

    move-result v1

    .line 6172
    if-eqz v1, :cond_b

    .line 6173
    iget-object v2, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->a(I)V

    .line 6176
    :cond_b
    invoke-virtual {v0}, Lvw;->a()V

    .line 6178
    invoke-virtual {v0}, Lvw;->b()Lvv;

    move-result-object v0

    iput-object v0, p0, Lvf;->p:Lvv;

    .line 6185
    :goto_1
    invoke-virtual {p0, p3}, Lvf;->e(I)V

    .line 6186
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->k()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lvf;->k:Ljava/lang/CharSequence;

    .line 6188
    iget-object v0, p0, Lvf;->p:Lvv;

    invoke-virtual {v0, p4}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvf;->b(Landroid/graphics/drawable/Drawable;)V

    .line 6190
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lvx;

    invoke-direct {v1, p0}, Lvx;-><init>(Lvf;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/view/View$OnClickListener;)V

    .line 6200
    return-void

    :cond_c
    move v0, v1

    .line 6102
    goto/16 :goto_0

    .line 6231
    :cond_d
    const/16 v0, 0xb

    .line 6233
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 6234
    const/16 v0, 0xf

    .line 6180
    :cond_e
    iput v0, p0, Lvf;->b:I

    .line 6182
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lvv;->a(Landroid/content/Context;)Lvv;

    move-result-object v0

    iput-object v0, p0, Lvf;->p:Lvv;

    goto :goto_1
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 3241
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public a(IJ)Lmd;
    .locals 2

    .prologue
    .line 3592
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    .line 4447
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v1

    .line 3592
    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Lmd;->a(F)Lmd;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmd;->a(J)Lmd;

    move-result-object v0

    new-instance v1, Lvy;

    invoke-direct {v1, p0, p1}, Lvy;-><init>(Lvf;I)V

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3409
    iget v0, p0, Lvf;->b:I

    .line 3410
    xor-int/2addr v0, p1

    .line 3411
    iput p1, p0, Lvf;->b:I

    .line 3412
    if-eqz v0, :cond_3

    .line 3413
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 3414
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 3415
    invoke-virtual {p0}, Lvf;->r()V

    .line 3416
    invoke-virtual {p0}, Lvf;->q()V

    .line 3422
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 3423
    invoke-virtual {p0}, Lvf;->p()V

    .line 3426
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 3427
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 3428
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lvf;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 3429
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Lvf;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 3436
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvf;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 3437
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 3438
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lvf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 3444
    :cond_3
    :goto_2
    return-void

    .line 3418
    :cond_4
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3431
    :cond_5
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 3432
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3440
    :cond_6
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lvf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 4619
    iput-object p1, p0, Lvf;->g:Landroid/graphics/drawable/Drawable;

    .line 4620
    invoke-virtual {p0}, Lvf;->r()V

    .line 4621
    return-void
.end method

.method public a(Landroid/view/Menu;Lua;)V
    .locals 2

    .prologue
    .line 3389
    iget-object v0, p0, Lvf;->n:Lwe;

    if-nez v0, :cond_0

    .line 3390
    new-instance v0, Lwe;

    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lwe;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvf;->n:Lwe;

    .line 3391
    iget-object v0, p0, Lvf;->n:Lwe;

    sget v1, Laal;->az:I

    invoke-virtual {v0, v1}, Lwe;->a(I)V

    .line 3393
    :cond_0
    iget-object v0, p0, Lvf;->n:Lwe;

    invoke-virtual {v0, p2}, Lwe;->a(Lua;)V

    .line 3394
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Ltl;

    iget-object v1, p0, Lvf;->n:Lwe;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Ltl;Lwe;)V

    .line 3395
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 3566
    iget-object v0, p0, Lvf;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lvf;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 3567
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lvf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 3569
    :cond_0
    iput-object p1, p0, Lvf;->d:Landroid/view/View;

    .line 3570
    if-eqz p1, :cond_1

    iget v0, p0, Lvf;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 3571
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lvf;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 3573
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 3261
    iput-object p1, p0, Lvf;->l:Landroid/view/Window$Callback;

    .line 3262
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 3267
    iget-boolean v0, p0, Lvf;->h:Z

    if-nez v0, :cond_0

    .line 3268
    invoke-virtual {p0, p1}, Lvf;->d(Ljava/lang/CharSequence;)V

    .line 3270
    :cond_0
    return-void
.end method

.method public a(Lua;Ltm;)V
    .locals 1

    .prologue
    .line 4691
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->a(Lua;Ltm;)V

    .line 4692
    return-void
.end method

.method public a(Lvn;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 3448
    iget-object v0, p0, Lvf;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvf;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 3449
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lvf;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 3451
    :cond_0
    iput-object p1, p0, Lvf;->c:Landroid/view/View;

    .line 3452
    if-eqz p1, :cond_1

    iget v0, p0, Lvf;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3453
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lvf;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 3454
    iget-object v0, p0, Lvf;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Labc;

    .line 3455
    iput v3, v0, Labc;->width:I

    .line 3456
    iput v3, v0, Labc;->height:I

    .line 3457
    const v1, 0x800053

    iput v1, v0, Labc;->a:I

    .line 3458
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lvn;->a(Z)V

    .line 3460
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 3474
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->a(Z)V

    .line 3475
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3246
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 4625
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvf;->p:Lvv;

    invoke-virtual {v0, p1}, Lvv;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lvf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 4628
    return-void

    .line 4625
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 7224
    iget-object v0, p0, Lvf;->r:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 7225
    iput-object p1, p0, Lvf;->r:Landroid/graphics/drawable/Drawable;

    .line 7226
    invoke-virtual {p0}, Lvf;->r()V

    .line 7228
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 3279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvf;->h:Z

    .line 3280
    invoke-virtual {p0, p1}, Lvf;->d(Ljava/lang/CharSequence;)V

    .line 3281
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 4638
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lvf;->e(Ljava/lang/CharSequence;)V

    .line 4639
    return-void

    .line 4638
    :cond_0
    invoke-virtual {p0}, Lvf;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 7330
    iput-object p1, p0, Lvf;->e:Landroid/graphics/drawable/Drawable;

    .line 7331
    invoke-virtual {p0}, Lvf;->p()V

    .line 7332
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 3297
    iput-object p1, p0, Lvf;->j:Ljava/lang/CharSequence;

    .line 3298
    iget v0, p0, Lvf;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 3299
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->c(Ljava/lang/CharSequence;)V

    .line 3301
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 3251
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 3256
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 3257
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 4680
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 4681
    return-void
.end method

.method d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 7341
    iput-object p1, p0, Lvf;->f:Landroid/graphics/drawable/Drawable;

    .line 7342
    invoke-virtual {p0}, Lvf;->p()V

    .line 7343
    return-void
.end method

.method d(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 7284
    iput-object p1, p0, Lvf;->i:Ljava/lang/CharSequence;

    .line 7285
    iget v0, p0, Lvf;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 7286
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->b(Ljava/lang/CharSequence;)V

    .line 7288
    :cond_0
    return-void
.end method

.method e(I)V
    .locals 1

    .prologue
    .line 7213
    iget v0, p0, Lvf;->q:I

    if-ne p1, v0, :cond_1

    .line 7220
    :cond_0
    :goto_0
    return-void

    .line 7216
    :cond_1
    iput p1, p0, Lvf;->q:I

    .line 7217
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->k()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7218
    iget v0, p0, Lvf;->q:I

    invoke-virtual {p0, v0}, Lvf;->c(I)V

    goto :goto_0
.end method

.method e(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 7632
    iput-object p1, p0, Lvf;->k:Ljava/lang/CharSequence;

    .line 7633
    invoke-virtual {p0}, Lvf;->q()V

    .line 7634
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 3359
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 3364
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 3369
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 3374
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 3379
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 3384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvf;->m:Z

    .line 3385
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 3399
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 3400
    return-void
.end method

.method public l()I
    .locals 1

    .prologue
    .line 3404
    iget v0, p0, Lvf;->b:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 3484
    iget v0, p0, Lvf;->o:I

    return v0
.end method

.method public n()Landroid/view/View;
    .locals 1

    .prologue
    .line 3577
    iget-object v0, p0, Lvf;->d:Landroid/view/View;

    return-object v0
.end method

.method public o()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 4696
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->m()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method p()V
    .locals 2

    .prologue
    .line 7346
    const/4 v0, 0x0

    .line 7347
    iget v1, p0, Lvf;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 7348
    iget v0, p0, Lvf;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 7349
    iget-object v0, p0, Lvf;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvf;->f:Landroid/graphics/drawable/Drawable;

    .line 7354
    :cond_0
    :goto_0
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 7355
    return-void

    .line 7349
    :cond_1
    iget-object v0, p0, Lvf;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 7351
    :cond_2
    iget-object v0, p0, Lvf;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method q()V
    .locals 2

    .prologue
    .line 7642
    iget v0, p0, Lvf;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 7643
    iget-object v0, p0, Lvf;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7644
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lvf;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->d(I)V

    .line 7649
    :cond_0
    :goto_0
    return-void

    .line 7646
    :cond_1
    iget-object v0, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lvf;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->d(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method r()V
    .locals 2

    .prologue
    .line 7652
    iget v0, p0, Lvf;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 7653
    iget-object v1, p0, Lvf;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lvf;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvf;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 7655
    :cond_0
    return-void

    .line 7653
    :cond_1
    iget-object v0, p0, Lvf;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
