.class public final Lmmt;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmmt;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile f:[Lmmt;


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[Lmms;

.field public d:Ljava/lang/Boolean;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 580
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1585
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Lmmt;->a:[Ljava/lang/String;

    .line 1586
    iput-object v1, p0, Lmmt;->b:Ljava/lang/String;

    .line 1587
    invoke-static {}, Lmms;->d()[Lmms;

    move-result-object v0

    iput-object v0, p0, Lmmt;->c:[Lmms;

    .line 1588
    iput-object v1, p0, Lmmt;->d:Ljava/lang/Boolean;

    .line 1589
    iput-object v1, p0, Lmmt;->e:Ljava/lang/Boolean;

    .line 1590
    iput-object v1, p0, Lmmt;->eD:Llyd;

    .line 1591
    const/4 v0, -0x1

    iput v0, p0, Lmmt;->eE:I

    .line 582
    return-void
.end method

.method public static d()[Lmmt;
    .locals 2

    .prologue
    .line 552
    sget-object v0, Lmmt;->f:[Lmmt;

    if-nez v0, :cond_1

    .line 553
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 555
    :try_start_0
    sget-object v0, Lmmt;->f:[Lmmt;

    if-nez v0, :cond_0

    .line 556
    const/4 v0, 0x0

    new-array v0, v0, [Lmmt;

    sput-object v0, Lmmt;->f:[Lmmt;

    .line 558
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_1
    sget-object v0, Lmmt;->f:[Lmmt;

    return-object v0

    .line 558
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

    .line 2672
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2673
    sparse-switch v0, :sswitch_data_0

    .line 2677
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2678
    :sswitch_0
    return-object p0

    .line 2683
    :sswitch_1
    const/16 v0, 0xa

    .line 2684
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2685
    iget-object v0, p0, Lmmt;->a:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    .line 2686
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 2687
    if-eqz v0, :cond_1

    .line 2688
    iget-object v3, p0, Lmmt;->a:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2690
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2691
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2692
    invoke-virtual {p1}, Llxy;->a()I

    .line 2690
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2685
    :cond_2
    iget-object v0, p0, Lmmt;->a:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 2695
    :cond_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 2696
    iput-object v2, p0, Lmmt;->a:[Ljava/lang/String;

    goto :goto_0

    .line 2700
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmmt;->b:Ljava/lang/String;

    goto :goto_0

    .line 2704
    :sswitch_3
    const/16 v0, 0x1a

    .line 2705
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2706
    iget-object v0, p0, Lmmt;->c:[Lmms;

    if-nez v0, :cond_5

    move v0, v1

    .line 2707
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lmms;

    .line 2709
    if-eqz v0, :cond_4

    .line 2710
    iget-object v3, p0, Lmmt;->c:[Lmms;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2712
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 2713
    new-instance v3, Lmms;

    invoke-direct {v3}, Lmms;-><init>()V

    aput-object v3, v2, v0

    .line 2714
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2715
    invoke-virtual {p1}, Llxy;->a()I

    .line 2712
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2706
    :cond_5
    iget-object v0, p0, Lmmt;->c:[Lmms;

    array-length v0, v0

    goto :goto_3

    .line 2718
    :cond_6
    new-instance v3, Lmms;

    invoke-direct {v3}, Lmms;-><init>()V

    aput-object v3, v2, v0

    .line 2719
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2720
    iput-object v2, p0, Lmmt;->c:[Lmms;

    goto/16 :goto_0

    .line 2724
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmmt;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2728
    :sswitch_5
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmmt;->e:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 2673
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 598
    iget-object v0, p0, Lmmt;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmmt;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 599
    :goto_0
    iget-object v2, p0, Lmmt;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 600
    iget-object v2, p0, Lmmt;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 601
    if-eqz v2, :cond_0

    .line 602
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 599
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    iget-object v0, p0, Lmmt;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 607
    const/4 v0, 0x2

    iget-object v2, p0, Lmmt;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 609
    :cond_2
    iget-object v0, p0, Lmmt;->c:[Lmms;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmmt;->c:[Lmms;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 610
    :goto_1
    iget-object v0, p0, Lmmt;->c:[Lmms;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 611
    iget-object v0, p0, Lmmt;->c:[Lmms;

    aget-object v0, v0, v1

    .line 612
    if-eqz v0, :cond_3

    .line 613
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 610
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 617
    :cond_4
    iget-object v0, p0, Lmmt;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 618
    const/4 v0, 0x4

    iget-object v1, p0, Lmmt;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 620
    :cond_5
    iget-object v0, p0, Lmmt;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 621
    const/4 v0, 0x5

    iget-object v1, p0, Lmmt;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 623
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 624
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 628
    invoke-super {p0}, Llyb;->b()I

    move-result v4

    .line 629
    iget-object v0, p0, Lmmt;->a:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmmt;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    .line 632
    :goto_0
    iget-object v5, p0, Lmmt;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 633
    iget-object v5, p0, Lmmt;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 634
    if-eqz v5, :cond_0

    .line 635
    add-int/lit8 v3, v3, 0x1

    .line 637
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 632
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_1
    add-int v0, v4, v2

    .line 641
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 643
    :goto_1
    iget-object v2, p0, Lmmt;->b:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 644
    const/4 v2, 0x2

    iget-object v3, p0, Lmmt;->b:Ljava/lang/String;

    .line 645
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 647
    :cond_2
    iget-object v2, p0, Lmmt;->c:[Lmms;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmmt;->c:[Lmms;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 648
    :goto_2
    iget-object v2, p0, Lmmt;->c:[Lmms;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 649
    iget-object v2, p0, Lmmt;->c:[Lmms;

    aget-object v2, v2, v1

    .line 650
    if-eqz v2, :cond_3

    .line 651
    const/4 v3, 0x3

    .line 652
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 648
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 656
    :cond_4
    iget-object v1, p0, Lmmt;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 657
    const/4 v1, 0x4

    iget-object v2, p0, Lmmt;->d:Ljava/lang/Boolean;

    .line 658
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 658
    add-int/2addr v0, v1

    .line 660
    :cond_5
    iget-object v1, p0, Lmmt;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 661
    const/4 v1, 0x5

    iget-object v2, p0, Lmmt;->e:Ljava/lang/Boolean;

    .line 662
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 662
    add-int/2addr v0, v1

    .line 664
    :cond_6
    return v0

    :cond_7
    move v0, v4

    goto :goto_1
.end method
