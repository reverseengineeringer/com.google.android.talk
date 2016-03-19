.class public Laik;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:[I

.field private c:Ljava/nio/ByteBuffer;

.field private d:[B

.field private e:[B

.field private f:I

.field private g:I

.field private h:[S

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[I

.field private m:I

.field private n:Lain;

.field private o:Lail;

.field private p:Landroid/graphics/Bitmap;

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Laik;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laik;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lail;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput v0, p0, Laik;->f:I

    .line 118
    iput v0, p0, Laik;->g:I

    .line 197
    iput-object p1, p0, Laik;->o:Lail;

    .line 198
    new-instance v0, Lain;

    invoke-direct {v0}, Lain;-><init>()V

    iput-object v0, p0, Laik;->n:Lain;

    .line 199
    return-void
.end method

.method public constructor <init>(Lail;Lain;Ljava/nio/ByteBuffer;I)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Laik;-><init>(Lail;)V

    .line 193
    invoke-virtual {p0, p2, p3, p4}, Laik;->a(Lain;Ljava/nio/ByteBuffer;I)V

    .line 194
    return-void
.end method

.method private a(Laim;Laim;)Landroid/graphics/Bitmap;
    .locals 25

    .prologue
    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Laik;->l:[I

    .line 501
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget v1, v0, Laim;->g:I

    if-lez v1, :cond_1

    .line 504
    move-object/from16 v0, p2

    iget v1, v0, Laim;->g:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    .line 506
    const/4 v1, 0x0

    .line 507
    move-object/from16 v0, p1

    iget-boolean v3, v0, Laim;->f:Z

    if-nez v3, :cond_8

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Laik;->n:Lain;

    iget v1, v1, Lain;->l:I

    .line 515
    :cond_0
    :goto_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1653
    :cond_1
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Laik;->f:I

    .line 1654
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Laik;->g:I

    .line 1655
    if-eqz p1, :cond_2

    .line 1657
    move-object/from16 v0, p0

    iget-object v1, v0, Laik;->c:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v3, v0, Laim;->j:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1660
    :cond_2
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Laik;->n:Lain;

    iget v1, v1, Lain;->f:I

    move-object/from16 v0, p0

    iget-object v3, v0, Laik;->n:Lain;

    iget v3, v3, Lain;->g:I

    mul-int/2addr v1, v3

    .line 1665
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Laik;->k:[B

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Laik;->k:[B

    array-length v3, v3

    if-ge v3, v1, :cond_4

    .line 1667
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Laik;->o:Lail;

    invoke-virtual {v3, v1}, Lail;->a(I)[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Laik;->k:[B

    .line 1669
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Laik;->h:[S

    if-nez v3, :cond_5

    .line 1670
    const/16 v3, 0x1000

    new-array v3, v3, [S

    move-object/from16 v0, p0

    iput-object v3, v0, Laik;->h:[S

    .line 1672
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Laik;->i:[B

    if-nez v3, :cond_6

    .line 1673
    const/16 v3, 0x1000

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Laik;->i:[B

    .line 1675
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Laik;->j:[B

    if-nez v3, :cond_7

    .line 1676
    const/16 v3, 0x1001

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Laik;->j:[B

    .line 1680
    :cond_7
    invoke-direct/range {p0 .. p0}, Laik;->j()I

    move-result v17

    .line 1681
    const/4 v3, 0x1

    shl-int v18, v3, v17

    .line 1682
    add-int/lit8 v19, v18, 0x1

    .line 1683
    add-int/lit8 v5, v18, 0x2

    .line 1684
    const/4 v11, -0x1

    .line 1685
    add-int/lit8 v3, v17, 0x1

    .line 1686
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 1687
    const/4 v6, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    .line 1689
    move-object/from16 v0, p0

    iget-object v7, v0, Laik;->h:[S

    const/4 v8, 0x0

    aput-short v8, v7, v6

    .line 1690
    move-object/from16 v0, p0

    iget-object v7, v0, Laik;->i:[B

    int-to-byte v8, v6

    aput-byte v8, v7, v6

    .line 1687
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 509
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Laik;->m:I

    if-nez v3, :cond_0

    .line 513
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Laik;->v:Z

    goto/16 :goto_0

    .line 516
    :cond_9
    move-object/from16 v0, p2

    iget v1, v0, Laim;->g:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Laik;->p:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 518
    move-object/from16 v0, p0

    iget-object v1, v0, Laik;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Laik;->u:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Laik;->u:I

    move-object/from16 v0, p0

    iget v8, v0, Laik;->t:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_1

    .line 1660
    :cond_a
    move-object/from16 v0, p1

    iget v1, v0, Laim;->c:I

    move-object/from16 v0, p1

    iget v3, v0, Laim;->d:I

    mul-int/2addr v1, v3

    goto/16 :goto_2

    .line 1694
    :cond_b
    const/4 v6, 0x0

    .line 1695
    const/4 v8, 0x0

    move v9, v6

    move v12, v6

    move v7, v6

    move v10, v3

    move v13, v4

    move v14, v5

    move v3, v6

    move v4, v6

    move v5, v6

    :goto_4
    if-ge v8, v1, :cond_c

    .line 1697
    if-nez v4, :cond_e

    .line 1699
    invoke-direct/range {p0 .. p0}, Laik;->k()I

    move-result v4

    .line 1700
    if-gtz v4, :cond_d

    .line 1701
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Laik;->r:I

    :cond_c
    move v3, v5

    .line 1776
    :goto_5
    if-ge v3, v1, :cond_14

    .line 1777
    move-object/from16 v0, p0

    iget-object v4, v0, Laik;->k:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v3

    .line 1776
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1704
    :cond_d
    const/4 v3, 0x0

    .line 1707
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Laik;->d:[B

    aget-byte v15, v15, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v7

    add-int/2addr v6, v15

    .line 1708
    add-int/lit8 v7, v7, 0x8

    .line 1709
    add-int/lit8 v15, v3, 0x1

    .line 1710
    add-int/lit8 v16, v4, -0x1

    move v3, v10

    move v4, v13

    move v10, v12

    move/from16 v24, v7

    move v7, v6

    move v6, v5

    move v5, v14

    move/from16 v14, v24

    .line 1712
    :goto_6
    if-lt v14, v3, :cond_28

    .line 1714
    and-int v12, v7, v4

    .line 1715
    shr-int v13, v7, v3

    .line 1716
    sub-int/2addr v14, v3

    .line 1719
    move/from16 v0, v18

    if-ne v12, v0, :cond_f

    .line 1721
    add-int/lit8 v3, v17, 0x1

    .line 1722
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    .line 1723
    add-int/lit8 v5, v18, 0x2

    .line 1724
    const/4 v12, -0x1

    move v7, v13

    move v11, v12

    .line 1725
    goto :goto_6

    .line 1728
    :cond_f
    if-le v12, v5, :cond_10

    .line 1729
    const/4 v7, 0x3

    move-object/from16 v0, p0

    iput v7, v0, Laik;->r:I

    move v12, v10

    move v7, v14

    move v10, v3

    move v14, v5

    move v3, v15

    move v5, v6

    move v6, v13

    move v13, v4

    move/from16 v4, v16

    .line 1730
    goto :goto_4

    .line 1733
    :cond_10
    move/from16 v0, v19

    if-eq v12, v0, :cond_27

    .line 1737
    const/4 v7, -0x1

    if-ne v11, v7, :cond_11

    .line 1738
    move-object/from16 v0, p0

    iget-object v10, v0, Laik;->j:[B

    add-int/lit8 v7, v9, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Laik;->i:[B

    aget-byte v11, v11, v12

    aput-byte v11, v10, v9

    move v9, v7

    move v10, v12

    move v11, v12

    move v7, v13

    .line 1741
    goto :goto_6

    .line 1744
    :cond_11
    if-lt v12, v5, :cond_26

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->j:[B

    move-object/from16 v20, v0

    add-int/lit8 v7, v9, 0x1

    int-to-byte v10, v10

    aput-byte v10, v20, v9

    move v9, v7

    move v10, v11

    .line 1748
    :goto_7
    move/from16 v0, v18

    if-lt v10, v0, :cond_12

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->j:[B

    move-object/from16 v20, v0

    add-int/lit8 v7, v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->i:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v10

    aput-byte v21, v20, v9

    .line 1750
    move-object/from16 v0, p0

    iget-object v9, v0, Laik;->h:[S

    aget-short v9, v9, v10

    move v10, v9

    move v9, v7

    goto :goto_7

    .line 1752
    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Laik;->i:[B

    aget-byte v7, v7, v10

    and-int/lit16 v10, v7, 0xff

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->j:[B

    move-object/from16 v20, v0

    add-int/lit8 v7, v9, 0x1

    int-to-byte v0, v10

    move/from16 v21, v0

    aput-byte v21, v20, v9

    .line 1756
    const/16 v9, 0x1000

    if-ge v5, v9, :cond_13

    .line 1757
    move-object/from16 v0, p0

    iget-object v9, v0, Laik;->h:[S

    int-to-short v11, v11

    aput-short v11, v9, v5

    .line 1758
    move-object/from16 v0, p0

    iget-object v9, v0, Laik;->i:[B

    int-to-byte v11, v10

    aput-byte v11, v9, v5

    .line 1759
    add-int/lit8 v5, v5, 0x1

    .line 1760
    and-int v9, v5, v4

    if-nez v9, :cond_13

    const/16 v9, 0x1000

    if-ge v5, v9, :cond_13

    .line 1761
    add-int/lit8 v3, v3, 0x1

    .line 1762
    add-int/2addr v4, v5

    :cond_13
    move v9, v8

    move v8, v7

    .line 1767
    :goto_8
    if-lez v8, :cond_25

    .line 1769
    move-object/from16 v0, p0

    iget-object v11, v0, Laik;->k:[B

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->j:[B

    move-object/from16 v20, v0

    add-int/lit8 v8, v8, -0x1

    aget-byte v20, v20, v8

    aput-byte v20, v11, v6

    .line 1770
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v7

    goto :goto_8

    .line 526
    :cond_14
    move-object/from16 v0, p1

    iget v1, v0, Laim;->d:I

    move-object/from16 v0, p0

    iget v3, v0, Laik;->s:I

    div-int v16, v1, v3

    .line 527
    move-object/from16 v0, p1

    iget v1, v0, Laim;->b:I

    move-object/from16 v0, p0

    iget v3, v0, Laik;->s:I

    div-int v17, v1, v3

    .line 528
    move-object/from16 v0, p1

    iget v1, v0, Laim;->c:I

    move-object/from16 v0, p0

    iget v3, v0, Laik;->s:I

    div-int v18, v1, v3

    .line 529
    move-object/from16 v0, p1

    iget v1, v0, Laim;->a:I

    move-object/from16 v0, p0

    iget v3, v0, Laik;->s:I

    div-int v19, v1, v3

    .line 531
    const/4 v5, 0x1

    .line 532
    const/16 v4, 0x8

    .line 533
    const/4 v3, 0x0

    .line 534
    move-object/from16 v0, p0

    iget v1, v0, Laik;->m:I

    if-nez v1, :cond_17

    const/4 v1, 0x1

    .line 535
    :goto_9
    const/4 v10, 0x0

    :goto_a
    move/from16 v0, v16

    if-ge v10, v0, :cond_1f

    .line 537
    move-object/from16 v0, p1

    iget-boolean v6, v0, Laim;->e:Z

    if-eqz v6, :cond_24

    .line 538
    move/from16 v0, v16

    if-lt v3, v0, :cond_15

    .line 539
    add-int/lit8 v5, v5, 0x1

    .line 540
    packed-switch v5, :pswitch_data_0

    .line 557
    :cond_15
    :goto_b
    add-int v6, v3, v4

    move v11, v6

    move v12, v4

    move v13, v5

    .line 559
    :goto_c
    add-int v3, v3, v17

    .line 560
    move-object/from16 v0, p0

    iget v4, v0, Laik;->t:I

    if-ge v3, v4, :cond_1e

    .line 561
    move-object/from16 v0, p0

    iget v4, v0, Laik;->u:I

    mul-int/2addr v4, v3

    .line 563
    add-int v5, v4, v19

    .line 565
    add-int v3, v5, v18

    .line 566
    move-object/from16 v0, p0

    iget v6, v0, Laik;->u:I

    add-int/2addr v6, v4

    if-ge v6, v3, :cond_23

    .line 568
    move-object/from16 v0, p0

    iget v3, v0, Laik;->u:I

    add-int/2addr v3, v4

    move v14, v3

    .line 571
    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Laik;->s:I

    mul-int/2addr v3, v10

    move-object/from16 v0, p1

    iget v4, v0, Laim;->c:I

    mul-int/2addr v4, v3

    .line 572
    sub-int v3, v14, v5

    move-object/from16 v0, p0

    iget v6, v0, Laik;->s:I

    mul-int/2addr v3, v6

    add-int v20, v4, v3

    move v15, v5

    .line 573
    :goto_e
    if-ge v15, v14, :cond_1e

    .line 575
    move-object/from16 v0, p1

    iget v0, v0, Laim;->c:I

    move/from16 v21, v0

    .line 2605
    const/4 v8, 0x0

    .line 2606
    const/4 v7, 0x0

    .line 2607
    const/4 v6, 0x0

    .line 2608
    const/4 v5, 0x0

    .line 2610
    const/4 v3, 0x0

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    move v3, v4

    .line 2614
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Laik;->s:I

    move/from16 v22, v0

    add-int v22, v22, v4

    move/from16 v0, v22

    if-ge v3, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->k:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_18

    move/from16 v0, v20

    if-ge v3, v0, :cond_18

    .line 2615
    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->k:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->b:[I

    move-object/from16 v23, v0

    aget v22, v23, v22

    .line 2617
    if-eqz v22, :cond_16

    .line 2618
    ushr-int/lit8 v23, v22, 0x18

    add-int v9, v9, v23

    .line 2619
    shr-int/lit8 v23, v22, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v8, v8, v23

    .line 2620
    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v7, v7, v23

    .line 2621
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    add-int v6, v6, v22

    .line 2622
    add-int/lit8 v5, v5, 0x1

    .line 2614
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 534
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 542
    :pswitch_0
    const/4 v3, 0x4

    .line 543
    goto/16 :goto_b

    .line 545
    :pswitch_1
    const/4 v3, 0x2

    .line 546
    const/4 v4, 0x4

    .line 547
    goto/16 :goto_b

    .line 549
    :pswitch_2
    const/4 v3, 0x1

    .line 550
    const/4 v4, 0x2

    goto/16 :goto_b

    .line 2626
    :cond_18
    add-int v3, v4, v21

    .line 2628
    :goto_10
    add-int v22, v4, v21

    move-object/from16 v0, p0

    iget v0, v0, Laik;->s:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->k:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_1a

    move/from16 v0, v20

    if-ge v3, v0, :cond_1a

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->k:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 2630
    move-object/from16 v0, p0

    iget-object v0, v0, Laik;->b:[I

    move-object/from16 v23, v0

    aget v22, v23, v22

    .line 2631
    if-eqz v22, :cond_19

    .line 2632
    ushr-int/lit8 v23, v22, 0x18

    add-int v9, v9, v23

    .line 2633
    shr-int/lit8 v23, v22, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v8, v8, v23

    .line 2634
    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v7, v7, v23

    .line 2635
    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    add-int v6, v6, v22

    .line 2636
    add-int/lit8 v5, v5, 0x1

    .line 2628
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2639
    :cond_1a
    if-nez v5, :cond_1c

    .line 2640
    const/4 v3, 0x0

    .line 576
    :goto_11
    if-eqz v3, :cond_1d

    .line 577
    aput v3, v2, v15

    .line 581
    :cond_1b
    :goto_12
    move-object/from16 v0, p0

    iget v3, v0, Laik;->s:I

    add-int/2addr v4, v3

    .line 582
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    .line 583
    goto/16 :goto_e

    .line 2642
    :cond_1c
    div-int v3, v9, v5

    shl-int/lit8 v3, v3, 0x18

    div-int/2addr v8, v5

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    div-int/2addr v7, v5

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    div-int v5, v6, v5

    or-int/2addr v3, v5

    goto :goto_11

    .line 578
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Laik;->v:Z

    if-nez v3, :cond_1b

    if-eqz v1, :cond_1b

    .line 579
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Laik;->v:Z

    goto :goto_12

    .line 535
    :cond_1e
    add-int/lit8 v10, v10, 0x1

    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_a

    .line 588
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Laik;->q:Z

    if-eqz v1, :cond_22

    move-object/from16 v0, p1

    iget v1, v0, Laim;->g:I

    if-eqz v1, :cond_20

    move-object/from16 v0, p1

    iget v1, v0, Laim;->g:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    .line 590
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Laik;->p:Landroid/graphics/Bitmap;

    if-nez v1, :cond_21

    .line 591
    invoke-direct/range {p0 .. p0}, Laik;->l()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Laik;->p:Landroid/graphics/Bitmap;

    .line 593
    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Laik;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Laik;->u:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Laik;->u:I

    move-object/from16 v0, p0

    iget v8, v0, Laik;->t:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 598
    :cond_22
    invoke-direct/range {p0 .. p0}, Laik;->l()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 599
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Laik;->u:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Laik;->u:I

    move-object/from16 v0, p0

    iget v8, v0, Laik;->t:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 600
    return-object v1

    :cond_23
    move v14, v3

    goto/16 :goto_d

    :cond_24
    move v11, v3

    move v12, v4

    move v13, v5

    move v3, v10

    goto/16 :goto_c

    :cond_25
    move v7, v13

    move v11, v12

    move/from16 v24, v9

    move v9, v8

    move/from16 v8, v24

    goto/16 :goto_6

    :cond_26
    move v10, v12

    goto/16 :goto_7

    :cond_27
    move v12, v10

    move v7, v14

    move v10, v3

    move v14, v5

    move v3, v15

    move v5, v6

    move v6, v13

    move v13, v4

    move/from16 v4, v16

    goto/16 :goto_4

    :cond_28
    move v12, v10

    move v13, v4

    move/from16 v4, v16

    move v10, v3

    move v3, v15

    move/from16 v24, v14

    move v14, v5

    move v5, v6

    move v6, v7

    move/from16 v7, v24

    goto/16 :goto_4

    .line 540
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private i()V
    .locals 4

    .prologue
    const/16 v2, 0x4000

    const/4 v3, 0x0

    .line 785
    iget v0, p0, Laik;->f:I

    iget v1, p0, Laik;->g:I

    if-le v0, v1, :cond_0

    .line 794
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Laik;->e:[B

    if-nez v0, :cond_1

    .line 789
    iget-object v0, p0, Laik;->o:Lail;

    invoke-virtual {v0, v2}, Lail;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Laik;->e:[B

    .line 791
    :cond_1
    iput v3, p0, Laik;->g:I

    .line 792
    iget-object v0, p0, Laik;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Laik;->f:I

    .line 793
    iget-object v0, p0, Laik;->c:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Laik;->e:[B

    iget v2, p0, Laik;->f:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private j()I
    .locals 3

    .prologue
    .line 801
    :try_start_0
    invoke-direct {p0}, Laik;->i()V

    .line 802
    iget-object v0, p0, Laik;->e:[B

    iget v1, p0, Laik;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Laik;->g:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    .line 805
    :goto_0
    return v0

    .line 804
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput v0, p0, Laik;->r:I

    .line 805
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 815
    invoke-direct {p0}, Laik;->j()I

    move-result v0

    .line 816
    if-lez v0, :cond_1

    .line 818
    :try_start_0
    iget-object v1, p0, Laik;->d:[B

    if-nez v1, :cond_0

    .line 819
    iget-object v1, p0, Laik;->o:Lail;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lail;->a(I)[B

    move-result-object v1

    iput-object v1, p0, Laik;->d:[B

    .line 821
    :cond_0
    iget v1, p0, Laik;->f:I

    iget v2, p0, Laik;->g:I

    sub-int/2addr v1, v2

    .line 822
    if-lt v1, v0, :cond_2

    .line 824
    iget-object v1, p0, Laik;->e:[B

    iget v2, p0, Laik;->g:I

    iget-object v3, p0, Laik;->d:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    iget v1, p0, Laik;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Laik;->g:I

    .line 842
    :cond_1
    :goto_0
    return v0

    .line 826
    :cond_2
    iget-object v2, p0, Laik;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_3

    .line 828
    iget-object v2, p0, Laik;->e:[B

    iget v3, p0, Laik;->g:I

    iget-object v4, p0, Laik;->d:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    iget v2, p0, Laik;->f:I

    iput v2, p0, Laik;->g:I

    .line 830
    invoke-direct {p0}, Laik;->i()V

    .line 831
    sub-int v2, v0, v1

    .line 832
    iget-object v3, p0, Laik;->e:[B

    const/4 v4, 0x0

    iget-object v5, p0, Laik;->d:[B

    invoke-static {v3, v4, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 833
    iget v1, p0, Laik;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Laik;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 839
    :catch_0
    move-exception v1

    iput v6, p0, Laik;->r:I

    goto :goto_0

    .line 835
    :cond_3
    const/4 v1, 0x1

    :try_start_1
    iput v1, p0, Laik;->r:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private l()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 846
    iget-boolean v0, p0, Laik;->v:Z

    if-eqz v0, :cond_1

    .line 847
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 848
    :goto_0
    iget-object v1, p0, Laik;->o:Lail;

    iget v2, p0, Laik;->u:I

    iget v3, p0, Laik;->t:I

    invoke-virtual {v1, v2, v3, v0}, Lail;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2855
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 2856
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 850
    :cond_0
    return-object v0

    .line 847
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 238
    const/4 v0, -0x1

    .line 239
    if-ltz p1, :cond_0

    iget-object v1, p0, Laik;->n:Lain;

    iget v1, v1, Lain;->c:I

    if-ge p1, v1, :cond_0

    .line 240
    iget-object v0, p0, Laik;->n:Lain;

    iget-object v0, v0, Lain;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    iget v0, v0, Laim;->i:I

    .line 242
    :cond_0
    return v0
.end method

.method public a()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Laik;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public declared-synchronized a(Lain;Ljava/nio/ByteBuffer;I)V
    .locals 4

    .prologue
    .line 436
    monitor-enter p0

    if-gtz p3, :cond_0

    .line 437
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sample size must be >=0, not: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 440
    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    .line 441
    const/4 v0, 0x0

    iput v0, p0, Laik;->r:I

    .line 442
    iput-object p1, p0, Laik;->n:Lain;

    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Laik;->v:Z

    .line 444
    const/4 v0, -0x1

    iput v0, p0, Laik;->m:I

    .line 446
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Laik;->c:Ljava/nio/ByteBuffer;

    .line 447
    iget-object v0, p0, Laik;->c:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 448
    iget-object v0, p0, Laik;->c:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Laik;->q:Z

    .line 452
    iget-object v0, p1, Lain;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    .line 453
    iget v0, v0, Laim;->g:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Laik;->q:Z

    .line 459
    :cond_2
    iput v1, p0, Laik;->s:I

    .line 463
    iget-object v0, p0, Laik;->o:Lail;

    iget v2, p1, Lain;->f:I

    iget v3, p1, Lain;->g:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lail;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Laik;->k:[B

    .line 464
    iget-object v0, p0, Laik;->o:Lail;

    iget v2, p1, Lain;->f:I

    div-int/2addr v2, v1

    iget v3, p1, Lain;->g:I

    div-int/2addr v3, v1

    mul-int/2addr v2, v3

    .line 465
    invoke-virtual {v0, v2}, Lail;->b(I)[I

    move-result-object v0

    iput-object v0, p0, Laik;->l:[I

    .line 466
    iget v0, p1, Lain;->f:I

    div-int/2addr v0, v1

    iput v0, p0, Laik;->u:I

    .line 467
    iget v0, p1, Lain;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Laik;->t:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Laik;->m:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Laik;->n:Lain;

    iget v1, v1, Lain;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Laik;->m:I

    .line 229
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Laik;->n:Lain;

    iget v0, v0, Lain;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Laik;->m:I

    if-gez v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Laik;->m:I

    invoke-virtual {p0, v0}, Laik;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Laik;->n:Lain;

    iget v0, v0, Lain;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Laik;->m:I

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Laik;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Laik;->k:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laik;->l:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized g()Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Laik;->n:Lain;

    iget v0, v0, Lain;->c:I

    if-lez v0, :cond_0

    iget v0, p0, Laik;->m:I

    if-gez v0, :cond_2

    .line 306
    :cond_0
    sget-object v0, Laik;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Laik;->n:Lain;

    iget v0, v0, Lain;->c:I

    iget v1, p0, Laik;->m:I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x47

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "unable to decode frame, frameCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " framePointer="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Laik;->r:I

    .line 312
    :cond_2
    iget v0, p0, Laik;->r:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Laik;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 313
    :cond_3
    sget-object v0, Laik;->a:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 314
    iget v0, p0, Laik;->r:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to decode frame, status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    .line 365
    :goto_0
    monitor-exit p0

    return-object v0

    .line 318
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Laik;->r:I

    .line 320
    iget-object v0, p0, Laik;->n:Lain;

    iget-object v0, v0, Lain;->e:Ljava/util/List;

    iget v1, p0, Laik;->m:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laim;

    .line 322
    iget v1, p0, Laik;->m:I

    add-int/lit8 v1, v1, -0x1

    .line 323
    if-ltz v1, :cond_8

    .line 324
    iget-object v4, p0, Laik;->n:Lain;

    iget-object v4, v4, Lain;->e:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laim;

    move-object v4, v1

    .line 329
    :goto_1
    iget-object v1, p0, Laik;->n:Lain;

    iget v5, v1, Lain;->l:I

    .line 332
    iget-object v1, v0, Laim;->k:[I

    if-nez v1, :cond_9

    .line 333
    iget-object v1, p0, Laik;->n:Lain;

    iget-object v1, v1, Lain;->a:[I

    iput-object v1, p0, Laik;->b:[I

    .line 342
    :cond_6
    :goto_2
    iget-boolean v1, v0, Laim;->f:Z

    if-eqz v1, :cond_7

    .line 343
    iget-object v1, p0, Laik;->b:[I

    iget v3, v0, Laim;->h:I

    aget v1, v1, v3

    .line 345
    iget-object v3, p0, Laik;->b:[I

    iget v6, v0, Laim;->h:I

    const/4 v7, 0x0

    aput v7, v3, v6

    move v3, v1

    .line 347
    :cond_7
    iget-object v1, p0, Laik;->b:[I

    if-nez v1, :cond_a

    .line 352
    const/4 v0, 0x1

    iput v0, p0, Laik;->r:I

    move-object v0, v2

    .line 353
    goto :goto_0

    .line 326
    :cond_8
    iget-object v1, p0, Laik;->n:Lain;

    iget-object v1, v1, Lain;->e:Ljava/util/List;

    invoke-virtual {p0}, Laik;->d()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laim;

    move-object v4, v1

    goto :goto_1

    .line 335
    :cond_9
    iget-object v1, v0, Laim;->k:[I

    iput-object v1, p0, Laik;->b:[I

    .line 336
    iget-object v1, p0, Laik;->n:Lain;

    iget v1, v1, Lain;->j:I

    iget v6, v0, Laim;->h:I

    if-ne v1, v6, :cond_6

    .line 337
    iget-object v1, p0, Laik;->n:Lain;

    const/4 v6, 0x0

    iput v6, v1, Lain;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 357
    :cond_a
    :try_start_2
    invoke-direct {p0, v0, v4}, Laik;->a(Laim;Laim;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 360
    iget-boolean v2, v0, Laim;->f:Z

    if-eqz v2, :cond_b

    .line 361
    iget-object v2, p0, Laik;->b:[I

    iget v0, v0, Laim;->h:I

    aput v3, v2, v0

    .line 363
    :cond_b
    iget-object v0, p0, Laik;->n:Lain;

    iput v5, v0, Lain;->l:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 365
    goto/16 :goto_0
.end method

.method public h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 406
    iput-object v2, p0, Laik;->n:Lain;

    .line 407
    iget-object v0, p0, Laik;->k:[B

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Laik;->o:Lail;

    iget-object v1, p0, Laik;->k:[B

    invoke-virtual {v0, v1}, Lail;->a([B)V

    .line 410
    :cond_0
    iget-object v0, p0, Laik;->l:[I

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p0, Laik;->o:Lail;

    iget-object v1, p0, Laik;->l:[I

    invoke-virtual {v0, v1}, Lail;->a([I)V

    .line 413
    :cond_1
    iget-object v0, p0, Laik;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Laik;->o:Lail;

    iget-object v1, p0, Laik;->p:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lail;->a(Landroid/graphics/Bitmap;)V

    .line 416
    :cond_2
    iput-object v2, p0, Laik;->p:Landroid/graphics/Bitmap;

    .line 417
    iput-object v2, p0, Laik;->c:Ljava/nio/ByteBuffer;

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Laik;->v:Z

    .line 419
    iget-object v0, p0, Laik;->d:[B

    if-eqz v0, :cond_3

    .line 420
    iget-object v0, p0, Laik;->o:Lail;

    iget-object v1, p0, Laik;->d:[B

    invoke-virtual {v0, v1}, Lail;->a([B)V

    .line 422
    :cond_3
    iget-object v0, p0, Laik;->e:[B

    if-eqz v0, :cond_4

    .line 423
    iget-object v0, p0, Laik;->o:Lail;

    iget-object v1, p0, Laik;->e:[B

    invoke-virtual {v0, v1}, Lail;->a([B)V

    .line 425
    :cond_4
    return-void
.end method
