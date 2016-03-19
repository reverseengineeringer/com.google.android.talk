.class public final Lmrn;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmrn;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmrn;


# instance fields
.field public a:Lmrp;

.field public b:Lmrq;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1590
    iput-object v0, p0, Lmrn;->a:Lmrp;

    .line 1591
    iput-object v0, p0, Lmrn;->b:Lmrq;

    .line 1592
    iput-object v0, p0, Lmrn;->c:Ljava/lang/Integer;

    .line 1593
    iput-object v0, p0, Lmrn;->eD:Llyd;

    .line 1594
    const/4 v0, -0x1

    iput v0, p0, Lmrn;->eE:I

    .line 587
    return-void
.end method

.method public static d()[Lmrn;
    .locals 2

    .prologue
    .line 563
    sget-object v0, Lmrn;->d:[Lmrn;

    if-nez v0, :cond_1

    .line 564
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    sget-object v0, Lmrn;->d:[Lmrn;

    if-nez v0, :cond_0

    .line 567
    const/4 v0, 0x0

    new-array v0, v0, [Lmrn;

    sput-object v0, Lmrn;->d:[Lmrn;

    .line 569
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :cond_1
    sget-object v0, Lmrn;->d:[Lmrn;

    return-object v0

    .line 569
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
    .locals 1

    .prologue
    .line 1636
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1637
    sparse-switch v0, :sswitch_data_0

    .line 1641
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1642
    :sswitch_0
    return-object p0

    .line 1647
    :sswitch_1
    iget-object v0, p0, Lmrn;->a:Lmrp;

    if-nez v0, :cond_1

    .line 1648
    new-instance v0, Lmrp;

    invoke-direct {v0}, Lmrp;-><init>()V

    iput-object v0, p0, Lmrn;->a:Lmrp;

    .line 1650
    :cond_1
    iget-object v0, p0, Lmrn;->a:Lmrp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1654
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1655
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1676
    :sswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lmrn;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 1682
    :sswitch_4
    iget-object v0, p0, Lmrn;->b:Lmrq;

    if-nez v0, :cond_2

    .line 1683
    new-instance v0, Lmrq;

    invoke-direct {v0}, Lmrq;-><init>()V

    iput-object v0, p0, Lmrn;->b:Lmrq;

    .line 1685
    :cond_2
    iget-object v0, p0, Lmrn;->b:Lmrq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1637
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 1655
    :sswitch_data_1
    .sparse-switch
        0x2b -> :sswitch_3
        0x2c -> :sswitch_3
        0xc8 -> :sswitch_3
        0xdc -> :sswitch_3
        0xdd -> :sswitch_3
        0xde -> :sswitch_3
        0xdf -> :sswitch_3
        0xe0 -> :sswitch_3
        0xe1 -> :sswitch_3
        0xe2 -> :sswitch_3
        0xe3 -> :sswitch_3
        0xf0 -> :sswitch_3
        0xf1 -> :sswitch_3
        0x12c -> :sswitch_3
        0x12e -> :sswitch_3
        0x138 -> :sswitch_3
        0x13a -> :sswitch_3
        0x13b -> :sswitch_3
        0x13c -> :sswitch_3
        0x3a98 -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lmrn;->a:Lmrp;

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x1

    iget-object v1, p0, Lmrn;->a:Lmrp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 604
    :cond_0
    iget-object v0, p0, Lmrn;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 605
    const/4 v0, 0x2

    iget-object v1, p0, Lmrn;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 607
    :cond_1
    iget-object v0, p0, Lmrn;->b:Lmrq;

    if-eqz v0, :cond_2

    .line 608
    const/4 v0, 0x3

    iget-object v1, p0, Lmrn;->b:Lmrq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 610
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 611
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 615
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 616
    iget-object v1, p0, Lmrn;->a:Lmrp;

    if-eqz v1, :cond_0

    .line 617
    const/4 v1, 0x1

    iget-object v2, p0, Lmrn;->a:Lmrp;

    .line 618
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_0
    iget-object v1, p0, Lmrn;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 621
    const/4 v1, 0x2

    iget-object v2, p0, Lmrn;->c:Ljava/lang/Integer;

    .line 622
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_1
    iget-object v1, p0, Lmrn;->b:Lmrq;

    if-eqz v1, :cond_2

    .line 625
    const/4 v1, 0x3

    iget-object v2, p0, Lmrn;->b:Lmrq;

    .line 626
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 628
    :cond_2
    return v0
.end method
