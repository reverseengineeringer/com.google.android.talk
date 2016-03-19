.class public final Ljnb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljnb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljpc;

.field public c:Ljpc;

.field public d:Ljpc;

.field public e:Ljmu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 481
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1486
    iput-object v0, p0, Ljnb;->a:Ljava/lang/Boolean;

    .line 1487
    iput-object v0, p0, Ljnb;->b:Ljpc;

    .line 1488
    iput-object v0, p0, Ljnb;->c:Ljpc;

    .line 1489
    iput-object v0, p0, Ljnb;->d:Ljpc;

    .line 1490
    iput-object v0, p0, Ljnb;->e:Ljmu;

    .line 1491
    iput-object v0, p0, Ljnb;->eD:Llyd;

    .line 1492
    const/4 v0, -0x1

    iput v0, p0, Ljnb;->eE:I

    .line 483
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2548
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2549
    sparse-switch v0, :sswitch_data_0

    .line 2553
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2554
    :sswitch_0
    return-object p0

    .line 2559
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljnb;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2563
    :sswitch_2
    iget-object v0, p0, Ljnb;->b:Ljpc;

    if-nez v0, :cond_1

    .line 2564
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljnb;->b:Ljpc;

    .line 2566
    :cond_1
    iget-object v0, p0, Ljnb;->b:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2570
    :sswitch_3
    iget-object v0, p0, Ljnb;->c:Ljpc;

    if-nez v0, :cond_2

    .line 2571
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljnb;->c:Ljpc;

    .line 2573
    :cond_2
    iget-object v0, p0, Ljnb;->c:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2577
    :sswitch_4
    iget-object v0, p0, Ljnb;->d:Ljpc;

    if-nez v0, :cond_3

    .line 2578
    new-instance v0, Ljpc;

    invoke-direct {v0}, Ljpc;-><init>()V

    iput-object v0, p0, Ljnb;->d:Ljpc;

    .line 2580
    :cond_3
    iget-object v0, p0, Ljnb;->d:Ljpc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2584
    :sswitch_5
    iget-object v0, p0, Ljnb;->e:Ljmu;

    if-nez v0, :cond_4

    .line 2585
    new-instance v0, Ljmu;

    invoke-direct {v0}, Ljmu;-><init>()V

    iput-object v0, p0, Ljnb;->e:Ljmu;

    .line 2587
    :cond_4
    iget-object v0, p0, Ljnb;->e:Ljmu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2549
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
    .line 499
    iget-object v0, p0, Ljnb;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x5

    iget-object v1, p0, Ljnb;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 502
    :cond_0
    iget-object v0, p0, Ljnb;->b:Ljpc;

    if-eqz v0, :cond_1

    .line 503
    const/4 v0, 0x6

    iget-object v1, p0, Ljnb;->b:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 505
    :cond_1
    iget-object v0, p0, Ljnb;->c:Ljpc;

    if-eqz v0, :cond_2

    .line 506
    const/4 v0, 0x7

    iget-object v1, p0, Ljnb;->c:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 508
    :cond_2
    iget-object v0, p0, Ljnb;->d:Ljpc;

    if-eqz v0, :cond_3

    .line 509
    const/16 v0, 0x8

    iget-object v1, p0, Ljnb;->d:Ljpc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 511
    :cond_3
    iget-object v0, p0, Ljnb;->e:Ljmu;

    if-eqz v0, :cond_4

    .line 512
    const/16 v0, 0x9

    iget-object v1, p0, Ljnb;->e:Ljmu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 514
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 515
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 519
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 520
    iget-object v1, p0, Ljnb;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 521
    const/4 v1, 0x5

    iget-object v2, p0, Ljnb;->a:Ljava/lang/Boolean;

    .line 522
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 522
    add-int/2addr v0, v1

    .line 524
    :cond_0
    iget-object v1, p0, Ljnb;->b:Ljpc;

    if-eqz v1, :cond_1

    .line 525
    const/4 v1, 0x6

    iget-object v2, p0, Ljnb;->b:Ljpc;

    .line 526
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 528
    :cond_1
    iget-object v1, p0, Ljnb;->c:Ljpc;

    if-eqz v1, :cond_2

    .line 529
    const/4 v1, 0x7

    iget-object v2, p0, Ljnb;->c:Ljpc;

    .line 530
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 532
    :cond_2
    iget-object v1, p0, Ljnb;->d:Ljpc;

    if-eqz v1, :cond_3

    .line 533
    const/16 v1, 0x8

    iget-object v2, p0, Ljnb;->d:Ljpc;

    .line 534
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 536
    :cond_3
    iget-object v1, p0, Ljnb;->e:Ljmu;

    if-eqz v1, :cond_4

    .line 537
    const/16 v1, 0x9

    iget-object v2, p0, Ljnb;->e:Ljmu;

    .line 538
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 540
    :cond_4
    return v0
.end method
