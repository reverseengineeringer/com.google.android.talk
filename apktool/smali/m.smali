.class public final Lm;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field a:Laen;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field final i:Landroid/graphics/Rect;

.field j:Ljava/lang/Object;

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    const/4 v0, 0x0

    .line 2214
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2174
    iput-boolean v0, p0, Lm;->b:Z

    .line 2181
    iput v0, p0, Lm;->c:I

    .line 2187
    iput v0, p0, Lm;->d:I

    .line 2194
    iput v2, p0, Lm;->e:I

    .line 2200
    iput v2, p0, Lm;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm;->i:Landroid/graphics/Rect;

    .line 2215
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2218
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2174
    iput-boolean v2, p0, Lm;->b:Z

    .line 2181
    iput v2, p0, Lm;->c:I

    .line 2187
    iput v2, p0, Lm;->d:I

    .line 2194
    iput v3, p0, Lm;->e:I

    .line 2200
    iput v3, p0, Lm;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm;->i:Landroid/graphics/Rect;

    .line 2220
    sget-object v0, Lh;->s:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2223
    sget v1, Lh;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lm;->c:I

    .line 2226
    sget v1, Lh;->u:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lm;->f:I

    .line 2228
    sget v1, Lh;->v:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lm;->d:I

    .line 2232
    sget v1, Lh;->x:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lm;->e:I

    .line 2235
    sget v1, Lh;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Lm;->b:Z

    .line 2237
    iget-boolean v1, p0, Lm;->b:Z

    if-eqz v1, :cond_0

    .line 2238
    sget v1, Lh;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lk;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Laen;

    move-result-object v1

    iput-object v1, p0, Lm;->a:Laen;

    .line 2242
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2243
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2254
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Lm;->b:Z

    .line 2181
    iput v0, p0, Lm;->c:I

    .line 2187
    iput v0, p0, Lm;->d:I

    .line 2194
    iput v1, p0, Lm;->e:I

    .line 2200
    iput v1, p0, Lm;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm;->i:Landroid/graphics/Rect;

    .line 2255
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2250
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Lm;->b:Z

    .line 2181
    iput v0, p0, Lm;->c:I

    .line 2187
    iput v0, p0, Lm;->d:I

    .line 2194
    iput v1, p0, Lm;->e:I

    .line 2200
    iput v1, p0, Lm;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm;->i:Landroid/graphics/Rect;

    .line 2251
    return-void
.end method

.method public constructor <init>(Lm;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2246
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    iput-boolean v0, p0, Lm;->b:Z

    .line 2181
    iput v0, p0, Lm;->c:I

    .line 2187
    iput v0, p0, Lm;->d:I

    .line 2194
    iput v1, p0, Lm;->e:I

    .line 2200
    iput v1, p0, Lm;->f:I

    .line 2209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm;->i:Landroid/graphics/Rect;

    .line 2247
    return-void
.end method


# virtual methods
.method public a()Laen;
    .locals 1

    .prologue
    .line 2288
    iget-object v0, p0, Lm;->a:Laen;

    return-object v0
.end method

.method public a(Laen;)V
    .locals 1

    .prologue
    .line 2301
    iget-object v0, p0, Lm;->a:Laen;

    if-eq v0, p1, :cond_0

    .line 2302
    iput-object p1, p0, Lm;->a:Laen;

    .line 2303
    const/4 v0, 0x0

    iput-object v0, p0, Lm;->j:Ljava/lang/Object;

    .line 2304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm;->b:Z

    .line 2306
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2313
    iget-object v0, p0, Lm;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2314
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 2383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm;->l:Z

    .line 2384
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lm;->h:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lm;->a:Laen;

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Lk;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2358
    iget-boolean v0, p0, Lm;->k:Z

    if-eqz v0, :cond_0

    .line 2359
    const/4 v0, 0x1

    .line 2362
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lm;->k:Z

    iget-object v1, p0, Lm;->a:Laen;

    iput-boolean v0, p0, Lm;->k:Z

    goto :goto_0
.end method

.method b()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2321
    iget-object v0, p0, Lm;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method b(Lk;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2435
    iget v0, p0, Lm;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2436
    iput-object v2, p0, Lm;->h:Landroid/view/View;

    iput-object v2, p0, Lm;->g:Landroid/view/View;

    move-object v0, v2

    .line 2443
    :goto_0
    return-object v0

    .line 2440
    :cond_0
    iget-object v0, p0, Lm;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3501
    iget-object v0, p0, Lm;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Lm;->f:I

    if-eq v0, v1, :cond_3

    move v0, v3

    .line 2440
    :goto_1
    if-nez v0, :cond_2

    .line 4465
    :cond_1
    iget v0, p0, Lm;->f:I

    invoke-virtual {p1, v0}, Lk;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lm;->g:Landroid/view/View;

    .line 4466
    iget-object v0, p0, Lm;->g:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 4467
    iget-object v0, p0, Lm;->g:Landroid/view/View;

    .line 4468
    iget-object v1, p0, Lm;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4469
    :goto_2
    if-eq v1, p1, :cond_b

    if-eqz v1, :cond_b

    .line 4471
    if-ne v1, p2, :cond_9

    .line 4472
    invoke-virtual {p1}, Lk;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4473
    iput-object v2, p0, Lm;->h:Landroid/view/View;

    iput-object v2, p0, Lm;->g:Landroid/view/View;

    .line 2443
    :cond_2
    :goto_3
    iget-object v0, p0, Lm;->g:Landroid/view/View;

    goto :goto_0

    .line 3505
    :cond_3
    iget-object v0, p0, Lm;->g:Landroid/view/View;

    .line 3506
    iget-object v1, p0, Lm;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3507
    :goto_4
    if-eq v1, p1, :cond_7

    .line 3509
    if-eqz v1, :cond_4

    if-ne v1, p2, :cond_5

    .line 3510
    :cond_4
    iput-object v2, p0, Lm;->h:Landroid/view/View;

    iput-object v2, p0, Lm;->g:Landroid/view/View;

    move v0, v3

    .line 3511
    goto :goto_1

    .line 3513
    :cond_5
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_6

    move-object v0, v1

    .line 3514
    check-cast v0, Landroid/view/View;

    .line 3508
    :cond_6
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_4

    .line 3517
    :cond_7
    iput-object v0, p0, Lm;->h:Landroid/view/View;

    .line 3518
    const/4 v0, 0x1

    goto :goto_1

    .line 4476
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4479
    :cond_9
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_a

    move-object v0, v1

    .line 4480
    check-cast v0, Landroid/view/View;

    .line 4470
    :cond_a
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_2

    .line 4483
    :cond_b
    iput-object v0, p0, Lm;->h:Landroid/view/View;

    goto :goto_3

    .line 4485
    :cond_c
    invoke-virtual {p1}, Lk;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4486
    iput-object v2, p0, Lm;->h:Landroid/view/View;

    iput-object v2, p0, Lm;->g:Landroid/view/View;

    goto :goto_3

    .line 4489
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lk;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lm;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 2329
    iget-object v0, p0, Lm;->g:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lm;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lm;->a:Laen;

    if-nez v0, :cond_0

    .line 2341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm;->k:Z

    .line 2343
    :cond_0
    iget-boolean v0, p0, Lm;->k:Z

    return v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 2375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm;->k:Z

    .line 2376
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 2379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm;->l:Z

    .line 2380
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 2387
    iget-boolean v0, p0, Lm;->l:Z

    return v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 2399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lm;->m:Z

    .line 2400
    return-void
.end method
