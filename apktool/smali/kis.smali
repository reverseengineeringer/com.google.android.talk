.class public final Lkis;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkis;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Lkis;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Lkjp;

.field public c:[Lkiq;

.field public d:[Lkit;

.field public e:[Lkiw;

.field public f:[Lkiv;

.field public g:Lkip;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2579
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3584
    iput-object v1, p0, Lkis;->a:Ljava/lang/Integer;

    .line 3585
    iput-object v1, p0, Lkis;->b:Lkjp;

    .line 3586
    invoke-static {}, Lkiq;->d()[Lkiq;

    move-result-object v0

    iput-object v0, p0, Lkis;->c:[Lkiq;

    .line 3587
    invoke-static {}, Lkit;->d()[Lkit;

    move-result-object v0

    iput-object v0, p0, Lkis;->d:[Lkit;

    .line 3588
    invoke-static {}, Lkiw;->d()[Lkiw;

    move-result-object v0

    iput-object v0, p0, Lkis;->e:[Lkiw;

    .line 3589
    invoke-static {}, Lkiv;->d()[Lkiv;

    move-result-object v0

    iput-object v0, p0, Lkis;->f:[Lkiv;

    .line 3590
    iput-object v1, p0, Lkis;->g:Lkip;

    .line 3591
    iput-object v1, p0, Lkis;->eD:Llyd;

    .line 3592
    const/4 v0, -0x1

    iput v0, p0, Lkis;->eE:I

    .line 2581
    return-void
.end method

.method public static d()[Lkis;
    .locals 2

    .prologue
    .line 2545
    sget-object v0, Lkis;->h:[Lkis;

    if-nez v0, :cond_1

    .line 2546
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2548
    :try_start_0
    sget-object v0, Lkis;->h:[Lkis;

    if-nez v0, :cond_0

    .line 2549
    const/4 v0, 0x0

    new-array v0, v0, [Lkis;

    sput-object v0, Lkis;->h:[Lkis;

    .line 2551
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2553
    :cond_1
    sget-object v0, Lkis;->h:[Lkis;

    return-object v0

    .line 2551
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

    .line 3702
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3703
    sparse-switch v0, :sswitch_data_0

    .line 3707
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3708
    :sswitch_0
    return-object p0

    .line 3713
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3714
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3719
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkis;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3725
    :sswitch_2
    iget-object v0, p0, Lkis;->b:Lkjp;

    if-nez v0, :cond_1

    .line 3726
    new-instance v0, Lkjp;

    invoke-direct {v0}, Lkjp;-><init>()V

    iput-object v0, p0, Lkis;->b:Lkjp;

    .line 3728
    :cond_1
    iget-object v0, p0, Lkis;->b:Lkjp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3732
    :sswitch_3
    const/16 v0, 0x1a

    .line 3733
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3734
    iget-object v0, p0, Lkis;->c:[Lkiq;

    if-nez v0, :cond_3

    move v0, v1

    .line 3735
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkiq;

    .line 3737
    if-eqz v0, :cond_2

    .line 3738
    iget-object v3, p0, Lkis;->c:[Lkiq;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3740
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 3741
    new-instance v3, Lkiq;

    invoke-direct {v3}, Lkiq;-><init>()V

    aput-object v3, v2, v0

    .line 3742
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3743
    invoke-virtual {p1}, Llxy;->a()I

    .line 3740
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3734
    :cond_3
    iget-object v0, p0, Lkis;->c:[Lkiq;

    array-length v0, v0

    goto :goto_1

    .line 3746
    :cond_4
    new-instance v3, Lkiq;

    invoke-direct {v3}, Lkiq;-><init>()V

    aput-object v3, v2, v0

    .line 3747
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3748
    iput-object v2, p0, Lkis;->c:[Lkiq;

    goto :goto_0

    .line 3752
    :sswitch_4
    const/16 v0, 0x22

    .line 3753
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3754
    iget-object v0, p0, Lkis;->d:[Lkit;

    if-nez v0, :cond_6

    move v0, v1

    .line 3755
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lkit;

    .line 3757
    if-eqz v0, :cond_5

    .line 3758
    iget-object v3, p0, Lkis;->d:[Lkit;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3760
    :cond_5
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 3761
    new-instance v3, Lkit;

    invoke-direct {v3}, Lkit;-><init>()V

    aput-object v3, v2, v0

    .line 3762
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3763
    invoke-virtual {p1}, Llxy;->a()I

    .line 3760
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3754
    :cond_6
    iget-object v0, p0, Lkis;->d:[Lkit;

    array-length v0, v0

    goto :goto_3

    .line 3766
    :cond_7
    new-instance v3, Lkit;

    invoke-direct {v3}, Lkit;-><init>()V

    aput-object v3, v2, v0

    .line 3767
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3768
    iput-object v2, p0, Lkis;->d:[Lkit;

    goto/16 :goto_0

    .line 3772
    :sswitch_5
    const/16 v0, 0x2a

    .line 3773
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3774
    iget-object v0, p0, Lkis;->e:[Lkiw;

    if-nez v0, :cond_9

    move v0, v1

    .line 3775
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lkiw;

    .line 3777
    if-eqz v0, :cond_8

    .line 3778
    iget-object v3, p0, Lkis;->e:[Lkiw;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3780
    :cond_8
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_a

    .line 3781
    new-instance v3, Lkiw;

    invoke-direct {v3}, Lkiw;-><init>()V

    aput-object v3, v2, v0

    .line 3782
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3783
    invoke-virtual {p1}, Llxy;->a()I

    .line 3780
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3774
    :cond_9
    iget-object v0, p0, Lkis;->e:[Lkiw;

    array-length v0, v0

    goto :goto_5

    .line 3786
    :cond_a
    new-instance v3, Lkiw;

    invoke-direct {v3}, Lkiw;-><init>()V

    aput-object v3, v2, v0

    .line 3787
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3788
    iput-object v2, p0, Lkis;->e:[Lkiw;

    goto/16 :goto_0

    .line 3792
    :sswitch_6
    const/16 v0, 0x32

    .line 3793
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3794
    iget-object v0, p0, Lkis;->f:[Lkiv;

    if-nez v0, :cond_c

    move v0, v1

    .line 3795
    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lkiv;

    .line 3797
    if-eqz v0, :cond_b

    .line 3798
    iget-object v3, p0, Lkis;->f:[Lkiv;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3800
    :cond_b
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_d

    .line 3801
    new-instance v3, Lkiv;

    invoke-direct {v3}, Lkiv;-><init>()V

    aput-object v3, v2, v0

    .line 3802
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3803
    invoke-virtual {p1}, Llxy;->a()I

    .line 3800
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 3794
    :cond_c
    iget-object v0, p0, Lkis;->f:[Lkiv;

    array-length v0, v0

    goto :goto_7

    .line 3806
    :cond_d
    new-instance v3, Lkiv;

    invoke-direct {v3}, Lkiv;-><init>()V

    aput-object v3, v2, v0

    .line 3807
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3808
    iput-object v2, p0, Lkis;->f:[Lkiv;

    goto/16 :goto_0

    .line 3812
    :sswitch_7
    iget-object v0, p0, Lkis;->g:Lkip;

    if-nez v0, :cond_e

    .line 3813
    new-instance v0, Lkip;

    invoke-direct {v0}, Lkip;-><init>()V

    iput-object v0, p0, Lkis;->g:Lkip;

    .line 3815
    :cond_e
    iget-object v0, p0, Lkis;->g:Lkip;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3703
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 3714
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2599
    iget-object v0, p0, Lkis;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2600
    const/4 v0, 0x1

    iget-object v2, p0, Lkis;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 2602
    :cond_0
    iget-object v0, p0, Lkis;->b:Lkjp;

    if-eqz v0, :cond_1

    .line 2603
    const/4 v0, 0x2

    iget-object v2, p0, Lkis;->b:Lkjp;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2605
    :cond_1
    iget-object v0, p0, Lkis;->c:[Lkiq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkis;->c:[Lkiq;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 2606
    :goto_0
    iget-object v2, p0, Lkis;->c:[Lkiq;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2607
    iget-object v2, p0, Lkis;->c:[Lkiq;

    aget-object v2, v2, v0

    .line 2608
    if-eqz v2, :cond_2

    .line 2609
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2606
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2613
    :cond_3
    iget-object v0, p0, Lkis;->d:[Lkit;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkis;->d:[Lkit;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 2614
    :goto_1
    iget-object v2, p0, Lkis;->d:[Lkit;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 2615
    iget-object v2, p0, Lkis;->d:[Lkit;

    aget-object v2, v2, v0

    .line 2616
    if-eqz v2, :cond_4

    .line 2617
    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2614
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2621
    :cond_5
    iget-object v0, p0, Lkis;->e:[Lkiw;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lkis;->e:[Lkiw;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    .line 2622
    :goto_2
    iget-object v2, p0, Lkis;->e:[Lkiw;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 2623
    iget-object v2, p0, Lkis;->e:[Lkiw;

    aget-object v2, v2, v0

    .line 2624
    if-eqz v2, :cond_6

    .line 2625
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 2622
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2629
    :cond_7
    iget-object v0, p0, Lkis;->f:[Lkiv;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkis;->f:[Lkiv;

    array-length v0, v0

    if-lez v0, :cond_9

    .line 2630
    :goto_3
    iget-object v0, p0, Lkis;->f:[Lkiv;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 2631
    iget-object v0, p0, Lkis;->f:[Lkiv;

    aget-object v0, v0, v1

    .line 2632
    if-eqz v0, :cond_8

    .line 2633
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 2630
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2637
    :cond_9
    iget-object v0, p0, Lkis;->g:Lkip;

    if-eqz v0, :cond_a

    .line 2638
    const/4 v0, 0x7

    iget-object v1, p0, Lkis;->g:Lkip;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2640
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2641
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2645
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2646
    iget-object v2, p0, Lkis;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 2647
    const/4 v2, 0x1

    iget-object v3, p0, Lkis;->a:Ljava/lang/Integer;

    .line 2648
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Llxz;->e(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2650
    :cond_0
    iget-object v2, p0, Lkis;->b:Lkjp;

    if-eqz v2, :cond_1

    .line 2651
    const/4 v2, 0x2

    iget-object v3, p0, Lkis;->b:Lkjp;

    .line 2652
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2654
    :cond_1
    iget-object v2, p0, Lkis;->c:[Lkiq;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkis;->c:[Lkiq;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 2655
    :goto_0
    iget-object v3, p0, Lkis;->c:[Lkiq;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 2656
    iget-object v3, p0, Lkis;->c:[Lkiq;

    aget-object v3, v3, v0

    .line 2657
    if-eqz v3, :cond_2

    .line 2658
    const/4 v4, 0x3

    .line 2659
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2655
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2663
    :cond_4
    iget-object v2, p0, Lkis;->d:[Lkit;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lkis;->d:[Lkit;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v0

    move v0, v1

    .line 2664
    :goto_1
    iget-object v3, p0, Lkis;->d:[Lkit;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 2665
    iget-object v3, p0, Lkis;->d:[Lkit;

    aget-object v3, v3, v0

    .line 2666
    if-eqz v3, :cond_5

    .line 2667
    const/4 v4, 0x4

    .line 2668
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2664
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 2672
    :cond_7
    iget-object v2, p0, Lkis;->e:[Lkiw;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lkis;->e:[Lkiw;

    array-length v2, v2

    if-lez v2, :cond_a

    move v2, v0

    move v0, v1

    .line 2673
    :goto_2
    iget-object v3, p0, Lkis;->e:[Lkiw;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    .line 2674
    iget-object v3, p0, Lkis;->e:[Lkiw;

    aget-object v3, v3, v0

    .line 2675
    if-eqz v3, :cond_8

    .line 2676
    const/4 v4, 0x5

    .line 2677
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2673
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 2681
    :cond_a
    iget-object v2, p0, Lkis;->f:[Lkiv;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lkis;->f:[Lkiv;

    array-length v2, v2

    if-lez v2, :cond_c

    .line 2682
    :goto_3
    iget-object v2, p0, Lkis;->f:[Lkiv;

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 2683
    iget-object v2, p0, Lkis;->f:[Lkiv;

    aget-object v2, v2, v1

    .line 2684
    if-eqz v2, :cond_b

    .line 2685
    const/4 v3, 0x6

    .line 2686
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2682
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2690
    :cond_c
    iget-object v1, p0, Lkis;->g:Lkip;

    if-eqz v1, :cond_d

    .line 2691
    const/4 v1, 0x7

    iget-object v2, p0, Lkis;->g:Lkip;

    .line 2692
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2694
    :cond_d
    return v0
.end method
