.class public final Lgmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lgmy;->a:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .prologue
    .line 815
    iget-object v3, p0, Lgmy;->a:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 1539
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1542
    :cond_1
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1545
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v5, v0, Lgne;->t:Landroid/view/View;

    .line 1547
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v0, Lgne;->x:Landroid/widget/ImageView;

    .line 1548
    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 1549
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpt;

    .line 1551
    iget v2, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->f:F

    const/4 v6, 0x0

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    .line 1552
    iget-object v2, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v2, v2, Lgne;->w:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->f:F

    .line 1555
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1556
    iget-object v2, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v2, v2, Lgne;->p:Landroid/view/View;

    const-string v6, "alpha"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 1558
    iget-boolean v2, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->h:Z

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    .line 1559
    :goto_1
    iget v7, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->e:F

    iget v8, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->f:F

    div-float/2addr v7, v8

    .line 1560
    iget v8, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->e:F

    iget v9, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->f:F

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v1, v1

    sub-float v1, v9, v1

    sub-float v1, v8, v1

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v1, v8

    .line 1562
    iget-object v8, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v8, v8, Lgne;->p:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 1563
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/2addr v2, v9

    sub-int v2, v8, v2

    int-to-float v2, v2

    iget v8, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->f:F

    iget v9, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->e:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    sub-float/2addr v2, v8

    .line 1565
    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 1567
    const-string v8, "translationX"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v2, v9, v10

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1569
    const-wide/16 v8, 0x1c2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1570
    const-string v8, "translationY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v1, v9, v10

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1572
    const-wide/16 v8, 0x1c2

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1573
    const-string v8, "scaleY"

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    aput v7, v9, v10

    invoke-static {v5, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 1575
    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1576
    const-string v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v7, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1578
    const-wide/16 v10, 0x12c

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1579
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 1580
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1583
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->E:Landroid/view/View;

    .line 1585
    iget-object v2, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v2, v2, Lgne;->H:Landroid/widget/ImageView;

    .line 1586
    if-eqz v2, :cond_3

    .line 1587
    iget-object v5, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v5, v5, Lgne;->v:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1589
    :cond_3
    if-eqz v1, :cond_4

    .line 1590
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    const-string v2, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v5, v7

    .line 1592
    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 1593
    const-wide/16 v8, 0x1c2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1594
    const-string v5, "scaleY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v7, v8

    .line 1595
    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 1597
    const-wide/16 v8, 0x1c2

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1598
    const-string v7, "scaleX"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    .line 1599
    invoke-static {v1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1601
    const-wide/16 v8, 0x1c2

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1602
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 1603
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1606
    :cond_4
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->y:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->m:Landroid/view/View;

    if-eqz v1, :cond_5

    .line 1607
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->y:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1608
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->y:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 1609
    const/16 v1, 0x96

    invoke-virtual {v3, v0, v6, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgpt;Landroid/animation/AnimatorSet$Builder;I)V

    .line 1612
    :cond_5
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 1613
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->u:Landroid/widget/ImageView;

    const-string v2, "alpha"

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v5, v7

    invoke-static {v1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1615
    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1616
    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1619
    :cond_6
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v1, v1, Lgne;->C:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 1620
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v2, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v2, v2, Lgne;->C:Landroid/widget/ImageView;

    invoke-virtual {v3, v1, v2, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgne;Landroid/widget/ImageView;Lgpt;)V

    .line 1621
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v0, v0, Lgne;->C:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1622
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->d:Lgne;

    iget-object v0, v0, Lgne;->C:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v5, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1624
    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1625
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1628
    :cond_7
    new-instance v0, Lgmu;

    invoke-direct {v0, v3}, Lgmu;-><init>(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1638
    iget-object v1, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b:Lgpt;

    .line 1639
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgpt;

    iput-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b:Lgpt;

    .line 1640
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1641
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1642
    const/16 v0, 0x12c

    invoke-virtual {v3, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b(I)V

    .line 1644
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1645
    iput-object v4, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->j:Landroid/animation/AnimatorSet;

    .line 1646
    iget-object v0, v3, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1558
    :cond_8
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_1

    .line 1556
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
