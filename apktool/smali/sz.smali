.class final Lsz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Liq;

.field final synthetic b:Lsx;

.field private c:Landroid/view/Menu;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Ljava/lang/CharSequence;

.field private n:Ljava/lang/CharSequence;

.field private o:I

.field private p:C

.field private q:C

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsx;Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lsz;->b:Lsx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p2, p0, Lsz;->c:Landroid/view/Menu;

    .line 332
    invoke-virtual {p0}, Lsz;->a()V

    .line 333
    return-void
.end method

.method private static a(Ljava/lang/String;)C
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 417
    if-nez p0, :cond_0

    .line 420
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 497
    :try_start_0
    iget-object v0, p0, Lsz;->b:Lsx;

    .line 9058
    iget-object v0, v0, Lsx;->e:Landroid/content/Context;

    .line 497
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 500
    invoke-virtual {v0, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 504
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/MenuItem;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 425
    iget-boolean v0, p0, Lsz;->s:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lsz;->t:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lsz;->u:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lsz;->r:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lsz;->n:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lsz;->o:I

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Lsz;->p:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v3, p0, Lsz;->q:C

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 434
    iget v0, p0, Lsz;->v:I

    if-ltz v0, :cond_0

    .line 435
    iget v0, p0, Lsz;->v:I

    invoke-static {p1, v0}, Ljr;->a(Landroid/view/MenuItem;I)V

    .line 438
    :cond_0
    iget-object v0, p0, Lsz;->z:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 439
    iget-object v0, p0, Lsz;->b:Lsx;

    .line 5058
    iget-object v0, v0, Lsx;->e:Landroid/content/Context;

    .line 439
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 425
    goto :goto_0

    .line 443
    :cond_2
    new-instance v0, Lsy;

    iget-object v3, p0, Lsz;->b:Lsx;

    .line 6213
    iget-object v4, v3, Lsx;->f:Ljava/lang/Object;

    if-nez v4, :cond_3

    .line 6214
    iget-object v4, v3, Lsx;->e:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lsx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v3, Lsx;->f:Ljava/lang/Object;

    .line 6216
    :cond_3
    iget-object v3, v3, Lsx;->f:Ljava/lang/Object;

    .line 443
    iget-object v4, p0, Lsz;->z:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lsy;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 448
    :cond_4
    iget v0, p0, Lsz;->r:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    .line 449
    instance-of v0, p1, Ltp;

    if-eqz v0, :cond_8

    move-object v0, p1

    .line 450
    check-cast v0, Ltp;

    invoke-virtual {v0, v1}, Ltp;->a(Z)V

    .line 457
    :cond_5
    :goto_1
    iget-object v0, p0, Lsz;->x:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 458
    iget-object v0, p0, Lsz;->x:Ljava/lang/String;

    .line 7058
    sget-object v2, Lsx;->a:[Ljava/lang/Class;

    .line 458
    iget-object v3, p0, Lsz;->b:Lsx;

    .line 8058
    iget-object v3, v3, Lsx;->c:[Ljava/lang/Object;

    .line 458
    invoke-direct {p0, v0, v2, v3}, Lsz;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 460
    invoke-static {p1, v0}, Ljr;->a(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 463
    :goto_2
    iget v0, p0, Lsz;->w:I

    if-lez v0, :cond_6

    .line 464
    if-nez v1, :cond_6

    .line 465
    iget v0, p0, Lsz;->w:I

    invoke-static {p1, v0}, Ljr;->b(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 472
    :cond_6
    iget-object v0, p0, Lsz;->a:Liq;

    if-eqz v0, :cond_7

    .line 473
    iget-object v0, p0, Lsz;->a:Liq;

    invoke-static {p1, v0}, Ljr;->a(Landroid/view/MenuItem;Liq;)Landroid/view/MenuItem;

    .line 475
    :cond_7
    return-void

    .line 451
    :cond_8
    instance-of v0, p1, Ltq;

    if-eqz v0, :cond_5

    move-object v0, p1

    .line 452
    check-cast v0, Ltq;

    invoke-virtual {v0}, Ltq;->a()V

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 336
    iput v0, p0, Lsz;->d:I

    .line 337
    iput v0, p0, Lsz;->e:I

    .line 338
    iput v0, p0, Lsz;->f:I

    .line 339
    iput v0, p0, Lsz;->g:I

    .line 340
    iput-boolean v1, p0, Lsz;->h:Z

    .line 341
    iput-boolean v1, p0, Lsz;->i:Z

    .line 342
    return-void
.end method

.method public a(Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lsz;->b:Lsx;

    .line 1058
    iget-object v0, v0, Lsx;->e:Landroid/content/Context;

    .line 348
    sget-object v1, Lsb;->aN:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 350
    sget v1, Lsb;->aQ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lsz;->d:I

    .line 351
    sget v1, Lsb;->aR:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lsz;->e:I

    .line 353
    sget v1, Lsb;->aS:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lsz;->f:I

    .line 354
    sget v1, Lsb;->aO:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lsz;->g:I

    .line 356
    sget v1, Lsb;->aT:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lsz;->h:Z

    .line 357
    sget v1, Lsb;->aP:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lsz;->i:Z

    .line 359
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 360
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 478
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsz;->j:Z

    .line 479
    iget-object v0, p0, Lsz;->c:Landroid/view/Menu;

    iget v1, p0, Lsz;->d:I

    iget v2, p0, Lsz;->k:I

    iget v3, p0, Lsz;->l:I

    iget-object v4, p0, Lsz;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lsz;->a(Landroid/view/MenuItem;)V

    .line 480
    return-void
.end method

.method public b(Landroid/util/AttributeSet;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 366
    iget-object v0, p0, Lsz;->b:Lsx;

    .line 2058
    iget-object v0, v0, Lsx;->e:Landroid/content/Context;

    .line 366
    sget-object v3, Lsb;->aU:[I

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 369
    sget v0, Lsb;->bd:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lsz;->k:I

    .line 370
    sget v0, Lsb;->be:I

    iget v4, p0, Lsz;->e:I

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 371
    sget v4, Lsb;->bh:I

    iget v5, p0, Lsz;->f:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 372
    const/high16 v5, -0x10000

    and-int/2addr v0, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    or-int/2addr v0, v4

    iput v0, p0, Lsz;->l:I

    .line 374
    sget v0, Lsb;->bi:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lsz;->m:Ljava/lang/CharSequence;

    .line 375
    sget v0, Lsb;->bj:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lsz;->n:Ljava/lang/CharSequence;

    .line 376
    sget v0, Lsb;->bc:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lsz;->o:I

    .line 377
    sget v0, Lsb;->aY:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsz;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lsz;->p:C

    .line 379
    sget v0, Lsb;->bf:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsz;->a(Ljava/lang/String;)C

    move-result v0

    iput-char v0, p0, Lsz;->q:C

    .line 381
    sget v0, Lsb;->aZ:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    sget v0, Lsb;->aZ:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lsz;->r:I

    .line 389
    :goto_1
    sget v0, Lsb;->ba:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lsz;->s:Z

    .line 390
    sget v0, Lsb;->bk:I

    iget-boolean v4, p0, Lsz;->h:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lsz;->t:Z

    .line 391
    sget v0, Lsb;->bb:I

    iget-boolean v4, p0, Lsz;->i:Z

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lsz;->u:Z

    .line 392
    sget v0, Lsb;->bl:I

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lsz;->v:I

    .line 393
    sget v0, Lsb;->bg:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsz;->z:Ljava/lang/String;

    .line 394
    sget v0, Lsb;->aV:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lsz;->w:I

    .line 395
    sget v0, Lsb;->aX:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsz;->x:Ljava/lang/String;

    .line 396
    sget v0, Lsb;->aW:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsz;->y:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lsz;->y:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 399
    :goto_2
    if-eqz v1, :cond_3

    iget v0, p0, Lsz;->w:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lsz;->x:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 400
    iget-object v0, p0, Lsz;->y:Ljava/lang/String;

    .line 3058
    sget-object v1, Lsx;->b:[Ljava/lang/Class;

    .line 400
    iget-object v4, p0, Lsz;->b:Lsx;

    .line 4058
    iget-object v4, v4, Lsx;->d:[Ljava/lang/Object;

    .line 400
    invoke-direct {p0, v0, v1, v4}, Lsz;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liq;

    iput-object v0, p0, Lsz;->a:Liq;

    .line 411
    :goto_3
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 413
    iput-boolean v2, p0, Lsz;->j:Z

    .line 414
    return-void

    :cond_0
    move v0, v2

    .line 383
    goto :goto_0

    .line 387
    :cond_1
    iget v0, p0, Lsz;->g:I

    iput v0, p0, Lsz;->r:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 398
    goto :goto_2

    .line 408
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lsz;->a:Liq;

    goto :goto_3
.end method

.method public c()Landroid/view/SubMenu;
    .locals 5

    .prologue
    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsz;->j:Z

    .line 484
    iget-object v0, p0, Lsz;->c:Landroid/view/Menu;

    iget v1, p0, Lsz;->d:I

    iget v2, p0, Lsz;->k:I

    iget v3, p0, Lsz;->l:I

    iget-object v4, p0, Lsz;->m:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lsz;->a(Landroid/view/MenuItem;)V

    .line 486
    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lsz;->j:Z

    return v0
.end method
