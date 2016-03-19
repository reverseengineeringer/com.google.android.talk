.class public Lys;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Z

.field private i:[I

.field private j:[I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lys;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lys;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    iput-boolean v4, p0, Lys;->a:Z

    .line 106
    iput v2, p0, Lys;->b:I

    .line 113
    iput v3, p0, Lys;->c:I

    .line 117
    const v0, 0x800033

    iput v0, p0, Lys;->e:I

    .line 152
    sget-object v0, Lsb;->av:[I

    invoke-static {p1, p2, v0, p3}, Lvw;->a(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lvw;

    move-result-object v0

    .line 155
    sget v1, Lsb;->az:I

    invoke-virtual {v0, v1, v2}, Lvw;->a(II)I

    move-result v1

    .line 156
    if-ltz v1, :cond_0

    .line 157
    invoke-virtual {p0, v1}, Lys;->e(I)V

    .line 160
    :cond_0
    sget v1, Lsb;->ay:I

    invoke-virtual {v0, v1, v2}, Lvw;->a(II)I

    move-result v1

    .line 161
    if-ltz v1, :cond_1

    .line 162
    invoke-virtual {p0, v1}, Lys;->f(I)V

    .line 165
    :cond_1
    sget v1, Lsb;->aw:I

    invoke-virtual {v0, v1, v4}, Lvw;->a(IZ)Z

    move-result v1

    .line 166
    if-nez v1, :cond_2

    .line 167
    invoke-virtual {p0, v1}, Lys;->b(Z)V

    .line 170
    :cond_2
    sget v1, Lsb;->aA:I

    invoke-virtual {v0, v1}, Lvw;->e(I)F

    move-result v1

    iput v1, p0, Lys;->g:F

    .line 172
    sget v1, Lsb;->ax:I

    invoke-virtual {v0, v1, v2}, Lvw;->a(II)I

    move-result v1

    iput v1, p0, Lys;->b:I

    .line 175
    sget v1, Lsb;->aD:I

    invoke-virtual {v0, v1, v3}, Lvw;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lys;->h:Z

    .line 177
    sget v1, Lsb;->aB:I

    invoke-virtual {v0, v1}, Lvw;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lys;->b(Landroid/graphics/drawable/Drawable;)V

    .line 178
    sget v1, Lsb;->aE:I

    invoke-virtual {v0, v1, v3}, Lvw;->a(II)I

    move-result v1

    iput v1, p0, Lys;->n:I

    .line 179
    sget v1, Lsb;->aC:I

    invoke-virtual {v0, v1, v3}, Lvw;->d(II)I

    move-result v1

    iput v1, p0, Lys;->o:I

    .line 181
    invoke-virtual {v0}, Lvw;->a()V

    .line 182
    return-void
.end method

.method private static a(Landroid/view/View;IIII)V
    .locals 2

    .prologue
    .line 1641
    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1642
    return-void
.end method

.method private c(II)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 890
    invoke-virtual {p0}, Lys;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v7, v3

    .line 892
    :goto_0
    if-ge v7, p1, :cond_1

    .line 893
    invoke-virtual {p0, v7}, Lys;->c(I)Landroid/view/View;

    move-result-object v1

    .line 894
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 895
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lyt;

    .line 897
    iget v0, v6, Lyt;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 900
    iget v8, v6, Lyt;->height:I

    .line 901
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v6, Lyt;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 904
    invoke-virtual/range {v0 .. v5}, Lys;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 905
    iput v8, v6, Lyt;->height:I

    .line 892
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 909
    :cond_1
    return-void
.end method


# virtual methods
.method a(II)V
    .locals 27

    .prologue
    .line 590
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 591
    const/16 v18, 0x0

    .line 592
    const/16 v17, 0x0

    .line 593
    const/16 v16, 0x0

    .line 594
    const/4 v15, 0x0

    .line 595
    const/4 v14, 0x1

    .line 596
    const/4 v5, 0x0

    .line 598
    invoke-virtual/range {p0 .. p0}, Lys;->n()I

    move-result v21

    .line 600
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 601
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 603
    const/4 v10, 0x0

    .line 604
    const/4 v12, 0x0

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lys;->b:I

    move/from16 v24, v0

    .line 607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lys;->h:Z

    move/from16 v25, v0

    .line 609
    const/high16 v11, -0x80000000

    .line 612
    const/4 v3, 0x0

    move/from16 v20, v3

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 613
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lys;->c(I)Landroid/view/View;

    move-result-object v4

    .line 615
    if-nez v4, :cond_0

    .line 616
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    move v3, v11

    move v4, v12

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v11, v18

    .line 612
    :goto_1
    add-int/lit8 v12, v20, 0x1

    move/from16 v20, v12

    move v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v11

    move v12, v4

    move v11, v3

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_25

    .line 625
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lys;->d(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 626
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    move-object/from16 v0, p0

    iget v6, v0, Lys;->m:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 629
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lyt;

    .line 631
    iget v3, v9, Lyt;->g:F

    add-float v13, v5, v3

    .line 633
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-ne v0, v3, :cond_3

    iget v3, v9, Lyt;->height:I

    if-nez v3, :cond_3

    iget v3, v9, Lyt;->g:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    .line 637
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    .line 638
    iget v5, v9, Lyt;->topMargin:I

    add-int/2addr v5, v3

    iget v6, v9, Lyt;->bottomMargin:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 639
    const/4 v12, 0x1

    move v8, v11

    move v11, v12

    .line 678
    :goto_2
    if-ltz v24, :cond_2

    add-int/lit8 v3, v20, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_2

    .line 679
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    move-object/from16 v0, p0

    iput v3, v0, Lys;->c:I

    .line 685
    :cond_2
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_7

    iget v3, v9, Lyt;->g:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    .line 686
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    :cond_3
    const/high16 v3, -0x80000000

    .line 643
    iget v5, v9, Lyt;->height:I

    if-nez v5, :cond_4

    iget v5, v9, Lyt;->g:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 648
    const/4 v3, 0x0

    .line 649
    const/4 v5, -0x2

    iput v5, v9, Lyt;->height:I

    :cond_4
    move/from16 v19, v3

    .line 656
    const/4 v6, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget v8, v0, Lys;->f:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lys;->b(Landroid/view/View;IIII)V

    .line 660
    const/high16 v3, -0x80000000

    move/from16 v0, v19

    if-eq v0, v3, :cond_5

    .line 661
    move/from16 v0, v19

    iput v0, v9, Lyt;->height:I

    .line 664
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 665
    move-object/from16 v0, p0

    iget v5, v0, Lys;->f:I

    .line 666
    add-int v6, v5, v3

    iget v7, v9, Lyt;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v9, Lyt;->bottomMargin:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lys;->f:I

    .line 669
    if-eqz v25, :cond_24

    .line 670
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v8, v11

    move v11, v12

    goto :goto_2

    .line 656
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 692
    :cond_7
    const/4 v3, 0x0

    .line 693
    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_23

    iget v5, v9, Lyt;->width:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_23

    .line 698
    const/4 v5, 0x1

    .line 699
    const/4 v3, 0x1

    .line 702
    :goto_4
    iget v6, v9, Lyt;->leftMargin:I

    iget v7, v9, Lyt;->rightMargin:I

    add-int/2addr v6, v7

    .line 703
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v6

    .line 704
    move/from16 v0, v18

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 3275
    sget-object v10, Lks;->a:Llc;

    invoke-virtual {v10, v4}, Llc;->e(Landroid/view/View;)I

    move-result v4

    .line 705
    move/from16 v0, v17

    invoke-static {v0, v4}, Lvz;->a(II)I

    move-result v10

    .line 708
    if-eqz v14, :cond_8

    iget v4, v9, Lyt;->width:I

    const/4 v14, -0x1

    if-ne v4, v14, :cond_8

    const/4 v4, 0x1

    .line 709
    :goto_5
    iget v9, v9, Lyt;->g:F

    const/4 v14, 0x0

    cmpl-float v9, v9, v14

    if-lez v9, :cond_a

    .line 714
    if-eqz v3, :cond_9

    move v3, v6

    :goto_6
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v4

    move v7, v3

    move v9, v10

    move v3, v8

    move v4, v11

    move v10, v5

    move/from16 v8, v16

    move v5, v13

    move v11, v12

    goto/16 :goto_1

    .line 708
    :cond_8
    const/4 v4, 0x0

    goto :goto_5

    :cond_9
    move v3, v7

    .line 714
    goto :goto_6

    .line 717
    :cond_a
    if-eqz v3, :cond_b

    :goto_7
    move/from16 v0, v16

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v6, v4

    move v7, v15

    move v9, v10

    move v4, v11

    move v10, v5

    move v5, v13

    move v11, v12

    move/from16 v26, v8

    move v8, v3

    move/from16 v3, v26

    goto/16 :goto_1

    :cond_b
    move v6, v7

    goto :goto_7

    .line 724
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    if-lez v3, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lys;->d(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 725
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    move-object/from16 v0, p0

    iget v4, v0, Lys;->m:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 728
    :cond_d
    if-eqz v25, :cond_11

    const/high16 v3, -0x80000000

    move/from16 v0, v23

    if-eq v0, v3, :cond_e

    if-nez v23, :cond_11

    .line 730
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 732
    const/4 v3, 0x0

    move v4, v3

    :goto_8
    move/from16 v0, v21

    if-ge v4, v0, :cond_11

    .line 733
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lys;->c(I)Landroid/view/View;

    move-result-object v3

    .line 735
    if-nez v3, :cond_10

    .line 736
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 732
    :cond_f
    :goto_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_8

    .line 740
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_f

    .line 745
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lyt;

    .line 748
    move-object/from16 v0, p0

    iget v6, v0, Lys;->f:I

    .line 749
    add-int v7, v6, v11

    iget v8, v3, Lyt;->topMargin:I

    add-int/2addr v7, v8

    iget v3, v3, Lyt;->bottomMargin:I

    add-int/2addr v3, v7

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    goto :goto_9

    .line 755
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingBottom()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 757
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    .line 760
    invoke-virtual/range {p0 .. p0}, Lys;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 763
    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Lks;->a(III)I

    move-result v19

    .line 764
    const v3, 0xffffff

    and-int v3, v3, v19

    .line 769
    move-object/from16 v0, p0

    iget v4, v0, Lys;->f:I

    sub-int v6, v3, v4

    .line 770
    if-nez v12, :cond_12

    if-eqz v6, :cond_1d

    const/4 v3, 0x0

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1d

    .line 771
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lys;->g:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    move-object/from16 v0, p0

    iget v5, v0, Lys;->g:F

    .line 773
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 775
    const/4 v3, 0x0

    move v15, v3

    move v12, v14

    move/from16 v13, v16

    move/from16 v11, v17

    move/from16 v14, v18

    :goto_a
    move/from16 v0, v21

    if-ge v15, v0, :cond_1b

    .line 776
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lys;->c(I)Landroid/view/View;

    move-result-object v7

    .line 778
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_22

    .line 782
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lyt;

    .line 784
    iget v8, v3, Lyt;->g:F

    .line 785
    const/4 v4, 0x0

    cmpl-float v4, v8, v4

    if-lez v4, :cond_21

    .line 787
    int-to-float v4, v6

    mul-float/2addr v4, v8

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 788
    sub-float v8, v5, v8

    .line 789
    sub-int v9, v6, v4

    .line 791
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Lyt;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Lyt;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Lyt;->width:I

    move/from16 v0, p1

    invoke-static {v0, v5, v6}, Lys;->getChildMeasureSpec(III)I

    move-result v5

    .line 797
    iget v6, v3, Lyt;->height:I

    if-nez v6, :cond_14

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v6, :cond_16

    .line 800
    :cond_14
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v4, v6

    .line 801
    if-gez v4, :cond_15

    .line 802
    const/4 v4, 0x0

    :cond_15
    move-object v6, v7

    .line 810
    :goto_b
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v6, v5, v4}, Landroid/view/View;->measure(II)V

    .line 4275
    sget-object v4, Lks;->a:Llc;

    invoke-virtual {v4, v7}, Llc;->e(Landroid/view/View;)I

    move-result v4

    .line 816
    and-int/lit16 v4, v4, -0x100

    invoke-static {v11, v4}, Lvz;->a(II)I

    move-result v4

    move v5, v9

    move v6, v4

    move v4, v8

    .line 821
    :goto_c
    iget v8, v3, Lyt;->leftMargin:I

    iget v9, v3, Lyt;->rightMargin:I

    add-int/2addr v8, v9

    .line 822
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v8

    .line 823
    invoke-static {v14, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 825
    const/high16 v14, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v14, :cond_18

    iget v14, v3, Lyt;->width:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_18

    const/4 v14, 0x1

    .line 828
    :goto_d
    if-eqz v14, :cond_19

    :goto_e
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 831
    if-eqz v12, :cond_1a

    iget v8, v3, Lyt;->width:I

    const/4 v12, -0x1

    if-ne v8, v12, :cond_1a

    const/4 v8, 0x1

    .line 833
    :goto_f
    move-object/from16 v0, p0

    iget v12, v0, Lys;->f:I

    .line 834
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v12

    iget v13, v3, Lyt;->topMargin:I

    add-int/2addr v7, v13

    iget v3, v3, Lyt;->bottomMargin:I

    add-int/2addr v3, v7

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    move v3, v9

    move v7, v11

    .line 775
    :goto_10
    add-int/lit8 v9, v15, 0x1

    move v15, v9

    move v12, v8

    move v13, v3

    move v11, v6

    move v14, v7

    move v6, v5

    move v5, v4

    goto/16 :goto_a

    .line 810
    :cond_16
    if-lez v4, :cond_17

    move-object v6, v7

    goto :goto_b

    :cond_17
    const/4 v4, 0x0

    move-object v6, v7

    goto :goto_b

    .line 825
    :cond_18
    const/4 v14, 0x0

    goto :goto_d

    :cond_19
    move v8, v9

    .line 828
    goto :goto_e

    .line 831
    :cond_1a
    const/4 v8, 0x0

    goto :goto_f

    .line 839
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    move v3, v13

    move/from16 v17, v11

    move v4, v14

    move v14, v12

    .line 871
    :goto_11
    if-nez v14, :cond_1f

    const/high16 v5, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v5, :cond_1f

    .line 875
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 878
    invoke-virtual/range {p0 .. p0}, Lys;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 880
    move/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v3, v0, v1}, Lks;->a(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lys;->setMeasuredDimension(II)V

    .line 883
    if-eqz v10, :cond_1c

    .line 884
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lys;->c(II)V

    .line 886
    :cond_1c
    return-void

    .line 842
    :cond_1d
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 848
    if-eqz v25, :cond_20

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_20

    .line 849
    const/4 v3, 0x0

    move v4, v3

    :goto_13
    move/from16 v0, v21

    if-ge v4, v0, :cond_20

    .line 850
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lys;->c(I)Landroid/view/View;

    move-result-object v5

    .line 852
    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_1e

    .line 856
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lyt;

    .line 859
    iget v3, v3, Lyt;->g:F

    .line 860
    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1e

    .line 861
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v11, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/view/View;->measure(II)V

    .line 849
    :cond_1e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_13

    :cond_1f
    move v3, v4

    goto :goto_12

    :cond_20
    move v3, v13

    move/from16 v4, v18

    goto/16 :goto_11

    :cond_21
    move v4, v5

    move v5, v6

    move v6, v11

    goto/16 :goto_c

    :cond_22
    move v4, v5

    move v8, v12

    move v3, v13

    move v7, v14

    move v5, v6

    move v6, v11

    goto/16 :goto_10

    :cond_23
    move v5, v10

    goto/16 :goto_4

    :cond_24
    move v8, v11

    move v11, v12

    goto/16 :goto_2

    :cond_25
    move v3, v11

    move v4, v12

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v11, v18

    goto/16 :goto_1
.end method

.method a(IIII)V
    .locals 13

    .prologue
    .line 1422
    invoke-virtual {p0}, Lys;->getPaddingLeft()I

    move-result v5

    .line 1428
    sub-int v0, p3, p1

    .line 1429
    invoke-virtual {p0}, Lys;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    .line 1432
    sub-int/2addr v0, v5

    invoke-virtual {p0}, Lys;->getPaddingRight()I

    move-result v1

    sub-int v7, v0, v1

    .line 1434
    invoke-virtual {p0}, Lys;->n()I

    move-result v8

    .line 1436
    iget v0, p0, Lys;->e:I

    and-int/lit8 v0, v0, 0x70

    .line 1437
    iget v1, p0, Lys;->e:I

    const v2, 0x800007

    and-int/2addr v2, v1

    .line 1439
    sparse-switch v0, :sswitch_data_0

    .line 1452
    invoke-virtual {p0}, Lys;->getPaddingTop()I

    move-result v0

    .line 1456
    :goto_0
    const/4 v1, 0x0

    move v4, v1

    move v3, v0

    :goto_1
    if-ge v4, v8, :cond_4

    .line 1457
    invoke-virtual {p0, v4}, Lys;->c(I)Landroid/view/View;

    move-result-object v9

    .line 1458
    if-nez v9, :cond_1

    .line 1456
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1442
    :sswitch_0
    invoke-virtual {p0}, Lys;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int/2addr v0, p2

    iget v1, p0, Lys;->f:I

    sub-int/2addr v0, v1

    .line 1443
    goto :goto_0

    .line 1447
    :sswitch_1
    invoke-virtual {p0}, Lys;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v3, p0, Lys;->f:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1448
    goto :goto_0

    .line 1460
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 1461
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1462
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 1464
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyt;

    .line 1467
    iget v1, v0, Lyt;->h:I

    .line 1468
    if-gez v1, :cond_2

    move v1, v2

    .line 7174
    :cond_2
    sget-object v12, Lks;->a:Llc;

    invoke-virtual {v12, p0}, Llc;->u(Landroid/view/View;)I

    move-result v12

    .line 1472
    invoke-static {v1, v12}, Liy;->a(II)I

    move-result v1

    .line 1474
    and-int/lit8 v1, v1, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1486
    iget v1, v0, Lyt;->leftMargin:I

    add-int/2addr v1, v5

    .line 1490
    :goto_3
    invoke-virtual {p0, v4}, Lys;->d(I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1491
    iget v12, p0, Lys;->m:I

    add-int/2addr v3, v12

    .line 1494
    :cond_3
    iget v12, v0, Lyt;->topMargin:I

    add-int/2addr v3, v12

    .line 1495
    invoke-static {v9, v1, v3, v10, v11}, Lys;->a(Landroid/view/View;IIII)V

    .line 1497
    iget v0, v0, Lyt;->bottomMargin:I

    add-int/2addr v0, v11

    add-int/2addr v3, v0

    goto :goto_2

    .line 1476
    :sswitch_2
    sub-int v1, v7, v10

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iget v12, v0, Lyt;->leftMargin:I

    add-int/2addr v1, v12

    iget v12, v0, Lyt;->rightMargin:I

    sub-int/2addr v1, v12

    .line 1478
    goto :goto_3

    .line 1481
    :sswitch_3
    sub-int v1, v6, v10

    iget v12, v0, Lyt;->rightMargin:I

    sub-int/2addr v1, v12

    .line 1482
    goto :goto_3

    .line 1502
    :cond_4
    return-void

    .line 1439
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1474
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 291
    invoke-virtual {p0}, Lys;->n()I

    move-result v2

    .line 292
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 293
    invoke-virtual {p0, v1}, Lys;->c(I)Landroid/view/View;

    move-result-object v3

    .line 295
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Lys;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyt;

    .line 298
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v0, v0, Lyt;->topMargin:I

    sub-int v0, v3, v0

    iget v3, p0, Lys;->m:I

    sub-int/2addr v0, v3

    .line 299
    invoke-virtual {p0, p1, v0}, Lys;->a(Landroid/graphics/Canvas;I)V

    .line 292
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {p0, v2}, Lys;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lys;->c(I)Landroid/view/View;

    move-result-object v1

    .line 307
    if-nez v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lys;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lys;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lys;->m:I

    sub-int/2addr v0, v1

    .line 313
    :goto_1
    invoke-virtual {p0, p1, v0}, Lys;->a(Landroid/graphics/Canvas;I)V

    .line 315
    :cond_2
    return-void

    .line 310
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyt;

    .line 311
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v0, v0, Lyt;->bottomMargin:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method a(Landroid/graphics/Canvas;I)V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lys;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lys;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lys;->o:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lys;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lys;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lys;->o:I

    sub-int/2addr v2, v3

    iget v3, p0, Lys;->m:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 361
    iget-object v0, p0, Lys;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 362
    return-void
.end method

.method public b(Landroid/util/AttributeSet;)Lyt;
    .locals 2

    .prologue
    .line 1707
    new-instance v0, Lyt;

    invoke-virtual {p0}, Lys;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lyt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public b(Landroid/view/ViewGroup$LayoutParams;)Lyt;
    .locals 1

    .prologue
    .line 1730
    new-instance v0, Lyt;

    invoke-direct {v0, p1}, Lyt;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method b(II)V
    .locals 29

    .prologue
    .line 923
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 924
    const/16 v18, 0x0

    .line 925
    const/16 v17, 0x0

    .line 926
    const/16 v16, 0x0

    .line 927
    const/4 v15, 0x0

    .line 928
    const/4 v14, 0x1

    .line 929
    const/4 v4, 0x0

    .line 931
    invoke-virtual/range {p0 .. p0}, Lys;->n()I

    move-result v21

    .line 933
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 934
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v23

    .line 936
    const/4 v10, 0x0

    .line 937
    const/4 v12, 0x0

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lys;->i:[I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lys;->j:[I

    if-nez v2, :cond_1

    .line 940
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lys;->i:[I

    .line 941
    const/4 v2, 0x4

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lys;->j:[I

    .line 944
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lys;->i:[I

    move-object/from16 v24, v0

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lys;->j:[I

    move-object/from16 v25, v0

    .line 947
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v24, v6

    aput v7, v24, v5

    aput v7, v24, v3

    aput v7, v24, v2

    .line 948
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v25, v6

    aput v7, v25, v5

    aput v7, v25, v3

    aput v7, v25, v2

    .line 950
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lys;->a:Z

    move/from16 v26, v0

    .line 951
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lys;->h:Z

    move/from16 v27, v0

    .line 953
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    move v9, v2

    .line 955
    :goto_0
    const/high16 v11, -0x80000000

    .line 958
    const/4 v2, 0x0

    move/from16 v20, v2

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 959
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lys;->c(I)Landroid/view/View;

    move-result-object v3

    .line 961
    if-nez v3, :cond_3

    .line 962
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    move v2, v11

    move v3, v12

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v11, v18

    .line 958
    :goto_2
    add-int/lit8 v12, v20, 0x1

    move/from16 v20, v12

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v11

    move v12, v3

    move v11, v2

    goto :goto_1

    .line 953
    :cond_2
    const/4 v2, 0x0

    move v9, v2

    goto :goto_0

    .line 966
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-eq v2, v5, :cond_34

    .line 971
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lys;->d(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 972
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    move-object/from16 v0, p0

    iget v5, v0, Lys;->l:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 975
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lyt;

    .line 978
    iget v2, v8, Lyt;->g:F

    add-float v13, v4, v2

    .line 980
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-ne v0, v2, :cond_8

    iget v2, v8, Lyt;->width:I

    if-nez v2, :cond_8

    iget v2, v8, Lyt;->g:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    .line 984
    if-eqz v9, :cond_6

    .line 985
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    iget v4, v8, Lyt;->leftMargin:I

    iget v5, v8, Lyt;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 997
    :goto_3
    if-eqz v26, :cond_7

    .line 998
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 999
    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    move v7, v11

    move v11, v12

    .line 1042
    :goto_4
    const/4 v2, 0x0

    .line 1043
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v4, :cond_32

    iget v4, v8, Lyt;->height:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_32

    .line 1047
    const/4 v4, 0x1

    .line 1048
    const/4 v2, 0x1

    .line 1051
    :goto_5
    iget v5, v8, Lyt;->topMargin:I

    iget v6, v8, Lyt;->bottomMargin:I

    add-int/2addr v5, v6

    .line 1052
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v5

    .line 5275
    sget-object v10, Lks;->a:Llc;

    invoke-virtual {v10, v3}, Llc;->e(Landroid/view/View;)I

    move-result v10

    .line 1053
    move/from16 v0, v17

    invoke-static {v0, v10}, Lvz;->a(II)I

    move-result v10

    .line 1056
    if-eqz v26, :cond_5

    .line 1057
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v12

    .line 1058
    const/4 v3, -0x1

    if-eq v12, v3, :cond_5

    .line 1061
    iget v3, v8, Lyt;->h:I

    if-gez v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lys;->e:I

    :goto_6
    and-int/lit8 v3, v3, 0x70

    .line 1063
    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v3, v3, 0x1

    .line 1066
    aget v17, v24, v3

    move/from16 v0, v17

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    aput v17, v24, v3

    .line 1067
    aget v17, v25, v3

    sub-int v12, v6, v12

    move/from16 v0, v17

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    aput v12, v25, v3

    .line 1071
    :cond_5
    move/from16 v0, v18

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1073
    if-eqz v14, :cond_e

    iget v3, v8, Lyt;->height:I

    const/4 v14, -0x1

    if-ne v3, v14, :cond_e

    const/4 v3, 0x1

    .line 1074
    :goto_7
    iget v8, v8, Lyt;->g:F

    const/4 v14, 0x0

    cmpl-float v8, v8, v14

    if-lez v8, :cond_10

    .line 1079
    if-eqz v2, :cond_f

    move v2, v5

    :goto_8
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v3

    move v6, v2

    move v8, v10

    move v2, v7

    move v3, v11

    move v10, v4

    move/from16 v7, v16

    move v4, v13

    move v11, v12

    goto/16 :goto_2

    .line 987
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    .line 988
    iget v4, v8, Lyt;->leftMargin:I

    add-int/2addr v4, v2

    iget v5, v8, Lyt;->rightMargin:I

    add-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    goto/16 :goto_3

    .line 1001
    :cond_7
    const/4 v12, 0x1

    move v7, v11

    move v11, v12

    goto/16 :goto_4

    .line 1004
    :cond_8
    const/high16 v2, -0x80000000

    .line 1006
    iget v4, v8, Lyt;->width:I

    if-nez v4, :cond_9

    iget v4, v8, Lyt;->g:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    .line 1011
    const/4 v2, 0x0

    .line 1012
    const/4 v4, -0x2

    iput v4, v8, Lyt;->width:I

    :cond_9
    move/from16 v19, v2

    .line 1019
    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Lys;->f:I

    :goto_9
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lys;->b(Landroid/view/View;IIII)V

    .line 1023
    const/high16 v2, -0x80000000

    move/from16 v0, v19

    if-eq v0, v2, :cond_a

    .line 1024
    move/from16 v0, v19

    iput v0, v8, Lyt;->width:I

    .line 1027
    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1028
    if-eqz v9, :cond_c

    .line 1029
    move-object/from16 v0, p0

    iget v4, v0, Lys;->f:I

    iget v5, v8, Lyt;->leftMargin:I

    add-int/2addr v5, v2

    iget v6, v8, Lyt;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lys;->f:I

    .line 1037
    :goto_a
    if-eqz v27, :cond_33

    .line 1038
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v7, v11

    move v11, v12

    goto/16 :goto_4

    .line 1019
    :cond_b
    const/4 v5, 0x0

    goto :goto_9

    .line 1032
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lys;->f:I

    .line 1033
    add-int v5, v4, v2

    iget v6, v8, Lyt;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v8, Lyt;->rightMargin:I

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lys;->f:I

    goto :goto_a

    .line 1061
    :cond_d
    iget v3, v8, Lyt;->h:I

    goto/16 :goto_6

    .line 1073
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_f
    move v2, v6

    .line 1079
    goto/16 :goto_8

    .line 1082
    :cond_10
    if-eqz v2, :cond_11

    :goto_b
    move/from16 v0, v16

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v5, v3

    move v6, v15

    move v8, v10

    move v3, v11

    move v10, v4

    move v4, v13

    move v11, v12

    move/from16 v28, v7

    move v7, v2

    move/from16 v2, v28

    goto/16 :goto_2

    :cond_11
    move v5, v6

    goto :goto_b

    .line 1089
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    if-lez v2, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lys;->d(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1090
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    move-object/from16 v0, p0

    iget v3, v0, Lys;->l:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 1095
    :cond_13
    const/4 v2, 0x1

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x0

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x2

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_31

    .line 1099
    :cond_14
    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, 0x1

    aget v5, v24, v5

    const/4 v6, 0x2

    aget v6, v24, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1102
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v5, 0x0

    aget v5, v25, v5

    const/4 v6, 0x1

    aget v6, v25, v6

    const/4 v7, 0x2

    aget v7, v25, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1105
    add-int/2addr v2, v3

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1108
    :goto_c
    if-eqz v27, :cond_19

    const/high16 v2, -0x80000000

    move/from16 v0, v22

    if-eq v0, v2, :cond_15

    if-nez v22, :cond_19

    .line 1110
    :cond_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 1112
    const/4 v2, 0x0

    move v5, v2

    :goto_d
    move/from16 v0, v21

    if-ge v5, v0, :cond_19

    .line 1113
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lys;->c(I)Landroid/view/View;

    move-result-object v2

    .line 1115
    if-nez v2, :cond_17

    .line 1116
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 1112
    :cond_16
    :goto_e
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_d

    .line 1120
    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_16

    .line 1125
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lyt;

    .line 1127
    if-eqz v9, :cond_18

    .line 1128
    move-object/from16 v0, p0

    iget v6, v0, Lys;->f:I

    iget v7, v2, Lyt;->leftMargin:I

    add-int/2addr v7, v11

    iget v2, v2, Lyt;->rightMargin:I

    add-int/2addr v2, v7

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    goto :goto_e

    .line 1131
    :cond_18
    move-object/from16 v0, p0

    iget v6, v0, Lys;->f:I

    .line 1132
    add-int v7, v6, v11

    iget v8, v2, Lyt;->leftMargin:I

    add-int/2addr v7, v8

    iget v2, v2, Lyt;->rightMargin:I

    add-int/2addr v2, v7

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    goto :goto_e

    .line 1139
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 1141
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lys;->getSuggestedMinimumWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1147
    const/4 v5, 0x0

    move/from16 v0, p1

    invoke-static {v2, v0, v5}, Lks;->a(III)I

    move-result v18

    .line 1148
    const v2, 0xffffff

    and-int v2, v2, v18

    .line 1153
    move-object/from16 v0, p0

    iget v5, v0, Lys;->f:I

    sub-int v6, v2, v5

    .line 1154
    if-nez v12, :cond_1a

    if-eqz v6, :cond_2a

    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2a

    .line 1155
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lys;->g:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1b

    move-object/from16 v0, p0

    iget v4, v0, Lys;->g:F

    .line 1157
    :cond_1b
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v24, v7

    aput v8, v24, v5

    aput v8, v24, v3

    aput v8, v24, v2

    .line 1158
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    aput v8, v25, v7

    aput v8, v25, v5

    aput v8, v25, v3

    aput v8, v25, v2

    .line 1159
    const/4 v7, -0x1

    .line 1161
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 1163
    const/4 v2, 0x0

    move v15, v2

    move v11, v14

    move/from16 v12, v16

    move v14, v7

    move/from16 v7, v17

    :goto_f
    move/from16 v0, v21

    if-ge v15, v0, :cond_26

    .line 1164
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lys;->c(I)Landroid/view/View;

    move-result-object v5

    .line 1166
    if-eqz v5, :cond_30

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    .line 1170
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lyt;

    .line 1173
    iget v8, v2, Lyt;->g:F

    .line 1174
    const/4 v3, 0x0

    cmpl-float v3, v8, v3

    if-lez v3, :cond_2f

    .line 1176
    int-to-float v3, v6

    mul-float/2addr v3, v8

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 1177
    sub-float v8, v4, v8

    .line 1178
    sub-int/2addr v6, v3

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingBottom()I

    move-result v13

    add-int/2addr v4, v13

    iget v13, v2, Lyt;->topMargin:I

    add-int/2addr v4, v13

    iget v13, v2, Lyt;->bottomMargin:I

    add-int/2addr v4, v13

    iget v13, v2, Lyt;->height:I

    move/from16 v0, p2

    invoke-static {v0, v4, v13}, Lys;->getChildMeasureSpec(III)I

    move-result v13

    .line 1187
    iget v4, v2, Lyt;->width:I

    if-nez v4, :cond_1c

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v4, :cond_1f

    .line 1190
    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 1191
    if-gez v3, :cond_1d

    .line 1192
    const/4 v3, 0x0

    :cond_1d
    move-object v4, v5

    .line 1200
    :goto_10
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v13}, Landroid/view/View;->measure(II)V

    .line 6275
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v5}, Llc;->e(Landroid/view/View;)I

    move-result v3

    .line 1206
    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    invoke-static {v7, v3}, Lvz;->a(II)I

    move-result v13

    move v7, v8

    move v8, v6

    .line 1210
    :goto_11
    if-eqz v9, :cond_21

    .line 1211
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget v6, v2, Lyt;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Lyt;->rightMargin:I

    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    .line 1219
    :goto_12
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v3, :cond_22

    iget v3, v2, Lyt;->height:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    const/4 v3, 0x1

    .line 1222
    :goto_13
    iget v4, v2, Lyt;->topMargin:I

    iget v6, v2, Lyt;->bottomMargin:I

    add-int/2addr v4, v6

    .line 1223
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 1224
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1225
    if-eqz v3, :cond_23

    move v3, v4

    :goto_14
    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1228
    if-eqz v11, :cond_24

    iget v3, v2, Lyt;->height:I

    const/4 v11, -0x1

    if-ne v3, v11, :cond_24

    const/4 v3, 0x1

    .line 1230
    :goto_15
    if-eqz v26, :cond_1e

    .line 1231
    invoke-virtual {v5}, Landroid/view/View;->getBaseline()I

    move-result v5

    .line 1232
    const/4 v11, -0x1

    if-eq v5, v11, :cond_1e

    .line 1234
    iget v11, v2, Lyt;->h:I

    if-gez v11, :cond_25

    move-object/from16 v0, p0

    iget v2, v0, Lys;->e:I

    :goto_16
    and-int/lit8 v2, v2, 0x70

    .line 1236
    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, -0x2

    shr-int/lit8 v2, v2, 0x1

    .line 1239
    aget v11, v24, v2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    aput v11, v24, v2

    .line 1240
    aget v11, v25, v2

    sub-int v5, v6, v5

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    aput v5, v25, v2

    :cond_1e
    move v2, v7

    move v5, v4

    move v6, v13

    move v4, v3

    move v7, v14

    move v3, v8

    .line 1163
    :goto_17
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    move v11, v4

    move v12, v5

    move v14, v7

    move v7, v6

    move v4, v2

    move v6, v3

    goto/16 :goto_f

    .line 1200
    :cond_1f
    if-lez v3, :cond_20

    move-object v4, v5

    goto/16 :goto_10

    :cond_20
    const/4 v3, 0x0

    move-object v4, v5

    goto/16 :goto_10

    .line 1214
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Lys;->f:I

    .line 1215
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    iget v6, v2, Lyt;->leftMargin:I

    add-int/2addr v4, v6

    iget v6, v2, Lyt;->rightMargin:I

    add-int/2addr v4, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lys;->f:I

    goto/16 :goto_12

    .line 1219
    :cond_22
    const/4 v3, 0x0

    goto :goto_13

    :cond_23
    move v3, v6

    .line 1225
    goto :goto_14

    .line 1228
    :cond_24
    const/4 v3, 0x0

    goto :goto_15

    .line 1234
    :cond_25
    iget v2, v2, Lyt;->h:I

    goto :goto_16

    .line 1247
    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lys;->f:I

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lys;->f:I

    .line 1252
    const/4 v2, 0x1

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x0

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x2

    aget v2, v24, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    .line 1256
    :cond_27
    const/4 v2, 0x3

    aget v2, v24, v2

    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v4, 0x1

    aget v4, v24, v4

    const/4 v5, 0x2

    aget v5, v24, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1259
    const/4 v3, 0x3

    aget v3, v25, v3

    const/4 v4, 0x0

    aget v4, v25, v4

    const/4 v5, 0x1

    aget v5, v25, v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1262
    add-int/2addr v2, v3

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_28
    move v2, v12

    move/from16 v17, v7

    move v3, v14

    move v14, v11

    .line 1291
    :goto_18
    if-nez v14, :cond_2d

    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v23

    if-eq v0, v4, :cond_2d

    .line 1295
    :goto_19
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lys;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1300
    const/high16 v3, -0x1000000

    and-int v3, v3, v17

    or-int v3, v3, v18

    shl-int/lit8 v4, v17, 0x10

    move/from16 v0, p2

    invoke-static {v2, v0, v4}, Lks;->a(III)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lys;->setMeasuredDimension(II)V

    .line 1304
    if-eqz v10, :cond_2c

    .line 6313
    invoke-virtual/range {p0 .. p0}, Lys;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 6315
    const/4 v2, 0x0

    move v9, v2

    :goto_1a
    move/from16 v0, v21

    if-ge v9, v0, :cond_2c

    .line 6316
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lys;->c(I)Landroid/view/View;

    move-result-object v3

    .line 6317
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_29

    .line 6318
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lyt;

    .line 6320
    iget v2, v8, Lyt;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_29

    .line 6323
    iget v10, v8, Lyt;->width:I

    .line 6324
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Lyt;->width:I

    .line 6327
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lys;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 6328
    iput v10, v8, Lyt;->width:I

    .line 6315
    :cond_29
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1a

    .line 1265
    :cond_2a
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1269
    if-eqz v27, :cond_2e

    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    if-eq v0, v2, :cond_2e

    .line 1270
    const/4 v2, 0x0

    move v4, v2

    :goto_1b
    move/from16 v0, v21

    if-ge v4, v0, :cond_2e

    .line 1271
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lys;->c(I)Landroid/view/View;

    move-result-object v5

    .line 1273
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v6, 0x8

    if-eq v2, v6, :cond_2b

    .line 1277
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lyt;

    .line 1280
    iget v2, v2, Lyt;->g:F

    .line 1281
    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-lez v2, :cond_2b

    .line 1282
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v11, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/view/View;->measure(II)V

    .line 1270
    :cond_2b
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1b

    .line 1307
    :cond_2c
    return-void

    :cond_2d
    move v2, v3

    goto/16 :goto_19

    :cond_2e
    move v2, v12

    goto/16 :goto_18

    :cond_2f
    move v8, v6

    move v13, v7

    move v7, v4

    goto/16 :goto_11

    :cond_30
    move v2, v4

    move v3, v6

    move v5, v12

    move v4, v11

    move v6, v7

    move v7, v14

    goto/16 :goto_17

    :cond_31
    move/from16 v3, v18

    goto/16 :goto_c

    :cond_32
    move v4, v10

    goto/16 :goto_5

    :cond_33
    move v7, v11

    move v11, v12

    goto/16 :goto_4

    :cond_34
    move v2, v11

    move v3, v12

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v11, v18

    goto/16 :goto_2
.end method

.method b(IIII)V
    .locals 23

    .prologue
    .line 1517
    invoke-static/range {p0 .. p0}, Lvz;->a(Landroid/view/View;)Z

    move-result v5

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingTop()I

    move-result v8

    .line 1524
    sub-int v3, p4, p2

    .line 1525
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingBottom()I

    move-result v4

    sub-int v12, v3, v4

    .line 1528
    sub-int/2addr v3, v8

    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingBottom()I

    move-result v4

    sub-int v13, v3, v4

    .line 1530
    invoke-virtual/range {p0 .. p0}, Lys;->n()I

    move-result v14

    .line 1532
    move-object/from16 v0, p0

    iget v3, v0, Lys;->e:I

    const v4, 0x800007

    and-int/2addr v3, v4

    .line 1533
    move-object/from16 v0, p0

    iget v4, v0, Lys;->e:I

    and-int/lit8 v10, v4, 0x70

    .line 1535
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lys;->a:Z

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lys;->i:[I

    move-object/from16 v16, v0

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lys;->j:[I

    move-object/from16 v17, v0

    .line 8174
    sget-object v4, Lks;->a:Llc;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Llc;->u(Landroid/view/View;)I

    move-result v4

    .line 1541
    invoke-static {v3, v4}, Liy;->a(II)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingLeft()I

    move-result v9

    .line 1558
    :goto_0
    const/4 v4, 0x0

    .line 1559
    const/4 v3, 0x1

    .line 1561
    if-eqz v5, :cond_7

    .line 1562
    add-int/lit8 v4, v14, -0x1

    .line 1563
    const/4 v3, -0x1

    move v5, v4

    move v4, v3

    .line 1566
    :goto_1
    const/4 v3, 0x0

    move v11, v3

    :goto_2
    if-ge v11, v14, :cond_4

    .line 1567
    mul-int v3, v4, v11

    add-int v18, v5, v3

    .line 1568
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lys;->c(I)Landroid/view/View;

    move-result-object v19

    .line 1570
    if-nez v19, :cond_1

    .line 1566
    :cond_0
    :goto_3
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_2

    .line 1544
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingLeft()I

    move-result v3

    add-int v3, v3, p3

    sub-int v3, v3, p1

    move-object/from16 v0, p0

    iget v4, v0, Lys;->f:I

    sub-int v9, v3, v4

    .line 1545
    goto :goto_0

    .line 1549
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lys;->getPaddingLeft()I

    move-result v3

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v6, v0, Lys;->f:I

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    add-int v9, v3, v4

    .line 1550
    goto :goto_0

    .line 1572
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_0

    .line 1573
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 1574
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 1575
    const/4 v6, -0x1

    .line 1577
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lyt;

    .line 1580
    if-eqz v15, :cond_2

    iget v7, v3, Lyt;->height:I

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_2

    .line 1581
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBaseline()I

    move-result v6

    .line 1584
    :cond_2
    iget v7, v3, Lyt;->h:I

    .line 1585
    if-gez v7, :cond_3

    move v7, v10

    .line 1589
    :cond_3
    and-int/lit8 v7, v7, 0x70

    sparse-switch v7, :sswitch_data_1

    move v6, v8

    .line 1625
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lys;->d(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1626
    move-object/from16 v0, p0

    iget v7, v0, Lys;->l:I

    add-int/2addr v7, v9

    .line 1629
    :goto_5
    iget v9, v3, Lyt;->leftMargin:I

    add-int/2addr v7, v9

    .line 1630
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v7, v6, v1, v2}, Lys;->a(Landroid/view/View;IIII)V

    .line 1632
    iget v3, v3, Lyt;->rightMargin:I

    add-int v3, v3, v20

    add-int v9, v7, v3

    goto :goto_3

    .line 1591
    :sswitch_2
    iget v7, v3, Lyt;->topMargin:I

    add-int/2addr v7, v8

    .line 1592
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_6

    .line 1593
    const/16 v22, 0x1

    aget v22, v16, v22

    sub-int v6, v22, v6

    add-int/2addr v6, v7

    goto :goto_4

    .line 1609
    :sswitch_3
    sub-int v6, v13, v21

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v8

    iget v7, v3, Lyt;->topMargin:I

    add-int/2addr v6, v7

    iget v7, v3, Lyt;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 1611
    goto :goto_4

    .line 1614
    :sswitch_4
    sub-int v7, v12, v21

    iget v0, v3, Lyt;->bottomMargin:I

    move/from16 v22, v0

    sub-int v7, v7, v22

    .line 1615
    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v6, v0, :cond_6

    .line 1616
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v6, v22, v6

    .line 1617
    const/16 v22, 0x2

    aget v22, v17, v22

    sub-int v6, v22, v6

    sub-int v6, v7, v6

    .line 1618
    goto :goto_4

    .line 1638
    :cond_4
    return-void

    :cond_5
    move v7, v9

    goto :goto_5

    :cond_6
    move v6, v7

    goto :goto_4

    :cond_7
    move v5, v4

    move v4, v3

    goto/16 :goto_1

    .line 1541
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1589
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method b(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 318
    invoke-virtual {p0}, Lys;->n()I

    move-result v2

    .line 319
    invoke-static {p0}, Lvz;->a(Landroid/view/View;)Z

    move-result v3

    .line 320
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 321
    invoke-virtual {p0, v1}, Lys;->c(I)Landroid/view/View;

    move-result-object v4

    .line 323
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Lys;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyt;

    .line 327
    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v0, v0, Lyt;->rightMargin:I

    add-int/2addr v0, v4

    .line 332
    :goto_1
    invoke-virtual {p0, p1, v0}, Lys;->b(Landroid/graphics/Canvas;I)V

    .line 320
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v0, v0, Lyt;->leftMargin:I

    sub-int v0, v4, v0

    iget v4, p0, Lys;->l:I

    sub-int/2addr v0, v4

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {p0, v2}, Lys;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Lys;->c(I)Landroid/view/View;

    move-result-object v1

    .line 340
    if-nez v1, :cond_5

    .line 341
    if-eqz v3, :cond_4

    .line 342
    invoke-virtual {p0}, Lys;->getPaddingLeft()I

    move-result v0

    .line 354
    :goto_2
    invoke-virtual {p0, p1, v0}, Lys;->b(Landroid/graphics/Canvas;I)V

    .line 356
    :cond_3
    return-void

    .line 344
    :cond_4
    invoke-virtual {p0}, Lys;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lys;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lys;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 347
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyt;

    .line 348
    if-eqz v3, :cond_6

    .line 349
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v0, v0, Lyt;->leftMargin:I

    sub-int v0, v1, v0

    iget v1, p0, Lys;->l:I

    sub-int/2addr v0, v1

    goto :goto_2

    .line 351
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v0, v0, Lyt;->rightMargin:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method b(Landroid/graphics/Canvas;I)V
    .locals 5

    .prologue
    .line 365
    iget-object v0, p0, Lys;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lys;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lys;->o:I

    add-int/2addr v1, v2

    iget v2, p0, Lys;->l:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Lys;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lys;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lys;->o:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 367
    iget-object v0, p0, Lys;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 368
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 229
    iget-object v1, p0, Lys;->k:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 232
    :cond_0
    iput-object p1, p0, Lys;->k:Landroid/graphics/drawable/Drawable;

    .line 233
    if-eqz p1, :cond_2

    .line 234
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lys;->l:I

    .line 235
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lys;->m:I

    .line 240
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lys;->setWillNotDraw(Z)V

    .line 241
    invoke-virtual {p0}, Lys;->requestLayout()V

    goto :goto_0

    .line 237
    :cond_2
    iput v0, p0, Lys;->l:I

    .line 238
    iput v0, p0, Lys;->m:I

    goto :goto_1
.end method

.method b(Landroid/view/View;IIII)V
    .locals 0

    .prologue
    .line 1373
    invoke-virtual/range {p0 .. p5}, Lys;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1375
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 388
    iput-boolean p1, p0, Lys;->a:Z

    .line 389
    return-void
.end method

.method c(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 501
    invoke-virtual {p0, p1}, Lys;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 1737
    instance-of v0, p1, Lyt;

    return v0
.end method

.method protected d(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 561
    if-nez p1, :cond_2

    .line 562
    iget v2, p0, Lys;->n:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 575
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 562
    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0}, Lys;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 564
    iget v2, p0, Lys;->n:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 565
    :cond_3
    iget v2, p0, Lys;->n:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 567
    add-int/lit8 v2, p1, -0x1

    :goto_1
    if-ltz v2, :cond_5

    .line 568
    invoke-virtual {p0, v2}, Lys;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 567
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 575
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 1650
    iget v0, p0, Lys;->d:I

    if-eq v0, p1, :cond_0

    .line 1651
    iput p1, p0, Lys;->d:I

    .line 1652
    invoke-virtual {p0}, Lys;->requestLayout()V

    .line 1654
    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .prologue
    .line 1675
    iget v0, p0, Lys;->e:I

    if-eq v0, p1, :cond_1

    .line 1676
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 1677
    const v0, 0x800003

    or-int/2addr v0, p1

    .line 1680
    :goto_0
    and-int/lit8 v1, v0, 0x70

    if-nez v1, :cond_0

    .line 1681
    or-int/lit8 v0, v0, 0x30

    .line 1684
    :cond_0
    iput v0, p0, Lys;->e:I

    .line 1685
    invoke-virtual {p0}, Lys;->requestLayout()V

    .line 1687
    :cond_1
    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lys;->l()Lyt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lys;->b(Landroid/util/AttributeSet;)Lyt;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lys;->b(Landroid/view/ViewGroup$LayoutParams;)Lyt;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 419
    iget v1, p0, Lys;->b:I

    if-gez v1, :cond_1

    .line 420
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 423
    :cond_1
    invoke-virtual {p0}, Lys;->getChildCount()I

    move-result v1

    iget v2, p0, Lys;->b:I

    if-gt v1, v2, :cond_2

    .line 424
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_2
    iget v1, p0, Lys;->b:I

    invoke-virtual {p0, v1}, Lys;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 429
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    .line 431
    if-ne v3, v0, :cond_3

    .line 432
    iget v1, p0, Lys;->b:I

    if-eqz v1, :cond_0

    .line 438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_3
    iget v0, p0, Lys;->c:I

    .line 450
    iget v1, p0, Lys;->d:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 451
    iget v1, p0, Lys;->e:I

    and-int/lit8 v1, v1, 0x70

    .line 452
    const/16 v4, 0x30

    if-eq v1, v4, :cond_4

    .line 453
    sparse-switch v1, :sswitch_data_0

    :cond_4
    move v1, v0

    .line 466
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lyt;

    .line 467
    iget v0, v0, Lyt;->topMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_0

    .line 455
    :sswitch_0
    invoke-virtual {p0}, Lys;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lys;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lys;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lys;->f:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 456
    goto :goto_1

    .line 459
    :sswitch_1
    invoke-virtual {p0}, Lys;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lys;->getTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lys;->getPaddingTop()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Lys;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lys;->f:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 453
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public l()Lyt;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1720
    iget v0, p0, Lys;->d:I

    if-nez v0, :cond_0

    .line 1721
    new-instance v0, Lyt;

    invoke-direct {v0, v2, v2}, Lyt;-><init>(II)V

    .line 1725
    :goto_0
    return-object v0

    .line 1722
    :cond_0
    iget v0, p0, Lys;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1723
    new-instance v0, Lyt;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lyt;-><init>(II)V

    goto :goto_0

    .line 1725
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lys;->l:I

    return v0
.end method

.method n()I
    .locals 1

    .prologue
    .line 514
    invoke-virtual {p0}, Lys;->getChildCount()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lys;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    iget v0, p0, Lys;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 284
    invoke-virtual {p0, p1}, Lys;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0, p1}, Lys;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 1741
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1742
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1743
    const-class v0, Lys;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1745
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 1748
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1749
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1750
    const-class v0, Lys;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1752
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 1402
    iget v0, p0, Lys;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1403
    invoke-virtual {p0, p2, p3, p4, p5}, Lys;->a(IIII)V

    .line 1407
    :goto_0
    return-void

    .line 1405
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lys;->b(IIII)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 546
    iget v0, p0, Lys;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 547
    invoke-virtual {p0, p1, p2}, Lys;->a(II)V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    invoke-virtual {p0, p1, p2}, Lys;->b(II)V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return v0
.end method
