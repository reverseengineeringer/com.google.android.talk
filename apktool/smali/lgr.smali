.class public final Llgr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llgr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llgt;

.field public b:Llgu;

.field public c:Llgv;

.field public d:Llgw;

.field public e:Llgs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 450
    invoke-direct {p0}, Llyb;-><init>()V

    .line 451
    iput-object v0, p0, Llgr;->a:Llgt;

    .line 452
    iput-object v0, p0, Llgr;->b:Llgu;

    .line 453
    iput-object v0, p0, Llgr;->c:Llgv;

    .line 454
    iput-object v0, p0, Llgr;->d:Llgw;

    .line 455
    iput-object v0, p0, Llgr;->e:Llgs;

    .line 456
    iput-object v0, p0, Llgr;->eD:Llyd;

    .line 457
    const/4 v0, -0x1

    iput v0, p0, Llgr;->eE:I

    .line 458
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1512
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1513
    sparse-switch v0, :sswitch_data_0

    .line 1517
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    :sswitch_0
    return-object p0

    .line 1523
    :sswitch_1
    iget-object v0, p0, Llgr;->a:Llgt;

    if-nez v0, :cond_1

    .line 1524
    new-instance v0, Llgt;

    invoke-direct {v0}, Llgt;-><init>()V

    iput-object v0, p0, Llgr;->a:Llgt;

    .line 1526
    :cond_1
    iget-object v0, p0, Llgr;->a:Llgt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1530
    :sswitch_2
    iget-object v0, p0, Llgr;->b:Llgu;

    if-nez v0, :cond_2

    .line 1531
    new-instance v0, Llgu;

    invoke-direct {v0}, Llgu;-><init>()V

    iput-object v0, p0, Llgr;->b:Llgu;

    .line 1533
    :cond_2
    iget-object v0, p0, Llgr;->b:Llgu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1537
    :sswitch_3
    iget-object v0, p0, Llgr;->c:Llgv;

    if-nez v0, :cond_3

    .line 1538
    new-instance v0, Llgv;

    invoke-direct {v0}, Llgv;-><init>()V

    iput-object v0, p0, Llgr;->c:Llgv;

    .line 1540
    :cond_3
    iget-object v0, p0, Llgr;->c:Llgv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1544
    :sswitch_4
    iget-object v0, p0, Llgr;->d:Llgw;

    if-nez v0, :cond_4

    .line 1545
    new-instance v0, Llgw;

    invoke-direct {v0}, Llgw;-><init>()V

    iput-object v0, p0, Llgr;->d:Llgw;

    .line 1547
    :cond_4
    iget-object v0, p0, Llgr;->d:Llgw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1551
    :sswitch_5
    iget-object v0, p0, Llgr;->e:Llgs;

    if-nez v0, :cond_5

    .line 1552
    new-instance v0, Llgs;

    invoke-direct {v0}, Llgs;-><init>()V

    iput-object v0, p0, Llgr;->e:Llgs;

    .line 1554
    :cond_5
    iget-object v0, p0, Llgr;->e:Llgs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1513
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Llgr;->a:Llgt;

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x1

    iget-object v1, p0, Llgr;->a:Llgt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 466
    :cond_0
    iget-object v0, p0, Llgr;->b:Llgu;

    if-eqz v0, :cond_1

    .line 467
    const/4 v0, 0x2

    iget-object v1, p0, Llgr;->b:Llgu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 469
    :cond_1
    iget-object v0, p0, Llgr;->c:Llgv;

    if-eqz v0, :cond_2

    .line 470
    const/4 v0, 0x3

    iget-object v1, p0, Llgr;->c:Llgv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 472
    :cond_2
    iget-object v0, p0, Llgr;->d:Llgw;

    if-eqz v0, :cond_3

    .line 473
    const/4 v0, 0x4

    iget-object v1, p0, Llgr;->d:Llgw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 475
    :cond_3
    iget-object v0, p0, Llgr;->e:Llgs;

    if-eqz v0, :cond_4

    .line 476
    const/4 v0, 0x5

    iget-object v1, p0, Llgr;->e:Llgs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 478
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 479
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 483
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 484
    iget-object v1, p0, Llgr;->a:Llgt;

    if-eqz v1, :cond_0

    .line 485
    const/4 v1, 0x1

    iget-object v2, p0, Llgr;->a:Llgt;

    .line 486
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    :cond_0
    iget-object v1, p0, Llgr;->b:Llgu;

    if-eqz v1, :cond_1

    .line 489
    const/4 v1, 0x2

    iget-object v2, p0, Llgr;->b:Llgu;

    .line 490
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 492
    :cond_1
    iget-object v1, p0, Llgr;->c:Llgv;

    if-eqz v1, :cond_2

    .line 493
    const/4 v1, 0x3

    iget-object v2, p0, Llgr;->c:Llgv;

    .line 494
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 496
    :cond_2
    iget-object v1, p0, Llgr;->d:Llgw;

    if-eqz v1, :cond_3

    .line 497
    const/4 v1, 0x4

    iget-object v2, p0, Llgr;->d:Llgw;

    .line 498
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 500
    :cond_3
    iget-object v1, p0, Llgr;->e:Llgs;

    if-eqz v1, :cond_4

    .line 501
    const/4 v1, 0x5

    iget-object v2, p0, Llgr;->e:Llgs;

    .line 502
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 504
    :cond_4
    return v0
.end method
