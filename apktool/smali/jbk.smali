.class public final Ljbk;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbk;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbi;

.field public b:Ljbu;

.field public c:Ljak;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Lmjw;

.field public g:Ljava/lang/Integer;

.field public h:Lizi;

.field public i:Ljbl;

.field public j:Ljava/lang/Boolean;

.field public k:Ljkn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1455
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2460
    iput-object v0, p0, Ljbk;->a:Ljbi;

    .line 2461
    iput-object v0, p0, Ljbk;->b:Ljbu;

    .line 2462
    iput-object v0, p0, Ljbk;->c:Ljak;

    .line 2463
    iput-object v0, p0, Ljbk;->d:Ljava/lang/String;

    .line 2464
    iput-object v0, p0, Ljbk;->e:Ljava/lang/Integer;

    .line 2465
    iput-object v0, p0, Ljbk;->f:Lmjw;

    .line 2466
    iput-object v0, p0, Ljbk;->g:Ljava/lang/Integer;

    .line 2467
    iput-object v0, p0, Ljbk;->h:Lizi;

    .line 2468
    iput-object v0, p0, Ljbk;->i:Ljbl;

    .line 2469
    iput-object v0, p0, Ljbk;->j:Ljava/lang/Boolean;

    .line 2470
    iput-object v0, p0, Ljbk;->k:Ljkn;

    .line 2471
    iput-object v0, p0, Ljbk;->eD:Llyd;

    .line 2472
    const/4 v0, -0x1

    iput v0, p0, Ljbk;->eE:I

    .line 1457
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3570
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3571
    sparse-switch v0, :sswitch_data_0

    .line 3575
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3576
    :sswitch_0
    return-object p0

    .line 3581
    :sswitch_1
    iget-object v0, p0, Ljbk;->a:Ljbi;

    if-nez v0, :cond_1

    .line 3582
    new-instance v0, Ljbi;

    invoke-direct {v0}, Ljbi;-><init>()V

    iput-object v0, p0, Ljbk;->a:Ljbi;

    .line 3584
    :cond_1
    iget-object v0, p0, Ljbk;->a:Ljbi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3588
    :sswitch_2
    iget-object v0, p0, Ljbk;->b:Ljbu;

    if-nez v0, :cond_2

    .line 3589
    new-instance v0, Ljbu;

    invoke-direct {v0}, Ljbu;-><init>()V

    iput-object v0, p0, Ljbk;->b:Ljbu;

    .line 3591
    :cond_2
    iget-object v0, p0, Ljbk;->b:Ljbu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3595
    :sswitch_3
    iget-object v0, p0, Ljbk;->c:Ljak;

    if-nez v0, :cond_3

    .line 3596
    new-instance v0, Ljak;

    invoke-direct {v0}, Ljak;-><init>()V

    iput-object v0, p0, Ljbk;->c:Ljak;

    .line 3598
    :cond_3
    iget-object v0, p0, Ljbk;->c:Ljak;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3602
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljbk;->d:Ljava/lang/String;

    goto :goto_0

    .line 3606
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3607
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3611
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbk;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 3617
    :sswitch_6
    iget-object v0, p0, Ljbk;->f:Lmjw;

    if-nez v0, :cond_4

    .line 3618
    new-instance v0, Lmjw;

    invoke-direct {v0}, Lmjw;-><init>()V

    iput-object v0, p0, Ljbk;->f:Lmjw;

    .line 3620
    :cond_4
    iget-object v0, p0, Ljbk;->f:Lmjw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3624
    :sswitch_7
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3625
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3629
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljbk;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 3635
    :sswitch_8
    iget-object v0, p0, Ljbk;->h:Lizi;

    if-nez v0, :cond_5

    .line 3636
    new-instance v0, Lizi;

    invoke-direct {v0}, Lizi;-><init>()V

    iput-object v0, p0, Ljbk;->h:Lizi;

    .line 3638
    :cond_5
    iget-object v0, p0, Ljbk;->h:Lizi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3642
    :sswitch_9
    iget-object v0, p0, Ljbk;->i:Ljbl;

    if-nez v0, :cond_6

    .line 3643
    new-instance v0, Ljbl;

    invoke-direct {v0}, Ljbl;-><init>()V

    iput-object v0, p0, Ljbk;->i:Ljbl;

    .line 3645
    :cond_6
    iget-object v0, p0, Ljbk;->i:Ljbl;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3649
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljbk;->j:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 3653
    :sswitch_b
    iget-object v0, p0, Ljbk;->k:Ljkn;

    if-nez v0, :cond_7

    .line 3654
    new-instance v0, Ljkn;

    invoke-direct {v0}, Ljkn;-><init>()V

    iput-object v0, p0, Ljbk;->k:Ljkn;

    .line 3656
    :cond_7
    iget-object v0, p0, Ljbk;->k:Ljkn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3571
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x30 -> :sswitch_5
        0x42 -> :sswitch_6
        0x48 -> :sswitch_7
        0x52 -> :sswitch_8
        0x5a -> :sswitch_9
        0x60 -> :sswitch_a
        0x6a -> :sswitch_b
    .end sparse-switch

    .line 3607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3625
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Ljbk;->a:Ljbi;

    if-eqz v0, :cond_0

    .line 1480
    const/4 v0, 0x1

    iget-object v1, p0, Ljbk;->a:Ljbi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1482
    :cond_0
    iget-object v0, p0, Ljbk;->b:Ljbu;

    if-eqz v0, :cond_1

    .line 1483
    const/4 v0, 0x3

    iget-object v1, p0, Ljbk;->b:Ljbu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1485
    :cond_1
    iget-object v0, p0, Ljbk;->c:Ljak;

    if-eqz v0, :cond_2

    .line 1486
    const/4 v0, 0x4

    iget-object v1, p0, Ljbk;->c:Ljak;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1488
    :cond_2
    iget-object v0, p0, Ljbk;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1489
    const/4 v0, 0x5

    iget-object v1, p0, Ljbk;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 1491
    :cond_3
    iget-object v0, p0, Ljbk;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1492
    const/4 v0, 0x6

    iget-object v1, p0, Ljbk;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1494
    :cond_4
    iget-object v0, p0, Ljbk;->f:Lmjw;

    if-eqz v0, :cond_5

    .line 1495
    const/16 v0, 0x8

    iget-object v1, p0, Ljbk;->f:Lmjw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1497
    :cond_5
    iget-object v0, p0, Ljbk;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 1498
    const/16 v0, 0x9

    iget-object v1, p0, Ljbk;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1500
    :cond_6
    iget-object v0, p0, Ljbk;->h:Lizi;

    if-eqz v0, :cond_7

    .line 1501
    const/16 v0, 0xa

    iget-object v1, p0, Ljbk;->h:Lizi;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1503
    :cond_7
    iget-object v0, p0, Ljbk;->i:Ljbl;

    if-eqz v0, :cond_8

    .line 1504
    const/16 v0, 0xb

    iget-object v1, p0, Ljbk;->i:Ljbl;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1506
    :cond_8
    iget-object v0, p0, Ljbk;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 1507
    const/16 v0, 0xc

    iget-object v1, p0, Ljbk;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 1509
    :cond_9
    iget-object v0, p0, Ljbk;->k:Ljkn;

    if-eqz v0, :cond_a

    .line 1510
    const/16 v0, 0xd

    iget-object v1, p0, Ljbk;->k:Ljkn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1512
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1513
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 1517
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1518
    iget-object v1, p0, Ljbk;->a:Ljbi;

    if-eqz v1, :cond_0

    .line 1519
    const/4 v1, 0x1

    iget-object v2, p0, Ljbk;->a:Ljbi;

    .line 1520
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1522
    :cond_0
    iget-object v1, p0, Ljbk;->b:Ljbu;

    if-eqz v1, :cond_1

    .line 1523
    const/4 v1, 0x3

    iget-object v2, p0, Ljbk;->b:Ljbu;

    .line 1524
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1526
    :cond_1
    iget-object v1, p0, Ljbk;->c:Ljak;

    if-eqz v1, :cond_2

    .line 1527
    const/4 v1, 0x4

    iget-object v2, p0, Ljbk;->c:Ljak;

    .line 1528
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1530
    :cond_2
    iget-object v1, p0, Ljbk;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1531
    const/4 v1, 0x5

    iget-object v2, p0, Ljbk;->d:Ljava/lang/String;

    .line 1532
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1534
    :cond_3
    iget-object v1, p0, Ljbk;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1535
    const/4 v1, 0x6

    iget-object v2, p0, Ljbk;->e:Ljava/lang/Integer;

    .line 1536
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1538
    :cond_4
    iget-object v1, p0, Ljbk;->f:Lmjw;

    if-eqz v1, :cond_5

    .line 1539
    const/16 v1, 0x8

    iget-object v2, p0, Ljbk;->f:Lmjw;

    .line 1540
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1542
    :cond_5
    iget-object v1, p0, Ljbk;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 1543
    const/16 v1, 0x9

    iget-object v2, p0, Ljbk;->g:Ljava/lang/Integer;

    .line 1544
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1546
    :cond_6
    iget-object v1, p0, Ljbk;->h:Lizi;

    if-eqz v1, :cond_7

    .line 1547
    const/16 v1, 0xa

    iget-object v2, p0, Ljbk;->h:Lizi;

    .line 1548
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1550
    :cond_7
    iget-object v1, p0, Ljbk;->i:Ljbl;

    if-eqz v1, :cond_8

    .line 1551
    const/16 v1, 0xb

    iget-object v2, p0, Ljbk;->i:Ljbl;

    .line 1552
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1554
    :cond_8
    iget-object v1, p0, Ljbk;->j:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 1555
    const/16 v1, 0xc

    iget-object v2, p0, Ljbk;->j:Ljava/lang/Boolean;

    .line 1556
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1556
    add-int/2addr v0, v1

    .line 1558
    :cond_9
    iget-object v1, p0, Ljbk;->k:Ljkn;

    if-eqz v1, :cond_a

    .line 1559
    const/16 v1, 0xd

    iget-object v2, p0, Ljbk;->k:Ljkn;

    .line 1560
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1562
    :cond_a
    return v0
.end method
