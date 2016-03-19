.class public final Ladp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    .line 332
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    .line 333
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 345
    if-nez v0, :cond_0

    .line 346
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method protected a(II)V
    .locals 5

    .prologue
    const/16 v2, 0x81

    const/16 v4, 0xff

    const/16 v0, 0xc0

    const/16 v1, 0xe0

    const/16 v3, 0x80

    .line 365
    packed-switch p2, :pswitch_data_0

    .line 491
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :pswitch_1
    if-eq v3, p1, :cond_5

    if-eq v2, p1, :cond_5

    .line 379
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :pswitch_2
    if-eq v3, p1, :cond_5

    if-eq v2, p1, :cond_5

    .line 386
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :pswitch_3
    if-eq v3, p1, :cond_5

    if-eq v2, p1, :cond_5

    .line 393
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :pswitch_4
    if-lt p1, v3, :cond_0

    const/16 v0, 0x82

    if-le p1, v0, :cond_5

    .line 399
    :cond_0
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_5
    if-lt p1, v3, :cond_1

    const/16 v0, 0x87

    if-le p1, v0, :cond_5

    .line 405
    :cond_1
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :pswitch_6
    if-lt p1, v3, :cond_2

    const/16 v0, 0x83

    if-le p1, v0, :cond_5

    .line 412
    :cond_2
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :pswitch_7
    if-lt p1, v3, :cond_3

    const/16 v0, 0x84

    if-le p1, v0, :cond_5

    .line 418
    :cond_3
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :pswitch_8
    if-eq v3, p1, :cond_5

    .line 424
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :pswitch_9
    if-lt p1, v3, :cond_4

    const/16 v0, 0x87

    if-le p1, v0, :cond_5

    .line 431
    :cond_4
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_a
    const/16 v2, 0xc2

    if-le p1, v2, :cond_6

    if-ge p1, v1, :cond_6

    move p1, v0

    .line 493
    :cond_5
    :goto_0
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    return-void

    .line 439
    :cond_6
    const/16 v2, 0xe3

    if-le p1, v2, :cond_7

    if-gt p1, v4, :cond_7

    move p1, v1

    .line 441
    goto :goto_0

    .line 442
    :cond_7
    if-lt p1, v3, :cond_9

    if-le p1, v3, :cond_8

    if-lt p1, v0, :cond_9

    :cond_8
    if-le p1, v4, :cond_5

    :cond_9
    move p1, v1

    .line 446
    goto :goto_0

    .line 451
    :pswitch_b
    const/16 v2, 0xc1

    if-le p1, v2, :cond_a

    if-ge p1, v1, :cond_a

    move p1, v0

    .line 453
    goto :goto_0

    .line 454
    :cond_a
    const/16 v2, 0xe4

    if-le p1, v2, :cond_b

    if-gt p1, v4, :cond_b

    move p1, v1

    .line 456
    goto :goto_0

    .line 457
    :cond_b
    if-lt p1, v3, :cond_d

    if-le p1, v3, :cond_c

    if-lt p1, v0, :cond_d

    :cond_c
    if-le p1, v4, :cond_5

    :cond_d
    move p1, v1

    .line 461
    goto :goto_0

    .line 466
    :pswitch_c
    const/16 v2, 0xc4

    if-le p1, v2, :cond_e

    if-ge p1, v1, :cond_e

    move p1, v0

    .line 468
    goto :goto_0

    .line 469
    :cond_e
    const/16 v2, 0xeb

    if-le p1, v2, :cond_f

    if-le p1, v4, :cond_11

    :cond_f
    if-lt p1, v3, :cond_11

    const/16 v2, 0x88

    if-le p1, v2, :cond_10

    if-lt p1, v0, :cond_11

    :cond_10
    if-le p1, v4, :cond_5

    :cond_11
    move p1, v1

    .line 475
    goto :goto_0

    .line 479
    :pswitch_d
    const/16 v0, 0x10

    if-lt p1, v0, :cond_12

    const/16 v0, 0x13

    if-le p1, v0, :cond_5

    .line 480
    :cond_12
    const/16 p1, 0x12

    goto :goto_0

    .line 484
    :pswitch_e
    if-lt p1, v3, :cond_13

    const/16 v0, 0x97

    if-le p1, v0, :cond_5

    .line 486
    :cond_13
    new-instance v0, Ladb;

    const-string v1, "Invalid Octet value!"

    invoke-direct {v0, v1}, Ladb;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x86
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected a(JI)V
    .locals 3

    .prologue
    .line 704
    sparse-switch p3, :sswitch_data_0

    .line 718
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :sswitch_0
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 721
    return-void

    .line 704
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x87 -> :sswitch_0
        0x88 -> :sswitch_0
        0x8e -> :sswitch_0
        0x9d -> :sswitch_0
        0x9f -> :sswitch_0
        0xa1 -> :sswitch_0
        0xad -> :sswitch_0
        0xaf -> :sswitch_0
        0xb3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected a(Ladf;I)V
    .locals 2

    .prologue
    .line 587
    if-nez p1, :cond_0

    .line 588
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 591
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 604
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :sswitch_0
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 608
    return-void

    .line 591
    nop

    :sswitch_data_0
    .sparse-switch
        0x89 -> :sswitch_0
        0x93 -> :sswitch_0
        0x96 -> :sswitch_0
        0x9a -> :sswitch_0
        0xa0 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xa6 -> :sswitch_0
        0xb5 -> :sswitch_0
        0xb6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected a([BI)V
    .locals 2

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 525
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 540
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 542
    :sswitch_0
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    return-void

    .line 525
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x8a -> :sswitch_0
        0x8b -> :sswitch_0
        0x98 -> :sswitch_0
        0x9e -> :sswitch_0
        0xb7 -> :sswitch_0
        0xb8 -> :sswitch_0
        0xb9 -> :sswitch_0
        0xbd -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method

.method protected a([Ladf;)V
    .locals 3

    .prologue
    .line 624
    if-nez p1, :cond_0

    .line 625
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 638
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 639
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 640
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    :cond_1
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 643
    return-void
.end method

.method protected b(Ladf;I)V
    .locals 2

    .prologue
    .line 654
    if-nez p1, :cond_0

    .line 655
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 658
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 664
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid header field!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :sswitch_0
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    .line 668
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 669
    if-nez v0, :cond_1

    .line 670
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    iget-object v1, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    return-void

    .line 658
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0x97 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b(I)[B
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected c(I)Ladf;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladf;

    return-object v0
.end method

.method protected d(I)[Ladf;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    .line 565
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 566
    if-nez v0, :cond_0

    .line 567
    const/4 v0, 0x0

    .line 570
    :goto_0
    return-object v0

    .line 569
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ladf;

    .line 570
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ladf;

    goto :goto_0
.end method

.method protected e(I)J
    .locals 2

    .prologue
    .line 685
    iget-object v0, p0, Ladp;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 686
    if-nez v0, :cond_0

    .line 687
    const-wide/16 v0, -0x1

    .line 690
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method
