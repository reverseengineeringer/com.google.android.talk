.class public final Lsh;
.super Lqe;
.source "SourceFile"


# instance fields
.field a:Lvf;

.field b:Z

.field public c:Landroid/view/Window$Callback;

.field d:Ltj;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lqg;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private final i:Labd;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lqe;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsh;->g:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Lsi;

    invoke-direct {v0, p0}, Lsi;-><init>(Lsh;)V

    iput-object v0, p0, Lsh;->h:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Labd;

    invoke-direct {v0, p0}, Labd;-><init>(Lsh;)V

    iput-object v0, p0, Lsh;->i:Labd;

    .line 78
    new-instance v0, Lvf;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvf;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Lsh;->a:Lvf;

    .line 79
    new-instance v0, Lsm;

    invoke-direct {v0, p0, p3}, Lsm;-><init>(Lsh;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lsh;->c:Landroid/view/Window$Callback;

    .line 80
    iget-object v0, p0, Lsh;->a:Lvf;

    iget-object v1, p0, Lsh;->c:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Lvf;->a(Landroid/view/Window$Callback;)V

    .line 81
    iget-object v0, p0, Lsh;->i:Labd;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->a(Labd;)V

    .line 82
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p2}, Lvf;->a(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->l()I

    move-result v0

    .line 258
    iget-object v1, p0, Lsh;->a:Lvf;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lvf;->a(I)V

    .line 259
    return-void
.end method

.method private m()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 578
    iget-boolean v0, p0, Lsh;->e:Z

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lsh;->a:Lvf;

    new-instance v1, Lsj;

    .line 1586
    invoke-direct {v1, p0}, Lsj;-><init>(Lsh;)V

    .line 579
    new-instance v2, Lsk;

    .line 1630
    invoke-direct {v2, p0}, Lsk;-><init>(Lsh;)V

    .line 579
    invoke-virtual {v0, v1, v2}, Lvf;->a(Lua;Ltm;)V

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsh;->e:Z

    .line 583
    :cond_0
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->o()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 278
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lsh;->a(II)V

    .line 279
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p1}, Lks;->f(Landroid/view/View;F)V

    .line 146
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 232
    iget-object v1, p0, Lsh;->a:Lvf;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lvf;->b(Ljava/lang/CharSequence;)V

    .line 233
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0, p1}, Lqe;->a(Landroid/content/res/Configuration;)V

    .line 196
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->a(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 91
    new-instance v0, Lqf;

    invoke-direct {v0, v1, v1}, Lqf;-><init>(II)V

    .line 1096
    if-eqz p1, :cond_0

    .line 1097
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->a(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->b(Ljava/lang/CharSequence;)V

    .line 228
    return-void
.end method

.method public a(Lqg;)V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lsh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 273
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lsh;->a(II)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 469
    invoke-direct {p0}, Lsh;->m()Landroid/view/Menu;

    move-result-object v3

    .line 470
    if-eqz v3, :cond_0

    .line 471
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    if-eq v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 474
    invoke-interface {v3, p1, p2, v2}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 479
    :cond_0
    return v1

    .line 471
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 473
    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 283
    invoke-direct {p0, v0, v0}, Lsh;->a(II)V

    .line 284
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->b(I)V

    .line 171
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->c(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->n()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->c(I)V

    .line 186
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0, p1}, Lvf;->a(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 191
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->l()I

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 3

    .prologue
    .line 491
    iget-boolean v0, p0, Lsh;->f:Z

    if-ne p1, v0, :cond_1

    .line 500
    :cond_0
    return-void

    .line 494
    :cond_1
    iput-boolean p1, p0, Lsh;->f:Z

    .line 496
    iget-object v0, p0, Lsh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 497
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 498
    iget-object v0, p0, Lsh;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqg;

    invoke-virtual {v0, p1}, Lqg;->a(Z)V

    .line 497
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lsh;->a:Lvf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvf;->d(I)V

    .line 405
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lsh;->a:Lvf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lvf;->d(I)V

    .line 412
    return-void
.end method

.method public g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lsh;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 427
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lsh;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lks;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lsh;->a:Lvf;

    invoke-virtual {v0}, Lvf;->d()V

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lsh;->c:Landroid/view/Window$Callback;

    return-object v0
.end method

.method l()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0}, Lsh;->m()Landroid/view/Menu;

    move-result-object v1

    .line 442
    instance-of v2, v1, Ltl;

    if-eqz v2, :cond_4

    move-object v0, v1

    check-cast v0, Ltl;

    move-object v2, v0

    .line 443
    :goto_0
    if-eqz v2, :cond_0

    .line 444
    invoke-virtual {v2}, Ltl;->g()V

    .line 447
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 448
    iget-object v0, p0, Lsh;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsh;->c:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 450
    :cond_1
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :cond_2
    if-eqz v2, :cond_3

    .line 454
    invoke-virtual {v2}, Ltl;->h()V

    .line 457
    :cond_3
    return-void

    :cond_4
    move-object v2, v0

    .line 442
    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 454
    invoke-virtual {v2}, Ltl;->h()V

    :cond_5
    throw v0
.end method
