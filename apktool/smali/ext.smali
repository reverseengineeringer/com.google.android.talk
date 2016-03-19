.class final Lext;
.super Landroid/os/HandlerThread;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 940
    const-string v0, "GifDecoder"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 941
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 22

    .prologue
    .line 945
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lexs;

    .line 946
    if-eqz v2, :cond_0

    .line 1036
    iget-object v3, v2, Lexs;->z:Landroid/graphics/Bitmap;

    .line 946
    if-eqz v3, :cond_0

    .line 2036
    iget-boolean v3, v2, Lexs;->C:Z

    .line 946
    if-eqz v3, :cond_1

    .line 947
    :cond_0
    const/4 v2, 0x1

    .line 984
    :goto_0
    return v2

    .line 950
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 984
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3498
    :cond_2
    :pswitch_1
    :try_start_0
    iget v3, v2, Lexs;->p:I

    packed-switch v3, :pswitch_data_1

    .line 3436
    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput v3, v2, Lexs;->p:I

    .line 3437
    const/4 v3, 0x0

    iput-boolean v3, v2, Lexs;->q:Z

    .line 3439
    const/4 v3, 0x0

    iput-boolean v3, v2, Lexs;->D:Z

    .line 3440
    const/16 v3, 0x64

    iput v3, v2, Lexs;->A:I

    .line 3441
    const/4 v3, 0x0

    iput-object v3, v2, Lexs;->g:[I

    .line 3444
    :cond_4
    :goto_2
    :sswitch_0
    iget-object v3, v2, Lexs;->E:[B

    iget v4, v2, Lexs;->L:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lexs;->L:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 3445
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 3449
    :sswitch_1
    iget-object v3, v2, Lexs;->E:[B

    iget v4, v2, Lexs;->L:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lexs;->L:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 3450
    sparse-switch v3, :sswitch_data_1

    .line 3476
    invoke-virtual {v2}, Lexs;->m()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 958
    :catch_0
    move-exception v3

    .line 4036
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->D:Z

    .line 5036
    :cond_5
    :goto_3
    iget-boolean v3, v2, Lexs;->D:Z

    .line 962
    if-eqz v3, :cond_6

    .line 6036
    iget v3, v2, Lexs;->y:I

    .line 963
    if-nez v3, :cond_2a

    .line 7036
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->b:Z

    .line 965
    const-string v3, "Babel"

    const-string v4, "Could not read first frame of the gif."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12036
    :cond_6
    :goto_4
    iget-boolean v3, v2, Lexs;->D:Z

    .line 974
    if-eqz v3, :cond_7

    .line 13036
    iget-boolean v3, v2, Lexs;->b:Z

    .line 974
    if-nez v3, :cond_7

    .line 14036
    iget-boolean v3, v2, Lexs;->c:Z

    .line 974
    if-eqz v3, :cond_2

    .line 15036
    :cond_7
    iget-object v3, v2, Lexs;->B:Landroid/os/Handler;

    .line 16036
    iget-object v4, v2, Lexs;->B:Landroid/os/Handler;

    .line 976
    const/16 v5, 0xb

    .line 17036
    iget v2, v2, Lexs;->A:I

    .line 976
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 975
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 977
    const/4 v2, 0x1

    goto :goto_0

    .line 3501
    :pswitch_2
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, v2, Lexs;->w:Z

    goto :goto_1

    .line 3504
    :pswitch_3
    iget-boolean v3, v2, Lexs;->w:Z

    if-eqz v3, :cond_3

    .line 3505
    iget-object v3, v2, Lexs;->x:[I

    const/4 v4, 0x0

    iget-object v5, v2, Lexs;->H:[I

    const/4 v6, 0x0

    iget-object v7, v2, Lexs;->x:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 3509
    :pswitch_4
    const/4 v3, 0x0

    iput-boolean v3, v2, Lexs;->w:Z

    .line 3512
    const/4 v3, 0x0

    .line 3513
    iget-boolean v4, v2, Lexs;->q:Z

    if-nez v4, :cond_8

    .line 3514
    iget v3, v2, Lexs;->d:I

    .line 3516
    :cond_8
    const/4 v4, 0x0

    move v5, v4

    :goto_5
    iget v4, v2, Lexs;->m:I

    if-ge v5, v4, :cond_3

    .line 3517
    iget v4, v2, Lexs;->k:I

    add-int/2addr v4, v5

    iget v6, v2, Lexs;->F:I

    mul-int/2addr v4, v6

    iget v6, v2, Lexs;->j:I

    add-int/2addr v4, v6

    .line 3518
    iget v6, v2, Lexs;->l:I

    add-int/2addr v6, v4

    .line 3519
    :goto_6
    if-ge v4, v6, :cond_9

    .line 3520
    iget-object v7, v2, Lexs;->H:[I

    aput v3, v7, v4

    .line 3519
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3516
    :cond_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_5

    .line 3533
    :sswitch_2
    iget v3, v2, Lexs;->L:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lexs;->L:I

    .line 3535
    iget-object v3, v2, Lexs;->E:[B

    iget v4, v2, Lexs;->L:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lexs;->L:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 3537
    and-int/lit8 v4, v3, 0x1c

    shr-int/lit8 v4, v4, 0x2

    iput v4, v2, Lexs;->p:I

    .line 3538
    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v2, Lexs;->q:Z

    .line 3539
    invoke-virtual {v2}, Lexs;->l()I

    move-result v3

    mul-int/lit8 v3, v3, 0xa

    iput v3, v2, Lexs;->A:I

    .line 3545
    iget v3, v2, Lexs;->A:I

    const/16 v4, 0xa

    if-gt v3, v4, :cond_a

    .line 3546
    const/16 v3, 0x64

    iput v3, v2, Lexs;->A:I

    .line 3549
    :cond_a
    iget-object v3, v2, Lexs;->E:[B

    iget v4, v2, Lexs;->L:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lexs;->L:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lexs;->r:I

    .line 3551
    iget v3, v2, Lexs;->L:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lexs;->L:I

    goto/16 :goto_2

    .line 3538
    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    .line 3455
    :sswitch_3
    invoke-virtual {v2}, Lexs;->k()I

    .line 3456
    const/4 v3, 0x1

    .line 3457
    const/4 v4, 0x0

    :goto_8
    sget-object v5, Lexs;->a:[B

    array-length v5, v5

    if-ge v4, v5, :cond_c

    .line 3458
    iget-object v5, v2, Lexs;->o:[B

    aget-byte v5, v5, v4

    sget-object v6, Lexs;->a:[B

    aget-byte v6, v6, v4

    if-eq v5, v6, :cond_e

    .line 3459
    const/4 v3, 0x0

    .line 3463
    :cond_c
    if-eqz v3, :cond_f

    .line 3560
    :cond_d
    invoke-virtual {v2}, Lexs;->k()I

    move-result v3

    .line 3561
    if-lez v3, :cond_4

    iget-boolean v3, v2, Lexs;->b:Z

    if-eqz v3, :cond_d

    goto/16 :goto_2

    .line 3457
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 3466
    :cond_f
    invoke-virtual {v2}, Lexs;->m()V

    goto/16 :goto_2

    .line 3470
    :sswitch_4
    invoke-virtual {v2}, Lexs;->m()V

    goto/16 :goto_2

    .line 3473
    :sswitch_5
    invoke-virtual {v2}, Lexs;->m()V

    goto/16 :goto_2

    .line 3568
    :sswitch_6
    invoke-virtual {v2}, Lexs;->l()I

    move-result v3

    iput v3, v2, Lexs;->j:I

    .line 3569
    invoke-virtual {v2}, Lexs;->l()I

    move-result v3

    iput v3, v2, Lexs;->k:I

    .line 3571
    invoke-virtual {v2}, Lexs;->l()I

    move-result v3

    .line 3572
    invoke-virtual {v2}, Lexs;->l()I

    move-result v4

    .line 3575
    iget v5, v2, Lexs;->F:I

    iget v6, v2, Lexs;->j:I

    sub-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Lexs;->l:I

    .line 3576
    iget v5, v2, Lexs;->G:I

    iget v6, v2, Lexs;->k:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v2, Lexs;->m:I

    .line 3579
    iput v3, v2, Lexs;->n:I

    .line 3582
    mul-int/2addr v3, v4

    .line 3583
    iget-object v4, v2, Lexs;->v:[B

    array-length v4, v4

    if-le v3, v4, :cond_10

    .line 3584
    new-array v3, v3, [B

    iput-object v3, v2, Lexs;->v:[B

    .line 3587
    :cond_10
    iget-object v3, v2, Lexs;->E:[B

    iget v4, v2, Lexs;->L:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lexs;->L:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xff

    .line 3591
    and-int/lit8 v3, v4, 0x40

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    :goto_9
    iput-boolean v3, v2, Lexs;->i:Z

    .line 3592
    and-int/lit16 v3, v4, 0x80

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    :goto_a
    iput-boolean v3, v2, Lexs;->e:Z

    .line 3593
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    and-int/lit8 v3, v4, 0x7

    add-int/lit8 v3, v3, 0x1

    int-to-double v4, v3

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, v2, Lexs;->f:I

    .line 3595
    iget-boolean v3, v2, Lexs;->e:Z

    if-eqz v3, :cond_17

    .line 3596
    iget-object v3, v2, Lexs;->g:[I

    if-nez v3, :cond_11

    .line 3597
    const/16 v3, 0x100

    new-array v3, v3, [I

    iput-object v3, v2, Lexs;->g:[I

    .line 3599
    :cond_11
    iget-object v3, v2, Lexs;->E:[B

    iget-object v4, v2, Lexs;->g:[I

    iget v5, v2, Lexs;->f:I

    iget v6, v2, Lexs;->L:I

    .line 3600
    invoke-static {v3, v4, v5, v6}, Lexs;->a([B[III)I

    move-result v3

    iput v3, v2, Lexs;->L:I

    .line 3601
    iget-object v3, v2, Lexs;->g:[I

    iput-object v3, v2, Lexs;->h:[I

    .line 3608
    :cond_12
    :goto_b
    const/4 v3, 0x0

    .line 3609
    iget-boolean v4, v2, Lexs;->q:Z

    if-eqz v4, :cond_13

    .line 3610
    iget-object v3, v2, Lexs;->h:[I

    iget v4, v2, Lexs;->r:I

    aget v3, v3, v4

    .line 3611
    iget-object v4, v2, Lexs;->h:[I

    iget v5, v2, Lexs;->r:I

    const/4 v6, 0x0

    aput v6, v4, v5

    :cond_13
    move v14, v3

    .line 3614
    iget-object v3, v2, Lexs;->h:[I

    if-nez v3, :cond_14

    .line 3615
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->b:Z

    .line 3616
    const-string v3, "Babel"

    const-string v4, "Could not read color table from the gif. Abort."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3619
    :cond_14
    iget-boolean v3, v2, Lexs;->b:Z

    if-nez v3, :cond_5

    .line 3687
    iget v3, v2, Lexs;->l:I

    iget v4, v2, Lexs;->m:I

    mul-int v15, v3, v4

    .line 3690
    iget-object v3, v2, Lexs;->E:[B

    iget v4, v2, Lexs;->L:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v2, Lexs;->L:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    move/from16 v16, v0

    .line 3691
    const/4 v3, 0x1

    shl-int v17, v3, v16

    .line 3692
    add-int/lit8 v18, v17, 0x1

    .line 3693
    add-int/lit8 v11, v17, 0x2

    .line 3694
    const/4 v8, -0x1

    .line 3695
    add-int/lit8 v4, v16, 0x1

    .line 3696
    const/4 v3, 0x1

    shl-int/2addr v3, v4

    add-int/lit8 v5, v3, -0x1

    .line 3697
    const/4 v3, 0x0

    :goto_c
    move/from16 v0, v17

    if-ge v3, v0, :cond_18

    .line 3698
    iget-object v6, v2, Lexs;->s:[S

    const/4 v7, 0x0

    aput-short v7, v6, v3

    .line 3699
    iget-object v6, v2, Lexs;->t:[B

    int-to-byte v7, v3

    aput-byte v7, v6, v3

    .line 3697
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 3591
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 3592
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 3603
    :cond_17
    iget-object v3, v2, Lexs;->J:[I

    iput-object v3, v2, Lexs;->h:[I

    .line 3604
    iget v3, v2, Lexs;->K:I

    iget v4, v2, Lexs;->r:I

    if-ne v3, v4, :cond_12

    .line 3605
    const/4 v3, 0x0

    iput v3, v2, Lexs;->d:I

    goto :goto_b

    .line 3703
    :cond_18
    const/4 v12, 0x0

    .line 3704
    const/4 v7, 0x0

    .line 3705
    const/4 v9, 0x0

    .line 3706
    const/4 v10, 0x0

    .line 3707
    const/4 v3, 0x0

    .line 3708
    :goto_d
    if-ge v3, v15, :cond_26

    .line 3709
    iget-object v6, v2, Lexs;->E:[B

    iget v13, v2, Lexs;->L:I

    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    iput v0, v2, Lexs;->L:I

    aget-byte v6, v6, v13

    and-int/lit16 v6, v6, 0xff

    .line 3710
    if-eqz v6, :cond_26

    .line 3714
    iget v13, v2, Lexs;->L:I

    add-int v19, v13, v6

    move v6, v3

    move v3, v7

    move v7, v4

    .line 3715
    :goto_e
    iget v4, v2, Lexs;->L:I

    move/from16 v0, v19

    if-ge v4, v0, :cond_25

    .line 3716
    iget-object v4, v2, Lexs;->E:[B

    iget v13, v2, Lexs;->L:I

    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    iput v0, v2, Lexs;->L:I

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v3

    add-int/2addr v4, v12

    .line 3717
    add-int/lit8 v3, v3, 0x8

    move v12, v4

    move v4, v7

    move v7, v3

    move v3, v5

    move v5, v11

    move v11, v9

    .line 3719
    :goto_f
    if-lt v7, v4, :cond_30

    .line 3721
    and-int v9, v12, v3

    .line 3722
    shr-int v13, v12, v4

    .line 3723
    sub-int v12, v7, v4

    .line 3726
    move/from16 v0, v17

    if-ne v9, v0, :cond_19

    .line 3728
    add-int/lit8 v4, v16, 0x1

    .line 3729
    const/4 v3, 0x1

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 3730
    add-int/lit8 v5, v17, 0x2

    .line 3731
    const/4 v9, -0x1

    move v7, v12

    move v8, v9

    move v12, v13

    .line 3732
    goto :goto_f

    .line 3736
    :cond_19
    move/from16 v0, v18

    if-ne v9, v0, :cond_1e

    .line 3737
    move/from16 v0, v19

    iput v0, v2, Lexs;->L:I

    .line 3625
    :cond_1a
    :goto_10
    invoke-virtual {v2}, Lexs;->m()V

    .line 3627
    iget-boolean v3, v2, Lexs;->b:Z

    if-nez v3, :cond_5

    .line 3631
    iget v3, v2, Lexs;->p:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    .line 3632
    invoke-virtual {v2}, Lexs;->i()V

    .line 3811
    :cond_1b
    const/4 v5, 0x1

    .line 3812
    const/16 v4, 0x8

    .line 3813
    const/4 v3, 0x0

    .line 3814
    const/4 v6, 0x0

    :goto_11
    iget v7, v2, Lexs;->m:I

    if-ge v6, v7, :cond_28

    .line 3816
    iget-boolean v7, v2, Lexs;->i:Z

    if-eqz v7, :cond_2c

    .line 3817
    iget v7, v2, Lexs;->m:I

    if-lt v3, v7, :cond_1c

    .line 3818
    add-int/lit8 v5, v5, 0x1

    .line 3819
    packed-switch v5, :pswitch_data_2

    .line 3836
    :cond_1c
    :goto_12
    add-int v7, v3, v4

    move v8, v4

    move v9, v5

    .line 3838
    :goto_13
    iget v4, v2, Lexs;->k:I

    add-int/2addr v3, v4

    .line 3839
    iget v4, v2, Lexs;->G:I

    if-ge v3, v4, :cond_27

    .line 3840
    iget v4, v2, Lexs;->F:I

    mul-int/2addr v3, v4

    .line 3841
    iget v4, v2, Lexs;->j:I

    add-int/2addr v4, v3

    .line 3842
    iget v3, v2, Lexs;->l:I

    add-int v10, v4, v3

    .line 3847
    iget v3, v2, Lexs;->n:I

    mul-int/2addr v3, v6

    move v5, v4

    .line 3848
    :goto_14
    if-ge v5, v10, :cond_27

    .line 3850
    iget-object v11, v2, Lexs;->v:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v11, v3

    and-int/lit16 v3, v3, 0xff

    .line 3851
    iget-object v11, v2, Lexs;->h:[I

    aget v3, v11, v3

    .line 3852
    if-eqz v3, :cond_1d

    .line 3853
    iget-object v11, v2, Lexs;->H:[I

    aput v3, v11, v5

    .line 3855
    :cond_1d
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v4

    .line 3856
    goto :goto_14

    .line 3741
    :cond_1e
    const/4 v7, -0x1

    if-ne v8, v7, :cond_1f

    .line 3742
    iget-object v8, v2, Lexs;->v:[B

    add-int/lit8 v7, v6, 0x1

    iget-object v11, v2, Lexs;->t:[B

    aget-byte v11, v11, v9

    aput-byte v11, v8, v6

    move v6, v7

    move v11, v9

    move v8, v9

    move v7, v12

    move v12, v13

    .line 3745
    goto/16 :goto_f

    .line 3749
    :cond_1f
    if-lt v9, v5, :cond_2f

    .line 3750
    iget-object v0, v2, Lexs;->u:[B

    move-object/from16 v20, v0

    add-int/lit8 v7, v10, 0x1

    int-to-byte v11, v11

    aput-byte v11, v20, v10

    .line 3752
    const/16 v10, 0x1001

    if-ne v7, v10, :cond_2e

    .line 3753
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->b:Z

    .line 3754
    const-string v3, "Babel"

    const-string v4, "Error while decoding Gif."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_20
    move v10, v11

    .line 3759
    :goto_15
    move/from16 v0, v17

    if-lt v7, v0, :cond_23

    .line 3760
    const/16 v11, 0x1001

    if-ge v7, v11, :cond_21

    iget-object v11, v2, Lexs;->s:[S

    aget-short v11, v11, v7

    if-ne v7, v11, :cond_22

    .line 3761
    :cond_21
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->b:Z

    .line 3762
    const-string v3, "Babel"

    const-string v4, "Error while decoding Gif."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 3766
    :cond_22
    iget-object v0, v2, Lexs;->u:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    iget-object v0, v2, Lexs;->t:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v7

    aput-byte v21, v20, v10

    .line 3767
    iget-object v10, v2, Lexs;->s:[S

    aget-short v7, v10, v7

    .line 3769
    const/16 v10, 0x1001

    if-ne v11, v10, :cond_20

    .line 3770
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->b:Z

    .line 3771
    const-string v3, "Babel"

    const-string v4, "Error while decoding Gif."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 3776
    :cond_23
    iget-object v11, v2, Lexs;->t:[B

    aget-byte v11, v11, v7

    .line 3777
    iget-object v0, v2, Lexs;->u:[B

    move-object/from16 v20, v0

    add-int/lit8 v7, v10, 0x1

    int-to-byte v0, v11

    move/from16 v21, v0

    aput-byte v21, v20, v10

    .line 3780
    const/16 v10, 0x1000

    if-ge v5, v10, :cond_24

    .line 3781
    iget-object v10, v2, Lexs;->s:[S

    int-to-short v8, v8

    aput-short v8, v10, v5

    .line 3782
    iget-object v8, v2, Lexs;->t:[B

    int-to-byte v10, v11

    aput-byte v10, v8, v5

    .line 3783
    add-int/lit8 v5, v5, 0x1

    .line 3785
    and-int v8, v5, v3

    if-nez v8, :cond_24

    const/16 v8, 0x1000

    if-ge v5, v8, :cond_24

    .line 3786
    add-int/lit8 v4, v4, 0x1

    .line 3787
    add-int/2addr v3, v5

    :cond_24
    move v8, v7

    .line 3795
    :goto_16
    iget-object v10, v2, Lexs;->v:[B

    add-int/lit8 v7, v6, 0x1

    iget-object v0, v2, Lexs;->u:[B

    move-object/from16 v20, v0

    add-int/lit8 v8, v8, -0x1

    aget-byte v20, v20, v8

    aput-byte v20, v10, v6

    .line 3796
    if-gtz v8, :cond_2d

    move v6, v7

    move v10, v8

    move v7, v12

    move v8, v9

    move v12, v13

    .line 3797
    goto/16 :goto_f

    :cond_25
    move v4, v7

    move v7, v3

    move v3, v6

    .line 3799
    goto/16 :goto_d

    .line 3801
    :cond_26
    :goto_17
    if-ge v3, v15, :cond_1a

    .line 3802
    iget-object v5, v2, Lexs;->v:[B

    add-int/lit8 v4, v3, 0x1

    const/4 v6, 0x0

    aput-byte v6, v5, v3

    move v3, v4

    goto :goto_17

    .line 3821
    :pswitch_5
    const/4 v3, 0x4

    .line 3822
    goto/16 :goto_12

    .line 3824
    :pswitch_6
    const/4 v3, 0x2

    .line 3825
    const/4 v4, 0x4

    .line 3826
    goto/16 :goto_12

    .line 3828
    :pswitch_7
    const/4 v3, 0x1

    .line 3829
    const/4 v4, 0x2

    goto/16 :goto_12

    .line 3814
    :cond_27
    add-int/lit8 v6, v6, 0x1

    move v3, v7

    move v4, v8

    move v5, v9

    goto/16 :goto_11

    .line 3637
    :cond_28
    iget-boolean v3, v2, Lexs;->q:Z

    if-eqz v3, :cond_29

    .line 3638
    iget-object v3, v2, Lexs;->h:[I

    iget v4, v2, Lexs;->r:I

    aput v14, v3, v4

    .line 3641
    :cond_29
    iget v3, v2, Lexs;->y:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lexs;->y:I

    goto/16 :goto_3

    .line 3485
    :sswitch_7
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->D:Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 8036
    :cond_2a
    iget v3, v2, Lexs;->y:I

    .line 966
    const/4 v4, 0x1

    if-le v3, v4, :cond_2b

    .line 9036
    iget-boolean v3, v2, Lexs;->M:Z

    .line 966
    if-eqz v3, :cond_2b

    .line 10406
    iget v3, v2, Lexs;->I:I

    iput v3, v2, Lexs;->L:I

    .line 10407
    const/4 v3, 0x0

    iput-boolean v3, v2, Lexs;->w:Z

    .line 10408
    const/4 v3, 0x0

    iput v3, v2, Lexs;->y:I

    .line 10409
    const/4 v3, 0x0

    iput v3, v2, Lexs;->p:I

    goto/16 :goto_4

    .line 11036
    :cond_2b
    const/4 v3, 0x1

    iput-boolean v3, v2, Lexs;->c:Z

    goto/16 :goto_4

    .line 18406
    :pswitch_8
    iget v3, v2, Lexs;->I:I

    iput v3, v2, Lexs;->L:I

    .line 18407
    const/4 v3, 0x0

    iput-boolean v3, v2, Lexs;->w:Z

    .line 18408
    const/4 v3, 0x0

    iput v3, v2, Lexs;->y:I

    .line 18409
    const/4 v3, 0x0

    iput v3, v2, Lexs;->p:I

    .line 981
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_2c
    move v7, v3

    move v8, v4

    move v9, v5

    move v3, v6

    goto/16 :goto_13

    :cond_2d
    move v6, v7

    goto/16 :goto_16

    :cond_2e
    move v10, v7

    move v7, v8

    goto/16 :goto_15

    :cond_2f
    move v7, v9

    goto/16 :goto_15

    :cond_30
    move v9, v11

    move v11, v5

    move v5, v3

    move v3, v7

    move v7, v4

    goto/16 :goto_e

    .line 950
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 3498
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 3445
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_1
        0x2c -> :sswitch_6
        0x3b -> :sswitch_7
    .end sparse-switch

    .line 3450
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch

    .line 3819
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
