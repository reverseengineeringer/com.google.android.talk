.class final Lzd;
.super Lvj;
.source "SourceFile"


# instance fields
.field g:Z

.field private h:Z

.field private i:Z

.field private j:Lmd;

.field private k:Lpe;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 1586
    sget v0, Laen;->T:I

    invoke-direct {p0, p1, v0}, Lvj;-><init>(Landroid/content/Context;I)V

    .line 1587
    iput-boolean p2, p0, Lzd;->h:Z

    .line 1588
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lzd;->setCacheColorHint(I)V

    .line 1589
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)Z
    .locals 11

    .prologue
    const/16 v10, 0x15

    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1601
    invoke-static {p1}, Ljx;->a(Landroid/view/MotionEvent;)I

    move-result v3

    .line 1602
    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    move v3, v2

    .line 1635
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v0, :cond_3

    .line 3663
    :cond_1
    iput-boolean v1, p0, Lzd;->i:Z

    .line 3664
    invoke-virtual {p0, v1}, Lzd;->setPressed(Z)V

    .line 3666
    invoke-virtual {p0}, Lzd;->drawableStateChanged()V

    .line 3668
    iget v0, p0, Lzd;->f:I

    invoke-virtual {p0}, Lzd;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Lzd;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3669
    if-eqz v0, :cond_2

    .line 3670
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 3673
    :cond_2
    iget-object v0, p0, Lzd;->j:Lmd;

    if-eqz v0, :cond_3

    .line 3674
    iget-object v0, p0, Lzd;->j:Lmd;

    invoke-virtual {v0}, Lmd;->b()V

    .line 3675
    const/4 v0, 0x0

    iput-object v0, p0, Lzd;->j:Lmd;

    .line 1640
    :cond_3
    if-eqz v3, :cond_d

    .line 1641
    iget-object v0, p0, Lzd;->k:Lpe;

    if-nez v0, :cond_4

    .line 1642
    new-instance v0, Lpe;

    invoke-direct {v0, p0}, Lpe;-><init>(Landroid/widget/ListView;)V

    iput-object v0, p0, Lzd;->k:Lpe;

    .line 1644
    :cond_4
    iget-object v0, p0, Lzd;->k:Lpe;

    invoke-virtual {v0, v2}, Lpe;->a(Z)Lnx;

    .line 1645
    iget-object v0, p0, Lzd;->k:Lpe;

    invoke-virtual {v0, p0, p1}, Lpe;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 1650
    :cond_5
    :goto_2
    return v3

    :pswitch_0
    move v0, v1

    move v3, v1

    .line 1605
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 1610
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 1611
    if-gez v4, :cond_6

    move v0, v1

    move v3, v1

    .line 1613
    goto :goto_1

    .line 1616
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 1617
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    .line 1618
    invoke-virtual {p0, v5, v4}, Lzd;->pointToPosition(II)I

    move-result v6

    .line 1619
    if-ne v6, v8, :cond_7

    move v3, v0

    move v0, v2

    .line 1621
    goto :goto_1

    .line 1624
    :cond_7
    invoke-virtual {p0}, Lzd;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, v6, v0

    invoke-virtual {p0, v0}, Lzd;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1625
    int-to-float v5, v5

    int-to-float v4, v4

    .line 2680
    iput-boolean v2, p0, Lzd;->i:Z

    .line 2683
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_8

    .line 2684
    invoke-virtual {p0, v5, v4}, Lzd;->drawableHotspotChanged(FF)V

    .line 2686
    :cond_8
    invoke-virtual {p0}, Lzd;->isPressed()Z

    move-result v7

    if-nez v7, :cond_9

    .line 2687
    invoke-virtual {p0, v2}, Lzd;->setPressed(Z)V

    .line 2691
    :cond_9
    invoke-virtual {p0}, Lzd;->layoutChildren()V

    .line 2695
    iget v7, p0, Lzd;->f:I

    if-eq v7, v8, :cond_a

    .line 2696
    iget v7, p0, Lzd;->f:I

    invoke-virtual {p0}, Lzd;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lzd;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2697
    if-eqz v7, :cond_a

    if-eq v7, v0, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2698
    invoke-virtual {v7, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2701
    :cond_a
    iput v6, p0, Lzd;->f:I

    .line 2704
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v5, v7

    .line 2705
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v4, v8

    .line 2706
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v10, :cond_b

    .line 2707
    invoke-virtual {v0, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 2709
    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_c

    .line 2710
    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 2714
    :cond_c
    invoke-virtual {p0, v6}, Lzd;->setSelection(I)V

    .line 2715
    invoke-virtual {p0, v6, v0, v5, v4}, Lzd;->a(ILandroid/view/View;FF)V

    .line 2720
    invoke-virtual {p0, v1}, Lzd;->a(Z)V

    .line 2724
    invoke-virtual {p0}, Lzd;->refreshDrawableState()V

    .line 1628
    if-ne v3, v2, :cond_0

    .line 3658
    invoke-virtual {p0, v6}, Lzd;->getItemIdAtPosition(I)J

    move-result-wide v4

    .line 3659
    invoke-virtual {p0, v0, v6, v4, v5}, Lzd;->performItemClick(Landroid/view/View;IJ)Z

    goto/16 :goto_0

    .line 1646
    :cond_d
    iget-object v0, p0, Lzd;->k:Lpe;

    if-eqz v0, :cond_5

    .line 1647
    iget-object v0, p0, Lzd;->k:Lpe;

    invoke-virtual {v0, v1}, Lpe;->a(Z)Lnx;

    goto/16 :goto_2

    :pswitch_2
    move v0, v2

    goto/16 :goto_3

    .line 1602
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lzd;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lvj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 1765
    iget-boolean v0, p0, Lzd;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lvj;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 1745
    iget-boolean v0, p0, Lzd;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lvj;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 1755
    iget-boolean v0, p0, Lzd;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lvj;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 1735
    iget-boolean v0, p0, Lzd;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzd;->g:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lvj;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
