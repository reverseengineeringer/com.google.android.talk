.class public final Lmck;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmck;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Lmck;


# instance fields
.field public a:Lmcm;

.field public b:Lmcn;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 561
    invoke-direct {p0}, Llyb;-><init>()V

    .line 562
    iput-object v1, p0, Lmck;->a:Lmcm;

    .line 563
    iput-object v1, p0, Lmck;->b:Lmcn;

    .line 564
    const/high16 v0, -0x80000000

    iput v0, p0, Lmck;->c:I

    .line 565
    iput-object v1, p0, Lmck;->eD:Llyd;

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Lmck;->eE:I

    .line 567
    return-void
.end method

.method public static d()[Lmck;
    .locals 2

    .prologue
    .line 539
    sget-object v0, Lmck;->d:[Lmck;

    if-nez v0, :cond_1

    .line 540
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    sget-object v0, Lmck;->d:[Lmck;

    if-nez v0, :cond_0

    .line 543
    const/4 v0, 0x0

    new-array v0, v0, [Lmck;

    sput-object v0, Lmck;->d:[Lmck;

    .line 545
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    :cond_1
    sget-object v0, Lmck;->d:[Lmck;

    return-object v0

    .line 545
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
    .line 1607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1608
    sparse-switch v0, :sswitch_data_0

    .line 1612
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    :sswitch_0
    return-object p0

    .line 1618
    :sswitch_1
    iget-object v0, p0, Lmck;->a:Lmcm;

    if-nez v0, :cond_1

    .line 1619
    new-instance v0, Lmcm;

    invoke-direct {v0}, Lmcm;-><init>()V

    iput-object v0, p0, Lmck;->a:Lmcm;

    .line 1621
    :cond_1
    iget-object v0, p0, Lmck;->a:Lmcm;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1625
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1626
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1647
    :sswitch_3
    iput v0, p0, Lmck;->c:I

    goto :goto_0

    .line 1653
    :sswitch_4
    iget-object v0, p0, Lmck;->b:Lmcn;

    if-nez v0, :cond_2

    .line 1654
    new-instance v0, Lmcn;

    invoke-direct {v0}, Lmcn;-><init>()V

    iput-object v0, p0, Lmck;->b:Lmcn;

    .line 1656
    :cond_2
    iget-object v0, p0, Lmck;->b:Lmcn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1608
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
    .end sparse-switch

    .line 1626
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
    .line 572
    iget-object v0, p0, Lmck;->a:Lmcm;

    if-eqz v0, :cond_0

    .line 573
    const/4 v0, 0x1

    iget-object v1, p0, Lmck;->a:Lmcm;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 575
    :cond_0
    iget v0, p0, Lmck;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 576
    const/4 v0, 0x2

    iget v1, p0, Lmck;->c:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 578
    :cond_1
    iget-object v0, p0, Lmck;->b:Lmcn;

    if-eqz v0, :cond_2

    .line 579
    const/4 v0, 0x3

    iget-object v1, p0, Lmck;->b:Lmcn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 581
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 582
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 586
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 587
    iget-object v1, p0, Lmck;->a:Lmcm;

    if-eqz v1, :cond_0

    .line 588
    const/4 v1, 0x1

    iget-object v2, p0, Lmck;->a:Lmcm;

    .line 589
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_0
    iget v1, p0, Lmck;->c:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    .line 592
    const/4 v1, 0x2

    iget v2, p0, Lmck;->c:I

    .line 593
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 595
    :cond_1
    iget-object v1, p0, Lmck;->b:Lmcn;

    if-eqz v1, :cond_2

    .line 596
    const/4 v1, 0x3

    iget-object v2, p0, Lmck;->b:Lmcn;

    .line 597
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 599
    :cond_2
    return v0
.end method
