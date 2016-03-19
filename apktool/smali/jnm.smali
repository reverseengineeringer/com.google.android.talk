.class public final Ljnm;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnm;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljlq;

.field public c:Ljlq;

.field public d:Ljlq;

.field public e:Ljnf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-direct {p0}, Llyb;-><init>()V

    .line 463
    iput-object v0, p0, Ljnm;->a:Ljava/lang/Boolean;

    .line 464
    iput-object v0, p0, Ljnm;->b:Ljlq;

    .line 465
    iput-object v0, p0, Ljnm;->c:Ljlq;

    .line 466
    iput-object v0, p0, Ljnm;->d:Ljlq;

    .line 467
    iput-object v0, p0, Ljnm;->e:Ljnf;

    .line 468
    iput-object v0, p0, Ljnm;->eD:Llyd;

    .line 469
    const/4 v0, -0x1

    iput v0, p0, Ljnm;->eE:I

    .line 470
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2524
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2525
    sparse-switch v0, :sswitch_data_0

    .line 2529
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2530
    :sswitch_0
    return-object p0

    .line 2535
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljnm;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2539
    :sswitch_2
    iget-object v0, p0, Ljnm;->b:Ljlq;

    if-nez v0, :cond_1

    .line 2540
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnm;->b:Ljlq;

    .line 2542
    :cond_1
    iget-object v0, p0, Ljnm;->b:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2546
    :sswitch_3
    iget-object v0, p0, Ljnm;->c:Ljlq;

    if-nez v0, :cond_2

    .line 2547
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnm;->c:Ljlq;

    .line 2549
    :cond_2
    iget-object v0, p0, Ljnm;->c:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2553
    :sswitch_4
    iget-object v0, p0, Ljnm;->d:Ljlq;

    if-nez v0, :cond_3

    .line 2554
    new-instance v0, Ljlq;

    invoke-direct {v0}, Ljlq;-><init>()V

    iput-object v0, p0, Ljnm;->d:Ljlq;

    .line 2556
    :cond_3
    iget-object v0, p0, Ljnm;->d:Ljlq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2560
    :sswitch_5
    iget-object v0, p0, Ljnm;->e:Ljnf;

    if-nez v0, :cond_4

    .line 2561
    new-instance v0, Ljnf;

    invoke-direct {v0}, Ljnf;-><init>()V

    iput-object v0, p0, Ljnm;->e:Ljnf;

    .line 2563
    :cond_4
    iget-object v0, p0, Ljnm;->e:Ljnf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2525
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_2
        0x3a -> :sswitch_3
        0x42 -> :sswitch_4
        0x4a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Ljnm;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x5

    iget-object v1, p0, Ljnm;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 478
    :cond_0
    iget-object v0, p0, Ljnm;->b:Ljlq;

    if-eqz v0, :cond_1

    .line 479
    const/4 v0, 0x6

    iget-object v1, p0, Ljnm;->b:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 481
    :cond_1
    iget-object v0, p0, Ljnm;->c:Ljlq;

    if-eqz v0, :cond_2

    .line 482
    const/4 v0, 0x7

    iget-object v1, p0, Ljnm;->c:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 484
    :cond_2
    iget-object v0, p0, Ljnm;->d:Ljlq;

    if-eqz v0, :cond_3

    .line 485
    const/16 v0, 0x8

    iget-object v1, p0, Ljnm;->d:Ljlq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 487
    :cond_3
    iget-object v0, p0, Ljnm;->e:Ljnf;

    if-eqz v0, :cond_4

    .line 488
    const/16 v0, 0x9

    iget-object v1, p0, Ljnm;->e:Ljnf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 490
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 491
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 495
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 496
    iget-object v1, p0, Ljnm;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 497
    const/4 v1, 0x5

    iget-object v2, p0, Ljnm;->a:Ljava/lang/Boolean;

    .line 498
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 498
    add-int/2addr v0, v1

    .line 500
    :cond_0
    iget-object v1, p0, Ljnm;->b:Ljlq;

    if-eqz v1, :cond_1

    .line 501
    const/4 v1, 0x6

    iget-object v2, p0, Ljnm;->b:Ljlq;

    .line 502
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_1
    iget-object v1, p0, Ljnm;->c:Ljlq;

    if-eqz v1, :cond_2

    .line 505
    const/4 v1, 0x7

    iget-object v2, p0, Ljnm;->c:Ljlq;

    .line 506
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 508
    :cond_2
    iget-object v1, p0, Ljnm;->d:Ljlq;

    if-eqz v1, :cond_3

    .line 509
    const/16 v1, 0x8

    iget-object v2, p0, Ljnm;->d:Ljlq;

    .line 510
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 512
    :cond_3
    iget-object v1, p0, Ljnm;->e:Ljnf;

    if-eqz v1, :cond_4

    .line 513
    const/16 v1, 0x9

    iget-object v2, p0, Ljnm;->e:Ljnf;

    .line 514
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 516
    :cond_4
    return v0
.end method
