.class public final Ljzr;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzr;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Integer;

.field public d:Ljyp;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1474
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2479
    iput-object v0, p0, Ljzr;->a:Ljxw;

    .line 2480
    iput-object v0, p0, Ljzr;->b:Ljava/lang/Long;

    .line 2481
    iput-object v0, p0, Ljzr;->c:Ljava/lang/Integer;

    .line 2482
    iput-object v0, p0, Ljzr;->d:Ljyp;

    .line 2483
    iput-object v0, p0, Ljzr;->e:Ljava/lang/Integer;

    .line 2484
    iput-object v0, p0, Ljzr;->eD:Llyd;

    .line 2485
    const/4 v0, -0x1

    iput v0, p0, Ljzr;->eE:I

    .line 1476
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2541
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2542
    sparse-switch v0, :sswitch_data_0

    .line 2546
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    :sswitch_0
    return-object p0

    .line 2552
    :sswitch_1
    iget-object v0, p0, Ljzr;->a:Ljxw;

    if-nez v0, :cond_1

    .line 2553
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Ljzr;->a:Ljxw;

    .line 2555
    :cond_1
    iget-object v0, p0, Ljzr;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2559
    :sswitch_2
    invoke-virtual {p1}, Llxy;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljzr;->b:Ljava/lang/Long;

    goto :goto_0

    .line 2563
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2564
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2567
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzr;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 2573
    :sswitch_4
    iget-object v0, p0, Ljzr;->d:Ljyp;

    if-nez v0, :cond_2

    .line 2574
    new-instance v0, Ljyp;

    invoke-direct {v0}, Ljyp;-><init>()V

    iput-object v0, p0, Ljzr;->d:Ljyp;

    .line 2576
    :cond_2
    iget-object v0, p0, Ljzr;->d:Ljyp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2580
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2581
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2597
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzr;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 2542
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    .line 2564
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 2581
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 1492
    iget-object v0, p0, Ljzr;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 1493
    const/4 v0, 0x1

    iget-object v1, p0, Ljzr;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1495
    :cond_0
    iget-object v0, p0, Ljzr;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1496
    const/4 v0, 0x2

    iget-object v1, p0, Ljzr;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(IJ)V

    .line 1498
    :cond_1
    iget-object v0, p0, Ljzr;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 1499
    const/4 v0, 0x3

    iget-object v1, p0, Ljzr;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1501
    :cond_2
    iget-object v0, p0, Ljzr;->d:Ljyp;

    if-eqz v0, :cond_3

    .line 1502
    const/4 v0, 0x4

    iget-object v1, p0, Ljzr;->d:Ljyp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1504
    :cond_3
    iget-object v0, p0, Ljzr;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 1505
    const/4 v0, 0x5

    iget-object v1, p0, Ljzr;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 1507
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1508
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1512
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1513
    iget-object v1, p0, Ljzr;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 1514
    const/4 v1, 0x1

    iget-object v2, p0, Ljzr;->a:Ljxw;

    .line 1515
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1517
    :cond_0
    iget-object v1, p0, Ljzr;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 1518
    const/4 v1, 0x2

    iget-object v2, p0, Ljzr;->b:Ljava/lang/Long;

    .line 1519
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1521
    :cond_1
    iget-object v1, p0, Ljzr;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 1522
    const/4 v1, 0x3

    iget-object v2, p0, Ljzr;->c:Ljava/lang/Integer;

    .line 1523
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1525
    :cond_2
    iget-object v1, p0, Ljzr;->d:Ljyp;

    if-eqz v1, :cond_3

    .line 1526
    const/4 v1, 0x4

    iget-object v2, p0, Ljzr;->d:Ljyp;

    .line 1527
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1529
    :cond_3
    iget-object v1, p0, Ljzr;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 1530
    const/4 v1, 0x5

    iget-object v2, p0, Ljzr;->e:Ljava/lang/Integer;

    .line 1531
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1533
    :cond_4
    return v0
.end method
