.class public final Live;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Live;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Livg;

.field public e:[Ljava/lang/String;

.field public f:Liuy;

.field public g:[I

.field public h:Livd;

.field public i:Livi;

.field public j:[I

.field public k:Livf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2443
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3448
    iput-object v1, p0, Live;->a:Ljava/lang/String;

    .line 3449
    iput-object v1, p0, Live;->b:Ljava/lang/Integer;

    .line 3450
    iput-object v1, p0, Live;->c:Ljava/lang/Integer;

    .line 3451
    iput-object v1, p0, Live;->d:Livg;

    .line 3452
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Live;->e:[Ljava/lang/String;

    .line 3453
    iput-object v1, p0, Live;->f:Liuy;

    .line 3454
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Live;->g:[I

    .line 3455
    iput-object v1, p0, Live;->h:Livd;

    .line 3456
    iput-object v1, p0, Live;->i:Livi;

    .line 3457
    sget-object v0, Llyo;->a:[I

    iput-object v0, p0, Live;->j:[I

    .line 3458
    iput-object v1, p0, Live;->k:Livf;

    .line 3459
    iput-object v1, p0, Live;->eD:Llyd;

    .line 3460
    const/4 v0, -0x1

    iput v0, p0, Live;->eE:I

    .line 2445
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3582
    sparse-switch v0, :sswitch_data_0

    .line 3586
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3587
    :sswitch_0
    return-object p0

    .line 3592
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Live;->a:Ljava/lang/String;

    goto :goto_0

    .line 3596
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3597
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3601
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Live;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3607
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3608
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3611
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Live;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3617
    :sswitch_4
    iget-object v0, p0, Live;->d:Livg;

    if-nez v0, :cond_1

    .line 3618
    new-instance v0, Livg;

    invoke-direct {v0}, Livg;-><init>()V

    iput-object v0, p0, Live;->d:Livg;

    .line 3620
    :cond_1
    iget-object v0, p0, Live;->d:Livg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3624
    :sswitch_5
    const/16 v0, 0x2a

    .line 3625
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3626
    iget-object v0, p0, Live;->e:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    .line 3627
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 3628
    if-eqz v0, :cond_2

    .line 3629
    iget-object v3, p0, Live;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3631
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 3632
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3633
    invoke-virtual {p1}, Llxy;->a()I

    .line 3631
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3626
    :cond_3
    iget-object v0, p0, Live;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    .line 3636
    :cond_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 3637
    iput-object v2, p0, Live;->e:[Ljava/lang/String;

    goto :goto_0

    .line 3641
    :sswitch_6
    iget-object v0, p0, Live;->f:Liuy;

    if-nez v0, :cond_5

    .line 3642
    new-instance v0, Liuy;

    invoke-direct {v0}, Liuy;-><init>()V

    iput-object v0, p0, Live;->f:Liuy;

    .line 3644
    :cond_5
    iget-object v0, p0, Live;->f:Liuy;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3648
    :sswitch_7
    const/16 v0, 0x38

    .line 3649
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 3650
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 3652
    :goto_3
    if-ge v3, v4, :cond_7

    .line 3653
    if-eqz v3, :cond_6

    .line 3654
    invoke-virtual {p1}, Llxy;->a()I

    .line 3656
    :cond_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 3657
    packed-switch v6, :pswitch_data_2

    move v0, v2

    .line 3652
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_3

    .line 3662
    :pswitch_2
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_4

    .line 3666
    :cond_7
    if-eqz v2, :cond_0

    .line 3667
    iget-object v0, p0, Live;->g:[I

    if-nez v0, :cond_8

    move v0, v1

    .line 3668
    :goto_5
    if-nez v0, :cond_9

    array-length v3, v5

    if-ne v2, v3, :cond_9

    .line 3669
    iput-object v5, p0, Live;->g:[I

    goto/16 :goto_0

    .line 3667
    :cond_8
    iget-object v0, p0, Live;->g:[I

    array-length v0, v0

    goto :goto_5

    .line 3671
    :cond_9
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 3672
    if-eqz v0, :cond_a

    .line 3673
    iget-object v4, p0, Live;->g:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3675
    :cond_a
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3676
    iput-object v3, p0, Live;->g:[I

    goto/16 :goto_0

    .line 3682
    :sswitch_8
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3683
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3686
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 3687
    :goto_6
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_b

    .line 3688
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    goto :goto_6

    .line 3693
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 3697
    :cond_b
    if-eqz v0, :cond_f

    .line 3698
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 3699
    iget-object v2, p0, Live;->g:[I

    if-nez v2, :cond_d

    move v2, v1

    .line 3700
    :goto_7
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 3701
    if-eqz v2, :cond_c

    .line 3702
    iget-object v0, p0, Live;->g:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3704
    :cond_c
    :goto_8
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_e

    .line 3705
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 3706
    packed-switch v5, :pswitch_data_4

    goto :goto_8

    .line 3711
    :pswitch_4
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_8

    .line 3699
    :cond_d
    iget-object v2, p0, Live;->g:[I

    array-length v2, v2

    goto :goto_7

    .line 3715
    :cond_e
    iput-object v4, p0, Live;->g:[I

    .line 3717
    :cond_f
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3721
    :sswitch_9
    iget-object v0, p0, Live;->h:Livd;

    if-nez v0, :cond_10

    .line 3722
    new-instance v0, Livd;

    invoke-direct {v0}, Livd;-><init>()V

    iput-object v0, p0, Live;->h:Livd;

    .line 3724
    :cond_10
    iget-object v0, p0, Live;->h:Livd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3728
    :sswitch_a
    iget-object v0, p0, Live;->i:Livi;

    if-nez v0, :cond_11

    .line 3729
    new-instance v0, Livi;

    invoke-direct {v0}, Livi;-><init>()V

    iput-object v0, p0, Live;->i:Livi;

    .line 3731
    :cond_11
    iget-object v0, p0, Live;->i:Livi;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3735
    :sswitch_b
    const/16 v0, 0x50

    .line 3736
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v4

    .line 3737
    new-array v5, v4, [I

    move v3, v1

    move v2, v1

    .line 3739
    :goto_9
    if-ge v3, v4, :cond_13

    .line 3740
    if-eqz v3, :cond_12

    .line 3741
    invoke-virtual {p1}, Llxy;->a()I

    .line 3743
    :cond_12
    invoke-virtual {p1}, Llxy;->f()I

    move-result v6

    .line 3744
    packed-switch v6, :pswitch_data_5

    move v0, v2

    .line 3739
    :goto_a
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_9

    .line 3747
    :pswitch_5
    add-int/lit8 v0, v2, 0x1

    aput v6, v5, v2

    goto :goto_a

    .line 3751
    :cond_13
    if-eqz v2, :cond_0

    .line 3752
    iget-object v0, p0, Live;->j:[I

    if-nez v0, :cond_14

    move v0, v1

    .line 3753
    :goto_b
    if-nez v0, :cond_15

    array-length v3, v5

    if-ne v2, v3, :cond_15

    .line 3754
    iput-object v5, p0, Live;->j:[I

    goto/16 :goto_0

    .line 3752
    :cond_14
    iget-object v0, p0, Live;->j:[I

    array-length v0, v0

    goto :goto_b

    .line 3756
    :cond_15
    add-int v3, v0, v2

    new-array v3, v3, [I

    .line 3757
    if-eqz v0, :cond_16

    .line 3758
    iget-object v4, p0, Live;->j:[I

    invoke-static {v4, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3760
    :cond_16
    invoke-static {v5, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3761
    iput-object v3, p0, Live;->j:[I

    goto/16 :goto_0

    .line 3767
    :sswitch_c
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 3768
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 3771
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 3772
    :goto_c
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_17

    .line 3773
    invoke-virtual {p1}, Llxy;->f()I

    move-result v4

    packed-switch v4, :pswitch_data_6

    goto :goto_c

    .line 3776
    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3780
    :cond_17
    if-eqz v0, :cond_1b

    .line 3781
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 3782
    iget-object v2, p0, Live;->j:[I

    if-nez v2, :cond_19

    move v2, v1

    .line 3783
    :goto_d
    add-int/2addr v0, v2

    new-array v4, v0, [I

    .line 3784
    if-eqz v2, :cond_18

    .line 3785
    iget-object v0, p0, Live;->j:[I

    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3787
    :cond_18
    :goto_e
    invoke-virtual {p1}, Llxy;->q()I

    move-result v0

    if-lez v0, :cond_1a

    .line 3788
    invoke-virtual {p1}, Llxy;->f()I

    move-result v5

    .line 3789
    packed-switch v5, :pswitch_data_7

    goto :goto_e

    .line 3792
    :pswitch_7
    add-int/lit8 v0, v2, 0x1

    aput v5, v4, v2

    move v2, v0

    goto :goto_e

    .line 3782
    :cond_19
    iget-object v2, p0, Live;->j:[I

    array-length v2, v2

    goto :goto_d

    .line 3796
    :cond_1a
    iput-object v4, p0, Live;->j:[I

    .line 3798
    :cond_1b
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 3802
    :sswitch_d
    iget-object v0, p0, Live;->k:Livf;

    if-nez v0, :cond_1c

    .line 3803
    new-instance v0, Livf;

    invoke-direct {v0}, Livf;-><init>()V

    iput-object v0, p0, Live;->k:Livf;

    .line 3805
    :cond_1c
    iget-object v0, p0, Live;->k:Livf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 3582
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x3a -> :sswitch_8
        0x42 -> :sswitch_9
        0x4a -> :sswitch_a
        0x50 -> :sswitch_b
        0x52 -> :sswitch_c
        0x5a -> :sswitch_d
    .end sparse-switch

    .line 3597
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3608
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3657
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3688
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 3706
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 3744
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 3773
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
    .end packed-switch

    .line 3789
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2467
    const/4 v0, 0x1

    iget-object v2, p0, Live;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 2468
    const/4 v0, 0x2

    iget-object v2, p0, Live;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 2469
    iget-object v0, p0, Live;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 2470
    const/4 v0, 0x3

    iget-object v2, p0, Live;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 2472
    :cond_0
    iget-object v0, p0, Live;->d:Livg;

    if-eqz v0, :cond_1

    .line 2473
    const/4 v0, 0x4

    iget-object v2, p0, Live;->d:Livg;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2475
    :cond_1
    iget-object v0, p0, Live;->e:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Live;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 2476
    :goto_0
    iget-object v2, p0, Live;->e:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2477
    iget-object v2, p0, Live;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 2478
    if-eqz v2, :cond_2

    .line 2479
    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 2476
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2483
    :cond_3
    iget-object v0, p0, Live;->f:Liuy;

    if-eqz v0, :cond_4

    .line 2484
    const/4 v0, 0x6

    iget-object v2, p0, Live;->f:Liuy;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2486
    :cond_4
    iget-object v0, p0, Live;->g:[I

    if-eqz v0, :cond_5

    iget-object v0, p0, Live;->g:[I

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    .line 2487
    :goto_1
    iget-object v2, p0, Live;->g:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 2488
    const/4 v2, 0x7

    iget-object v3, p0, Live;->g:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Llxz;->a(II)V

    .line 2487
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2491
    :cond_5
    iget-object v0, p0, Live;->h:Livd;

    if-eqz v0, :cond_6

    .line 2492
    const/16 v0, 0x8

    iget-object v2, p0, Live;->h:Livd;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2494
    :cond_6
    iget-object v0, p0, Live;->i:Livi;

    if-eqz v0, :cond_7

    .line 2495
    const/16 v0, 0x9

    iget-object v2, p0, Live;->i:Livi;

    invoke-virtual {p1, v0, v2}, Llxz;->b(ILlyi;)V

    .line 2497
    :cond_7
    iget-object v0, p0, Live;->j:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Live;->j:[I

    array-length v0, v0

    if-lez v0, :cond_8

    .line 2498
    :goto_2
    iget-object v0, p0, Live;->j:[I

    array-length v0, v0

    if-ge v1, v0, :cond_8

    .line 2499
    const/16 v0, 0xa

    iget-object v2, p0, Live;->j:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Llxz;->a(II)V

    .line 2498
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2502
    :cond_8
    iget-object v0, p0, Live;->k:Livf;

    if-eqz v0, :cond_9

    .line 2503
    const/16 v0, 0xb

    iget-object v1, p0, Live;->k:Livf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2505
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2506
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2510
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2511
    const/4 v1, 0x1

    iget-object v3, p0, Live;->a:Ljava/lang/String;

    .line 2512
    invoke-static {v1, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2513
    const/4 v1, 0x2

    iget-object v3, p0, Live;->b:Ljava/lang/Integer;

    .line 2514
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2515
    iget-object v1, p0, Live;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2516
    const/4 v1, 0x3

    iget-object v3, p0, Live;->c:Ljava/lang/Integer;

    .line 2517
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2519
    :cond_0
    iget-object v1, p0, Live;->d:Livg;

    if-eqz v1, :cond_1

    .line 2520
    const/4 v1, 0x4

    iget-object v3, p0, Live;->d:Livg;

    .line 2521
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2523
    :cond_1
    iget-object v1, p0, Live;->e:[Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Live;->e:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v2

    move v3, v2

    move v4, v2

    .line 2526
    :goto_0
    iget-object v5, p0, Live;->e:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 2527
    iget-object v5, p0, Live;->e:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 2528
    if-eqz v5, :cond_2

    .line 2529
    add-int/lit8 v4, v4, 0x1

    .line 2531
    invoke-static {v5}, Llxz;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    .line 2526
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2534
    :cond_3
    add-int/2addr v0, v3

    .line 2535
    mul-int/lit8 v1, v4, 0x1

    add-int/2addr v0, v1

    .line 2537
    :cond_4
    iget-object v1, p0, Live;->f:Liuy;

    if-eqz v1, :cond_5

    .line 2538
    const/4 v1, 0x6

    iget-object v3, p0, Live;->f:Liuy;

    .line 2539
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2541
    :cond_5
    iget-object v1, p0, Live;->g:[I

    if-eqz v1, :cond_7

    iget-object v1, p0, Live;->g:[I

    array-length v1, v1

    if-lez v1, :cond_7

    move v1, v2

    move v3, v2

    .line 2543
    :goto_1
    iget-object v4, p0, Live;->g:[I

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 2544
    iget-object v4, p0, Live;->g:[I

    aget v4, v4, v1

    .line 2546
    invoke-static {v4}, Llxz;->e(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 2543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2548
    :cond_6
    add-int/2addr v0, v3

    .line 2549
    iget-object v1, p0, Live;->g:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2551
    :cond_7
    iget-object v1, p0, Live;->h:Livd;

    if-eqz v1, :cond_8

    .line 2552
    const/16 v1, 0x8

    iget-object v3, p0, Live;->h:Livd;

    .line 2553
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2555
    :cond_8
    iget-object v1, p0, Live;->i:Livi;

    if-eqz v1, :cond_9

    .line 2556
    const/16 v1, 0x9

    iget-object v3, p0, Live;->i:Livi;

    .line 2557
    invoke-static {v1, v3}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2559
    :cond_9
    iget-object v1, p0, Live;->j:[I

    if-eqz v1, :cond_b

    iget-object v1, p0, Live;->j:[I

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v2

    .line 2561
    :goto_2
    iget-object v3, p0, Live;->j:[I

    array-length v3, v3

    if-ge v2, v3, :cond_a

    .line 2562
    iget-object v3, p0, Live;->j:[I

    aget v3, v3, v2

    .line 2564
    invoke-static {v3}, Llxz;->e(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2561
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2566
    :cond_a
    add-int/2addr v0, v1

    .line 2567
    iget-object v1, p0, Live;->j:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 2569
    :cond_b
    iget-object v1, p0, Live;->k:Livf;

    if-eqz v1, :cond_c

    .line 2570
    const/16 v1, 0xb

    iget-object v2, p0, Live;->k:Livf;

    .line 2571
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2573
    :cond_c
    return v0
.end method
