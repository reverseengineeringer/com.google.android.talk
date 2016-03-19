.class public final Lkim;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkim;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile j:[Lkim;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Ljava/lang/String;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Integer;

.field public f:Lkik;

.field public g:Lkio;

.field public h:Lkin;

.field public i:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 544
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1549
    iput-object v1, p0, Lkim;->a:Ljava/lang/String;

    .line 1550
    iput-object v1, p0, Lkim;->b:Ljava/lang/String;

    .line 1551
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lkim;->c:[Ljava/lang/String;

    .line 1552
    iput-object v1, p0, Lkim;->d:Ljava/lang/Long;

    .line 1553
    iput-object v1, p0, Lkim;->e:Ljava/lang/Integer;

    .line 1554
    iput-object v1, p0, Lkim;->f:Lkik;

    .line 1555
    iput-object v1, p0, Lkim;->g:Lkio;

    .line 1556
    iput-object v1, p0, Lkim;->h:Lkin;

    .line 1557
    iput-object v1, p0, Lkim;->i:Ljava/lang/Boolean;

    .line 1558
    iput-object v1, p0, Lkim;->eD:Llyd;

    .line 1559
    const/4 v0, -0x1

    iput v0, p0, Lkim;->eE:I

    .line 546
    return-void
.end method

.method public static d()[Lkim;
    .locals 2

    .prologue
    .line 504
    sget-object v0, Lkim;->j:[Lkim;

    if-nez v0, :cond_1

    .line 505
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    sget-object v0, Lkim;->j:[Lkim;

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x0

    new-array v0, v0, [Lkim;

    sput-object v0, Lkim;->j:[Lkim;

    .line 510
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_1
    sget-object v0, Lkim;->j:[Lkim;

    return-object v0

    .line 510
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1658
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1659
    sparse-switch v0, :sswitch_data_0

    .line 1663
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    :sswitch_0
    return-object p0

    .line 1669
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkim;->a:Ljava/lang/String;

    goto :goto_0

    .line 1673
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkim;->b:Ljava/lang/String;

    goto :goto_0

    .line 1677
    :sswitch_3
    const/16 v0, 0x1a

    .line 1678
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1679
    iget-object v0, p0, Lkim;->c:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 1680
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1681
    if-eqz v0, :cond_1

    .line 1682
    iget-object v3, p0, Lkim;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1684
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1685
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1686
    invoke-virtual {p1}, Llxy;->a()I

    .line 1684
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1679
    :cond_2
    iget-object v0, p0, Lkim;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 1689
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1690
    iput-object v2, p0, Lkim;->c:[Ljava/lang/String;

    goto :goto_0

    .line 1694
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1695
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1701
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkim;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 1707
    :sswitch_5
    iget-object v0, p0, Lkim;->f:Lkik;

    if-nez v0, :cond_4

    .line 1708
    new-instance v0, Lkik;

    invoke-direct {v0}, Lkik;-><init>()V

    iput-object v0, p0, Lkim;->f:Lkik;

    .line 1710
    :cond_4
    iget-object v0, p0, Lkim;->f:Lkik;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1714
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkim;->i:Ljava/lang/Boolean;

    goto :goto_0

    .line 1718
    :sswitch_7
    iget-object v0, p0, Lkim;->g:Lkio;

    if-nez v0, :cond_5

    .line 1719
    new-instance v0, Lkio;

    invoke-direct {v0}, Lkio;-><init>()V

    iput-object v0, p0, Lkim;->g:Lkio;

    .line 1721
    :cond_5
    iget-object v0, p0, Lkim;->g:Lkio;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1725
    :sswitch_8
    iget-object v0, p0, Lkim;->h:Lkin;

    if-nez v0, :cond_6

    .line 1726
    new-instance v0, Lkin;

    invoke-direct {v0}, Lkin;-><init>()V

    iput-object v0, p0, Lkim;->h:Lkin;

    .line 1728
    :cond_6
    iget-object v0, p0, Lkim;->h:Lkin;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 1732
    :sswitch_9
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lkim;->d:Ljava/lang/Long;

    goto/16 :goto_0

    .line 1659
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    .line 1695
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 566
    iget-object v0, p0, Lkim;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x1

    iget-object v1, p0, Lkim;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 569
    :cond_0
    iget-object v0, p0, Lkim;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 570
    const/4 v0, 0x2

    iget-object v1, p0, Lkim;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 572
    :cond_1
    iget-object v0, p0, Lkim;->c:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkim;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 573
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkim;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 574
    iget-object v1, p0, Lkim;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 575
    if-eqz v1, :cond_2

    .line 576
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 573
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 580
    :cond_3
    iget-object v0, p0, Lkim;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 581
    const/4 v0, 0x4

    iget-object v1, p0, Lkim;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 583
    :cond_4
    iget-object v0, p0, Lkim;->f:Lkik;

    if-eqz v0, :cond_5

    .line 584
    const/4 v0, 0x5

    iget-object v1, p0, Lkim;->f:Lkik;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 586
    :cond_5
    iget-object v0, p0, Lkim;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 587
    const/4 v0, 0x6

    iget-object v1, p0, Lkim;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 589
    :cond_6
    iget-object v0, p0, Lkim;->g:Lkio;

    if-eqz v0, :cond_7

    .line 590
    const/4 v0, 0x7

    iget-object v1, p0, Lkim;->g:Lkio;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 592
    :cond_7
    iget-object v0, p0, Lkim;->h:Lkin;

    if-eqz v0, :cond_8

    .line 593
    const/16 v0, 0x8

    iget-object v1, p0, Lkim;->h:Lkin;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 595
    :cond_8
    iget-object v0, p0, Lkim;->d:Ljava/lang/Long;

    if-eqz v0, :cond_9

    .line 596
    const/16 v0, 0x9

    iget-object v1, p0, Lkim;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 598
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 599
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 603
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 604
    iget-object v2, p0, Lkim;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 605
    const/4 v2, 0x1

    iget-object v3, p0, Lkim;->a:Ljava/lang/String;

    .line 606
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 608
    :cond_0
    iget-object v2, p0, Lkim;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 609
    const/4 v2, 0x2

    iget-object v3, p0, Lkim;->b:Ljava/lang/String;

    .line 610
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 612
    :cond_1
    iget-object v2, p0, Lkim;->c:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkim;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    .line 615
    :goto_0
    iget-object v4, p0, Lkim;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 616
    iget-object v4, p0, Lkim;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 617
    if-eqz v4, :cond_2

    .line 618
    add-int/lit8 v3, v3, 0x1

    .line 620
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 615
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_3
    add-int/2addr v0, v2

    .line 624
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 626
    :cond_4
    iget-object v1, p0, Lkim;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 627
    const/4 v1, 0x4

    iget-object v2, p0, Lkim;->e:Ljava/lang/Integer;

    .line 628
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 630
    :cond_5
    iget-object v1, p0, Lkim;->f:Lkik;

    if-eqz v1, :cond_6

    .line 631
    const/4 v1, 0x5

    iget-object v2, p0, Lkim;->f:Lkik;

    .line 632
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 634
    :cond_6
    iget-object v1, p0, Lkim;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 635
    const/4 v1, 0x6

    iget-object v2, p0, Lkim;->i:Ljava/lang/Boolean;

    .line 636
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 636
    add-int/2addr v0, v1

    .line 638
    :cond_7
    iget-object v1, p0, Lkim;->g:Lkio;

    if-eqz v1, :cond_8

    .line 639
    const/4 v1, 0x7

    iget-object v2, p0, Lkim;->g:Lkio;

    .line 640
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 642
    :cond_8
    iget-object v1, p0, Lkim;->h:Lkin;

    if-eqz v1, :cond_9

    .line 643
    const/16 v1, 0x8

    iget-object v2, p0, Lkim;->h:Lkin;

    .line 644
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 646
    :cond_9
    iget-object v1, p0, Lkim;->d:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 647
    const/16 v1, 0x9

    iget-object v2, p0, Lkim;->d:Ljava/lang/Long;

    .line 648
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 650
    :cond_a
    return v0
.end method
