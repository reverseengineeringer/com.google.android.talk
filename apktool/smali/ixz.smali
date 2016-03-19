.class public final Lixz;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lixz;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1467
    iput-object v0, p0, Lixz;->a:Ljava/lang/String;

    .line 1468
    iput-object v0, p0, Lixz;->b:Ljava/lang/String;

    .line 1469
    iput-object v0, p0, Lixz;->c:Ljava/lang/Integer;

    .line 1470
    iput-object v0, p0, Lixz;->d:Ljava/lang/String;

    .line 1471
    iput-object v0, p0, Lixz;->e:Ljava/lang/Boolean;

    .line 1472
    iput-object v0, p0, Lixz;->f:Ljava/lang/Integer;

    .line 1473
    iput-object v0, p0, Lixz;->eD:Llyd;

    .line 1474
    const/4 v0, -0x1

    iput v0, p0, Lixz;->eE:I

    .line 464
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 2537
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2538
    sparse-switch v0, :sswitch_data_0

    .line 2542
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2543
    :sswitch_0
    return-object p0

    .line 2548
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixz;->a:Ljava/lang/String;

    goto :goto_0

    .line 2552
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixz;->b:Ljava/lang/String;

    goto :goto_0

    .line 2556
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lixz;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2560
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lixz;->d:Ljava/lang/String;

    goto :goto_0

    .line 2564
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lixz;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 2568
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2569
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2575
    :sswitch_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lixz;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 2538
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch

    .line 2569
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_7
        0x1 -> :sswitch_7
        0x2 -> :sswitch_7
        0x3 -> :sswitch_7
        0x63 -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lixz;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x1

    iget-object v1, p0, Lixz;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lixz;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 485
    const/4 v0, 0x2

    iget-object v1, p0, Lixz;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 487
    :cond_1
    iget-object v0, p0, Lixz;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 488
    const/4 v0, 0x3

    iget-object v1, p0, Lixz;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 490
    :cond_2
    iget-object v0, p0, Lixz;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 491
    const/4 v0, 0x4

    iget-object v1, p0, Lixz;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 493
    :cond_3
    iget-object v0, p0, Lixz;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 494
    const/4 v0, 0x5

    iget-object v1, p0, Lixz;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 496
    :cond_4
    iget-object v0, p0, Lixz;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 497
    const/4 v0, 0x6

    iget-object v1, p0, Lixz;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 499
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 500
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 504
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 505
    iget-object v1, p0, Lixz;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 506
    const/4 v1, 0x1

    iget-object v2, p0, Lixz;->a:Ljava/lang/String;

    .line 507
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 509
    :cond_0
    iget-object v1, p0, Lixz;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 510
    const/4 v1, 0x2

    iget-object v2, p0, Lixz;->b:Ljava/lang/String;

    .line 511
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 513
    :cond_1
    iget-object v1, p0, Lixz;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 514
    const/4 v1, 0x3

    iget-object v2, p0, Lixz;->c:Ljava/lang/Integer;

    .line 515
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 517
    :cond_2
    iget-object v1, p0, Lixz;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 518
    const/4 v1, 0x4

    iget-object v2, p0, Lixz;->d:Ljava/lang/String;

    .line 519
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    :cond_3
    iget-object v1, p0, Lixz;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 522
    const/4 v1, 0x5

    iget-object v2, p0, Lixz;->e:Ljava/lang/Boolean;

    .line 523
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 523
    add-int/2addr v0, v1

    .line 525
    :cond_4
    iget-object v1, p0, Lixz;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 526
    const/4 v1, 0x6

    iget-object v2, p0, Lixz;->f:Ljava/lang/Integer;

    .line 527
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 529
    :cond_5
    return v0
.end method
