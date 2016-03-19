.class public final Ljol;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljol;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile c:[Ljol;


# instance fields
.field public a:[Ljok;

.field public b:Ljon;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1566
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2571
    invoke-static {}, Ljok;->d()[Ljok;

    move-result-object v0

    iput-object v0, p0, Ljol;->a:[Ljok;

    .line 2572
    iput-object v1, p0, Ljol;->b:Ljon;

    .line 2573
    iput-object v1, p0, Ljol;->eD:Llyd;

    .line 2574
    const/4 v0, -0x1

    iput v0, p0, Ljol;->eE:I

    .line 1568
    return-void
.end method

.method public static d()[Ljol;
    .locals 2

    .prologue
    .line 1547
    sget-object v0, Ljol;->c:[Ljol;

    if-nez v0, :cond_1

    .line 1548
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1550
    :try_start_0
    sget-object v0, Ljol;->c:[Ljol;

    if-nez v0, :cond_0

    .line 1551
    const/4 v0, 0x0

    new-array v0, v0, [Ljol;

    sput-object v0, Ljol;->c:[Ljol;

    .line 1553
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    :cond_1
    sget-object v0, Ljol;->c:[Ljol;

    return-object v0

    .line 1553
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

    .line 2619
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2620
    sparse-switch v0, :sswitch_data_0

    .line 2624
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2625
    :sswitch_0
    return-object p0

    .line 2630
    :sswitch_1
    const/16 v0, 0xa

    .line 2631
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2632
    iget-object v0, p0, Ljol;->a:[Ljok;

    if-nez v0, :cond_2

    move v0, v1

    .line 2633
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljok;

    .line 2635
    if-eqz v0, :cond_1

    .line 2636
    iget-object v3, p0, Ljol;->a:[Ljok;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2638
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2639
    new-instance v3, Ljok;

    invoke-direct {v3}, Ljok;-><init>()V

    aput-object v3, v2, v0

    .line 2640
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2641
    invoke-virtual {p1}, Llxy;->a()I

    .line 2638
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2632
    :cond_2
    iget-object v0, p0, Ljol;->a:[Ljok;

    array-length v0, v0

    goto :goto_1

    .line 2644
    :cond_3
    new-instance v3, Ljok;

    invoke-direct {v3}, Ljok;-><init>()V

    aput-object v3, v2, v0

    .line 2645
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2646
    iput-object v2, p0, Ljol;->a:[Ljok;

    goto :goto_0

    .line 2650
    :sswitch_2
    iget-object v0, p0, Ljol;->b:Ljon;

    if-nez v0, :cond_4

    .line 2651
    new-instance v0, Ljon;

    invoke-direct {v0}, Ljon;-><init>()V

    iput-object v0, p0, Ljol;->b:Ljon;

    .line 2653
    :cond_4
    iget-object v0, p0, Ljol;->b:Ljon;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2620
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1581
    iget-object v0, p0, Ljol;->a:[Ljok;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljol;->a:[Ljok;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1582
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljol;->a:[Ljok;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1583
    iget-object v1, p0, Ljol;->a:[Ljok;

    aget-object v1, v1, v0

    .line 1584
    if-eqz v1, :cond_0

    .line 1585
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1582
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1589
    :cond_1
    iget-object v0, p0, Ljol;->b:Ljon;

    if-eqz v0, :cond_2

    .line 1590
    const/4 v0, 0x2

    iget-object v1, p0, Ljol;->b:Ljon;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1592
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1593
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 1597
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 1598
    iget-object v0, p0, Ljol;->a:[Ljok;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljol;->a:[Ljok;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1599
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljol;->a:[Ljok;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1600
    iget-object v2, p0, Ljol;->a:[Ljok;

    aget-object v2, v2, v0

    .line 1601
    if-eqz v2, :cond_0

    .line 1602
    const/4 v3, 0x1

    .line 1603
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1599
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1607
    :cond_1
    iget-object v0, p0, Ljol;->b:Ljon;

    if-eqz v0, :cond_2

    .line 1608
    const/4 v0, 0x2

    iget-object v2, p0, Ljol;->b:Ljon;

    .line 1609
    invoke-static {v0, v2}, Llxz;->d(ILlyi;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1611
    :cond_2
    return v1
.end method
