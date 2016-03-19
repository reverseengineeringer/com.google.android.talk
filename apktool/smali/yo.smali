.class public final Lyo;
.super Lyu;
.source "SourceFile"


# static fields
.field static final a:I


# instance fields
.field b:Z

.field c:I

.field d:[I

.field e:[Landroid/view/View;

.field final f:Landroid/util/SparseIntArray;

.field final g:Landroid/util/SparseIntArray;

.field h:Lyr;

.field final i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lyo;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Lyu;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lyo;->b:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lyo;->c:I

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lyo;->f:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lyo;->g:Landroid/util/SparseIntArray;

    .line 62
    new-instance v0, Lyp;

    invoke-direct {v0}, Lyp;-><init>()V

    iput-object v0, p0, Lyo;->h:Lyr;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lyo;->i:Landroid/graphics/Rect;

    .line 1663
    iget v0, p0, Lyo;->c:I

    if-eq v1, v0, :cond_0

    .line 1666
    iput-boolean v1, p0, Lyo;->b:Z

    .line 1671
    iput v1, p0, Lyo;->c:I

    .line 1672
    iget-object v0, p0, Lyo;->h:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 90
    :cond_0
    return-void
.end method

.method private F()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p0}, Lyo;->k()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 269
    invoke-virtual {p0}, Lyo;->w()I

    move-result v0

    invoke-virtual {p0}, Lyo;->A()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lyo;->y()I

    move-result v3

    sub-int/2addr v0, v3

    .line 3277
    :goto_0
    iget-object v3, p0, Lyo;->d:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lyo;->d:[I

    array-length v3, v3

    iget v4, p0, Lyo;->c:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lyo;->d:[I

    iget-object v4, p0, Lyo;->d:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-eq v3, v0, :cond_1

    .line 3279
    :cond_0
    iget v3, p0, Lyo;->c:I

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lyo;->d:[I

    .line 3281
    :cond_1
    iget-object v3, p0, Lyo;->d:[I

    aput v2, v3, v2

    .line 3282
    iget v3, p0, Lyo;->c:I

    div-int v4, v0, v3

    .line 3283
    iget v3, p0, Lyo;->c:I

    rem-int v5, v0, v3

    move v0, v1

    move v1, v2

    .line 3286
    :goto_1
    iget v3, p0, Lyo;->c:I

    if-gt v0, v3, :cond_3

    .line 3288
    add-int v3, v1, v5

    .line 3289
    if-lez v3, :cond_4

    iget v1, p0, Lyo;->c:I

    sub-int/2addr v1, v3

    if-ge v1, v5, :cond_4

    .line 3290
    add-int/lit8 v1, v4, 0x1

    .line 3291
    iget v6, p0, Lyo;->c:I

    sub-int/2addr v3, v6

    move v7, v1

    move v1, v3

    move v3, v7

    .line 3293
    :goto_2
    add-int/2addr v2, v3

    .line 3294
    iget-object v3, p0, Lyo;->d:[I

    aput v2, v3, v0

    .line 3286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {p0}, Lyo;->x()I

    move-result v0

    invoke-virtual {p0}, Lyo;->B()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lyo;->z()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_0

    .line 274
    :cond_3
    return-void

    :cond_4
    move v1, v3

    move v3, v4

    goto :goto_2
.end method

.method private G()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lyo;->e:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyo;->e:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lyo;->c:I

    if-eq v0, v1, :cond_1

    .line 311
    :cond_0
    iget v0, p0, Lyo;->c:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lyo;->e:[Landroid/view/View;

    .line 313
    :cond_1
    return-void
.end method

.method private static a(III)I
    .locals 2

    .prologue
    .line 599
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 607
    :cond_0
    :goto_0
    return p0

    .line 602
    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 603
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 604
    :cond_2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private a(Laag;Laam;I)I
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p2}, Laam;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lyo;->h:Lyr;

    iget v1, p0, Lyo;->c:I

    invoke-virtual {v0, p3, v1}, Lyr;->c(II)I

    move-result v0

    .line 388
    :goto_0
    return v0

    .line 379
    :cond_0
    invoke-virtual {p1, p3}, Laag;->a(I)I

    move-result v0

    .line 380
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 386
    const/4 v0, 0x0

    goto :goto_0

    .line 388
    :cond_1
    iget-object v1, p0, Lyo;->h:Lyr;

    iget v2, p0, Lyo;->c:I

    invoke-virtual {v1, v0, v2}, Lyr;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Laag;Laam;IZ)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 614
    if-eqz p4, :cond_0

    move v1, v2

    move v0, v4

    .line 623
    :goto_0
    iget v5, p0, Lyo;->j:I

    if-ne v5, v2, :cond_1

    invoke-virtual {p0}, Lyo;->l()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 624
    iget v4, p0, Lyo;->c:I

    add-int/lit8 v4, v4, -0x1

    move v5, v4

    move v4, v3

    :goto_1
    move v6, v5

    move v5, v0

    .line 630
    :goto_2
    if-eq v5, p3, :cond_3

    .line 631
    iget-object v0, p0, Lyo;->e:[Landroid/view/View;

    aget-object v7, v0, v5

    .line 632
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyq;

    .line 633
    invoke-virtual {p0, v7}, Lyo;->d(Landroid/view/View;)I

    move-result v7

    invoke-direct {p0, p1, p2, v7}, Lyo;->c(Laag;Laam;I)I

    move-result v7

    .line 11872
    iput v7, v0, Lyq;->b:I

    .line 634
    if-ne v4, v3, :cond_2

    .line 12872
    iget v7, v0, Lyq;->b:I

    .line 634
    if-le v7, v2, :cond_2

    .line 13872
    iget v7, v0, Lyq;->b:I

    .line 635
    add-int/lit8 v7, v7, -0x1

    sub-int v7, v6, v7

    .line 14872
    iput v7, v0, Lyq;->a:I

    .line 16872
    :goto_3
    iget v0, v0, Lyq;->b:I

    .line 639
    mul-int/2addr v0, v4

    add-int/2addr v6, v0

    .line 630
    add-int v0, v5, v1

    move v5, v0

    goto :goto_2

    .line 619
    :cond_0
    add-int/lit8 v0, p3, -0x1

    move v1, v3

    move p3, v3

    .line 621
    goto :goto_0

    :cond_1
    move v5, v4

    move v4, v2

    .line 628
    goto :goto_1

    .line 15872
    :cond_2
    iput v6, v0, Lyq;->a:I

    goto :goto_3

    .line 641
    :cond_3
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 4

    .prologue
    .line 585
    iget-object v0, p0, Lyo;->i:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lyo;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 586
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 587
    if-nez p4, :cond_0

    iget v1, p0, Lyo;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 588
    :cond_0
    iget v1, v0, Laac;->leftMargin:I

    iget-object v2, p0, Lyo;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Laac;->rightMargin:I

    iget-object v3, p0, Lyo;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-static {p2, v1, v2}, Lyo;->a(III)I

    move-result p2

    .line 591
    :cond_1
    if-nez p4, :cond_2

    iget v1, p0, Lyo;->j:I

    if-nez v1, :cond_3

    .line 592
    :cond_2
    iget v1, v0, Laac;->topMargin:I

    iget-object v2, p0, Lyo;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Laac;->bottomMargin:I

    iget-object v2, p0, Lyo;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-static {p3, v1, v0}, Lyo;->a(III)I

    move-result p3

    .line 595
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 596
    return-void
.end method

.method private b(Laag;Laam;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 392
    invoke-virtual {p2}, Laam;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lyo;->h:Lyr;

    iget v1, p0, Lyo;->c:I

    invoke-virtual {v0, p3, v1}, Lyr;->b(II)I

    move-result v0

    .line 409
    :cond_0
    :goto_0
    return v0

    .line 395
    :cond_1
    iget-object v0, p0, Lyo;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 396
    if-ne v0, v1, :cond_0

    .line 399
    invoke-virtual {p1, p3}, Laag;->a(I)I

    move-result v0

    .line 400
    if-ne v0, v1, :cond_2

    .line 407
    const/4 v0, 0x0

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p0, Lyo;->h:Lyr;

    iget v2, p0, Lyo;->c:I

    invoke-virtual {v1, v0, v2}, Lyr;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private c(Laag;Laam;I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 413
    invoke-virtual {p2}, Laam;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v0

    .line 416
    :cond_1
    iget-object v1, p0, Lyo;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 417
    if-eq v1, v2, :cond_2

    move v0, v1

    .line 418
    goto :goto_0

    .line 420
    :cond_2
    invoke-virtual {p1, p3}, Laag;->a(I)I

    move-result v1

    .line 421
    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method private static k(I)I
    .locals 1

    .prologue
    .line 576
    if-gez p0, :cond_0

    .line 577
    sget v0, Lyo;->a:I

    .line 579
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(ILaag;Laam;)I
    .locals 1

    .prologue
    .line 318
    invoke-direct {p0}, Lyo;->F()V

    .line 319
    invoke-direct {p0}, Lyo;->G()V

    .line 320
    invoke-super {p0, p1, p2, p3}, Lyu;->a(ILaag;Laam;)I

    move-result v0

    return v0
.end method

.method public a(Laag;Laam;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lyo;->j:I

    if-nez v0, :cond_0

    .line 123
    iget v0, p0, Lyo;->c:I

    .line 128
    :goto_0
    return v0

    .line 125
    :cond_0
    invoke-virtual {p2}, Laam;->d()I

    move-result v0

    if-gtz v0, :cond_1

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p2}, Laam;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lyo;->a(Laag;Laam;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Laac;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lyq;

    invoke-direct {v0, p1, p2}, Lyq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Laac;
    .locals 1

    .prologue
    .line 235
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Lyq;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lyq;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 238
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lyq;

    invoke-direct {v0, p1}, Lyq;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method a(Laag;Laam;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 343
    invoke-virtual {p0}, Lyo;->m()V

    .line 346
    iget-object v0, p0, Lyo;->k:Lzo;

    invoke-virtual {v0}, Lzo;->c()I

    move-result v5

    .line 347
    iget-object v0, p0, Lyo;->k:Lzo;

    invoke-virtual {v0}, Lzo;->d()I

    move-result v6

    .line 348
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 349
    :goto_1
    if-eq p3, p4, :cond_3

    .line 350
    invoke-virtual {p0, p3}, Lyo;->f(I)Landroid/view/View;

    move-result-object v3

    .line 351
    invoke-virtual {p0, v3}, Lyo;->d(Landroid/view/View;)I

    move-result v0

    .line 352
    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    .line 353
    invoke-direct {p0, p1, p2, v0}, Lyo;->b(Laag;Laam;I)I

    move-result v0

    .line 354
    if-nez v0, :cond_6

    .line 357
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    invoke-virtual {v0}, Laac;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    if-nez v4, :cond_6

    move-object v0, v2

    .line 349
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 348
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lyo;->k:Lzo;

    invoke-virtual {v0, v3}, Lzo;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Lyo;->k:Lzo;

    invoke-virtual {v0, v3}, Lzo;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 363
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 364
    goto :goto_2

    .line 371
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lyo;->h:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 199
    return-void
.end method

.method public a(Laag;Laam;Landroid/view/View;Lmy;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 147
    instance-of v3, v0, Lyq;

    if-nez v3, :cond_0

    .line 148
    invoke-super {p0, p3, p4}, Lyu;->a(Landroid/view/View;Lmy;)V

    .line 164
    :goto_0
    return-void

    .line 151
    :cond_0
    check-cast v0, Lyq;

    .line 152
    invoke-virtual {v0}, Lyq;->e()I

    move-result v3

    invoke-direct {p0, p1, p2, v3}, Lyo;->a(Laag;Laam;I)I

    move-result v3

    .line 153
    iget v4, p0, Lyo;->j:I

    if-nez v4, :cond_2

    .line 154
    invoke-virtual {v0}, Lyq;->a()I

    move-result v4

    invoke-virtual {v0}, Lyq;->b()I

    move-result v5

    iget v6, p0, Lyo;->c:I

    if-le v6, v1, :cond_1

    invoke-virtual {v0}, Lyq;->b()I

    move-result v0

    iget v6, p0, Lyo;->c:I

    if-ne v0, v6, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v4, v5, v3, v1, v0}, Lnh;->a(IIIIZ)Lnh;

    move-result-object v0

    invoke-virtual {p4, v0}, Lmy;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {v0}, Lyq;->a()I

    move-result v4

    invoke-virtual {v0}, Lyq;->b()I

    move-result v5

    iget v6, p0, Lyo;->c:I

    if-le v6, v1, :cond_3

    invoke-virtual {v0}, Lyq;->b()I

    move-result v0

    iget v6, p0, Lyo;->c:I

    if-ne v0, v6, :cond_3

    move v2, v1

    :cond_3
    invoke-static {v3, v1, v4, v5, v2}, Lnh;->a(IIIIZ)Lnh;

    move-result-object v0

    invoke-virtual {p4, v0}, Lmy;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Laag;Laam;Lyv;)V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3}, Lyu;->a(Laag;Laam;Lyv;)V

    .line 302
    invoke-direct {p0}, Lyo;->F()V

    .line 303
    invoke-virtual {p2}, Laam;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Laam;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3333
    iget v0, p3, Lyv;->a:I

    invoke-direct {p0, p1, p2, v0}, Lyo;->b(Laag;Laam;I)I

    move-result v0

    .line 3334
    :goto_0
    if-lez v0, :cond_0

    iget v0, p3, Lyv;->a:I

    if-lez v0, :cond_0

    .line 3335
    iget v0, p3, Lyv;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lyv;->a:I

    .line 3336
    iget v0, p3, Lyv;->a:I

    invoke-direct {p0, p1, p2, v0}, Lyo;->b(Laag;Laam;I)I

    move-result v0

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {p0}, Lyo;->G()V

    .line 307
    return-void
.end method

.method a(Laag;Laam;Lyx;Lyw;)V
    .locals 17

    .prologue
    .line 436
    move-object/from16 v0, p3

    iget v3, v0, Lyx;->e:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v4, v3

    .line 438
    :goto_0
    const/4 v5, 0x0

    .line 440
    move-object/from16 v0, p0

    iget v3, v0, Lyo;->c:I

    .line 441
    if-nez v4, :cond_14

    .line 442
    move-object/from16 v0, p3

    iget v3, v0, Lyx;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lyo;->b(Laag;Laam;I)I

    move-result v3

    .line 443
    move-object/from16 v0, p3

    iget v6, v0, Lyx;->d:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v6}, Lyo;->c(Laag;Laam;I)I

    move-result v6

    .line 444
    add-int/2addr v3, v6

    move v10, v5

    .line 446
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lyo;->c:I

    if-ge v10, v5, :cond_2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lyx;->a(Laam;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-lez v3, :cond_2

    .line 447
    move-object/from16 v0, p3

    iget v5, v0, Lyx;->d:I

    .line 448
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lyo;->c(Laag;Laam;I)I

    move-result v6

    .line 449
    move-object/from16 v0, p0

    iget v7, v0, Lyo;->c:I

    if-le v6, v7, :cond_1

    .line 450
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Item at position "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spans but GridLayoutManager has only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lyo;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spans."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    :cond_0
    const/4 v3, 0x0

    move v4, v3

    goto :goto_0

    .line 454
    :cond_1
    sub-int/2addr v3, v6

    .line 455
    if-ltz v3, :cond_2

    .line 458
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lyx;->a(Laag;)Landroid/view/View;

    move-result-object v5

    .line 459
    if-eqz v5, :cond_2

    .line 463
    move-object/from16 v0, p0

    iget-object v6, v0, Lyo;->e:[Landroid/view/View;

    aput-object v5, v6, v10

    .line 464
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    .line 465
    goto :goto_1

    .line 467
    :cond_2
    if-nez v10, :cond_3

    .line 468
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Lyw;->b:Z

    .line 573
    :goto_2
    return-void

    .line 472
    :cond_3
    const/4 v5, 0x0

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10, v4}, Lyo;->a(Laag;Laam;IZ)V

    .line 476
    const/4 v3, 0x0

    move v6, v3

    :goto_3
    if-ge v6, v10, :cond_8

    .line 477
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->e:[Landroid/view/View;

    aget-object v7, v3, v6

    .line 478
    move-object/from16 v0, p3

    iget-object v3, v0, Lyx;->k:Ljava/util/List;

    if-nez v3, :cond_5

    .line 479
    if-eqz v4, :cond_4

    .line 480
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lyo;->b(Landroid/view/View;)V

    .line 492
    :goto_4
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lyq;

    .line 493
    move-object/from16 v0, p0

    iget-object v8, v0, Lyo;->d:[I

    .line 3872
    iget v9, v3, Lyq;->a:I

    .line 4872
    iget v11, v3, Lyq;->b:I

    .line 493
    add-int/2addr v9, v11

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lyo;->d:[I

    .line 5872
    iget v11, v3, Lyq;->a:I

    .line 493
    aget v9, v9, v11

    sub-int/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 497
    move-object/from16 v0, p0

    iget v9, v0, Lyo;->j:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_7

    .line 498
    iget v3, v3, Lyq;->height:I

    invoke-static {v3}, Lyo;->k(I)I

    move-result v3

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v3, v9}, Lyo;->a(Landroid/view/View;IIZ)V

    .line 502
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->k:Lzo;

    invoke-virtual {v3, v7}, Lzo;->c(Landroid/view/View;)I

    move-result v3

    .line 503
    if-le v3, v5, :cond_13

    .line 476
    :goto_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v3

    goto :goto_3

    .line 482
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lyo;->b(Landroid/view/View;I)V

    goto :goto_4

    .line 485
    :cond_5
    if-eqz v4, :cond_6

    .line 486
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lyo;->a(Landroid/view/View;)V

    goto :goto_4

    .line 488
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3}, Lyo;->a(Landroid/view/View;I)V

    goto :goto_4

    .line 500
    :cond_7
    iget v3, v3, Lyq;->width:I

    invoke-static {v3}, Lyo;->k(I)I

    move-result v3

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v8, v9}, Lyo;->a(Landroid/view/View;IIZ)V

    goto :goto_5

    .line 509
    :cond_8
    invoke-static {v5}, Lyo;->k(I)I

    move-result v6

    .line 510
    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v10, :cond_b

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->e:[Landroid/view/View;

    aget-object v7, v3, v4

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->k:Lzo;

    invoke-virtual {v3, v7}, Lzo;->c(Landroid/view/View;)I

    move-result v3

    if-eq v3, v5, :cond_9

    .line 513
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lyq;

    .line 514
    move-object/from16 v0, p0

    iget-object v8, v0, Lyo;->d:[I

    .line 6872
    iget v9, v3, Lyq;->a:I

    .line 7872
    iget v11, v3, Lyq;->b:I

    .line 514
    add-int/2addr v9, v11

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lyo;->d:[I

    .line 8872
    iget v3, v3, Lyq;->a:I

    .line 514
    aget v3, v9, v3

    sub-int v3, v8, v3

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 518
    move-object/from16 v0, p0

    iget v8, v0, Lyo;->j:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 519
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3, v6, v8}, Lyo;->a(Landroid/view/View;IIZ)V

    .line 510
    :cond_9
    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_7

    .line 521
    :cond_a
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v3, v8}, Lyo;->a(Landroid/view/View;IIZ)V

    goto :goto_8

    .line 526
    :cond_b
    move-object/from16 v0, p4

    iput v5, v0, Lyw;->a:I

    .line 528
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 529
    move-object/from16 v0, p0

    iget v8, v0, Lyo;->j:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 530
    move-object/from16 v0, p3

    iget v3, v0, Lyx;->f:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    .line 531
    move-object/from16 v0, p3

    iget v3, v0, Lyx;->b:I

    .line 532
    sub-int v4, v3, v5

    move v5, v6

    move v6, v7

    .line 546
    :goto_9
    const/4 v7, 0x0

    move v15, v7

    move v8, v6

    move v6, v4

    move v7, v5

    move v5, v3

    :goto_a
    if-ge v15, v10, :cond_12

    .line 547
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->e:[Landroid/view/View;

    aget-object v4, v3, v15

    .line 548
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyq;

    .line 549
    move-object/from16 v0, p0

    iget v3, v0, Lyo;->j:I

    const/4 v11, 0x1

    if-ne v3, v11, :cond_11

    .line 550
    invoke-virtual/range {p0 .. p0}, Lyo;->y()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lyo;->d:[I

    .line 9872
    iget v8, v9, Lyq;->a:I

    .line 550
    aget v7, v7, v8

    add-int/2addr v7, v3

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->k:Lzo;

    invoke-virtual {v3, v4}, Lzo;->d(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v7

    move v11, v5

    move v12, v6

    move v13, v3

    move v14, v7

    .line 558
    :goto_b
    iget v3, v9, Lyq;->leftMargin:I

    add-int v5, v14, v3

    iget v3, v9, Lyq;->topMargin:I

    add-int v6, v12, v3

    iget v3, v9, Lyq;->rightMargin:I

    sub-int v7, v13, v3

    iget v3, v9, Lyq;->bottomMargin:I

    sub-int v8, v11, v3

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lyo;->a(Landroid/view/View;IIII)V

    .line 567
    invoke-virtual {v9}, Lyq;->c()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v9}, Lyq;->d()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 568
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p4

    iput-boolean v3, v0, Lyw;->c:Z

    .line 570
    :cond_d
    move-object/from16 v0, p4

    iget-boolean v3, v0, Lyw;->d:Z

    invoke-virtual {v4}, Landroid/view/View;->isFocusable()Z

    move-result v4

    or-int/2addr v3, v4

    move-object/from16 v0, p4

    iput-boolean v3, v0, Lyw;->d:Z

    .line 546
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    goto :goto_a

    .line 534
    :cond_e
    move-object/from16 v0, p3

    iget v4, v0, Lyx;->b:I

    .line 535
    add-int v3, v4, v5

    move v5, v6

    move v6, v7

    goto :goto_9

    .line 538
    :cond_f
    move-object/from16 v0, p3

    iget v6, v0, Lyx;->f:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_10

    .line 539
    move-object/from16 v0, p3

    iget v6, v0, Lyx;->b:I

    .line 540
    sub-int v5, v6, v5

    move/from16 v16, v6

    move v6, v5

    move/from16 v5, v16

    goto/16 :goto_9

    .line 542
    :cond_10
    move-object/from16 v0, p3

    iget v6, v0, Lyx;->b:I

    .line 543
    add-int/2addr v5, v6

    goto/16 :goto_9

    .line 553
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lyo;->z()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lyo;->d:[I

    .line 10872
    iget v6, v9, Lyq;->a:I

    .line 553
    aget v5, v5, v6

    add-int/2addr v5, v3

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->k:Lzo;

    invoke-virtual {v3, v4}, Lzo;->d(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v5

    move v11, v3

    move v12, v5

    move v13, v7

    move v14, v8

    goto :goto_b

    .line 572
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lyo;->e:[Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_13
    move v3, v5

    goto/16 :goto_6

    :cond_14
    move v10, v5

    goto/16 :goto_1
.end method

.method public a(Laac;)Z
    .locals 1

    .prologue
    .line 244
    instance-of v0, p1, Lyq;

    return v0
.end method

.method public b(ILaag;Laam;)I
    .locals 1

    .prologue
    .line 326
    invoke-direct {p0}, Lyo;->F()V

    .line 327
    invoke-direct {p0}, Lyo;->G()V

    .line 328
    invoke-super {p0, p1, p2, p3}, Lyu;->b(ILaag;Laam;)I

    move-result v0

    return v0
.end method

.method public b(Laag;Laam;)I
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lyo;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    iget v0, p0, Lyo;->c:I

    .line 140
    :goto_0
    return v0

    .line 137
    :cond_0
    invoke-virtual {p2}, Laam;->d()I

    move-result v0

    if-gtz v0, :cond_1

    .line 138
    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p2}, Laam;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lyo;->a(Laag;Laam;I)I

    move-result v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lyo;->h:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 204
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lyo;->h:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 209
    return-void
.end method

.method public c(Laag;Laam;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p2}, Laam;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2187
    invoke-virtual {p0}, Lyo;->v()I

    move-result v3

    move v1, v2

    .line 2188
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2189
    invoke-virtual {p0, v1}, Lyo;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyq;

    .line 2190
    invoke-virtual {v0}, Lyq;->e()I

    move-result v4

    .line 2191
    iget-object v5, p0, Lyo;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lyq;->b()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    iget-object v5, p0, Lyo;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Lyq;->a()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 171
    :cond_0
    invoke-super {p0, p1, p2}, Lyu;->c(Laag;Laam;)V

    .line 3182
    iget-object v0, p0, Lyo;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3183
    iget-object v0, p0, Lyo;->g:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 176
    invoke-virtual {p2}, Laam;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iput-boolean v2, p0, Lyo;->b:Z

    .line 179
    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lyo;->h:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 215
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lyo;->h:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 220
    return-void
.end method

.method public f()Laac;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lyq;

    invoke-direct {v0}, Lyq;-><init>()V

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lyo;->o:Lyy;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lyo;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
