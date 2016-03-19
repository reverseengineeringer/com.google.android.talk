.class public final Lgmd;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lgna;
.implements Lgnc;


# instance fields
.field public a:Lgms;

.field private b:La;

.field private c:La;

.field private d:Lgpt;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgpt;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

.field private h:Lgmn;

.field private i:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

.field private j:Z

.field private k:Landroid/view/ViewGroup;

.field private l:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

.field private m:La;

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private r:Landroid/view/View;


# direct methods
.method private a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 398
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lgmd;->o:I

    .line 401
    return-void
.end method

.method private a(Lgpt;Z)V
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lgmd;->d:Lgpt;

    .line 483
    iput-object p1, p0, Lgmd;->d:Lgpt;

    .line 484
    iget-object v1, p0, Lgmd;->e:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lgmd;->e:Ljava/util/List;

    iget-object v2, p0, Lgmd;->d:Lgpt;

    invoke-static {v1, v0, v2}, Lgmn;->a(Ljava/util/List;Lgpt;Lgpt;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lgmd;->e:Ljava/util/List;

    .line 486
    if-nez p2, :cond_0

    .line 487
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    iget-object v1, p0, Lgmd;->d:Lgpt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgpt;)V

    .line 489
    :cond_0
    iget-object v0, p0, Lgmd;->h:Lgmn;

    iget-object v1, p0, Lgmd;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgmn;->a(Ljava/util/List;)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(Lgpt;)V

    goto :goto_0
.end method

.method private a(ZLandroid/view/animation/Interpolator;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 633
    if-eqz p1, :cond_0

    move v0, v1

    move v3, v2

    .line 641
    :goto_0
    const/16 v4, 0xb

    invoke-static {v4}, Lgmd;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 642
    iget-object v4, p0, Lgmd;->i:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

    const-string v5, "animatedHeightFraction"

    const/4 v6, 0x2

    new-array v6, v6, [F

    int-to-float v3, v3

    aput v3, v6, v2

    int-to-float v0, v0

    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 644
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 645
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 646
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 650
    :goto_1
    return-void

    :cond_0
    move v0, v2

    move v3, v1

    .line 638
    goto :goto_0

    .line 648
    :cond_1
    iget-object v1, p0, Lgmd;->i:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;->a(F)V

    goto :goto_1
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 792
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    .line 405
    iget-object v0, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iput v0, p0, Lgmd;->p:I

    .line 406
    return-void
.end method

.method private c(I)V
    .locals 4

    .prologue
    .line 869
    iget-object v0, p0, Lgmd;->k:Landroid/view/ViewGroup;

    iget-object v1, p0, Lgmd;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lgmd;->k:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lgmd;->k:Landroid/view/ViewGroup;

    .line 870
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    .line 869
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 873
    iget-object v0, p0, Lgmd;->a:Lgms;

    invoke-virtual {v0, p1}, Lgms;->a(I)V

    .line 876
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->a(I)V

    .line 877
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1601
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b()I

    move-result v0

    .line 1602
    packed-switch v0, :pswitch_data_0

    .line 1614
    :goto_0
    return-void

    .line 1605
    :pswitch_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1606
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1607
    iget-object v1, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1608
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-direct {p0, v4, v0}, Lgmd;->a(ZLandroid/view/animation/Interpolator;)V

    .line 1612
    iget-object v0, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1613
    iget-object v0, p0, Lgmd;->i:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;->setVisibility(I)V

    goto :goto_0

    .line 1618
    :pswitch_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1619
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1620
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1621
    const/4 v0, 0x1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p0, v0, v1}, Lgmd;->a(ZLandroid/view/animation/Interpolator;)V

    .line 1625
    iget-object v0, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1626
    iget-object v0, p0, Lgmd;->i:Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/people/accountswitcherview/ShrinkingItem;->setVisibility(I)V

    goto :goto_0

    .line 1602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lgpt;)V
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lgmd;->a(Lgpt;Z)V

    .line 718
    return-void
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 731
    iget-object v0, p0, Lgmd;->k:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    .line 732
    iget-object v0, p0, Lgmd;->m:La;

    if-eqz v0, :cond_0

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lgmd;->l:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    if-ne p1, v0, :cond_0

    .line 736
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 737
    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 2588
    :goto_1
    iget-object v3, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->c(I)V

    .line 740
    iget-object v0, p0, Lgmd;->l:Lcom/google/android/gms/people/accountswitcherview/ExpanderView;

    iget-object v3, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    .line 741
    invoke-virtual {v3}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b()I

    move-result v3

    if-ne v3, v2, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/gms/people/accountswitcherview/ExpanderView;->a(Z)V

    .line 743
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {p0, v0}, Lgmd;->a(Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 739
    goto :goto_1

    :cond_3
    move v2, v1

    .line 741
    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 288
    iget-object v0, p0, Lgmd;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lgmd;->r:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 290
    iput-object v1, p0, Lgmd;->r:Landroid/view/View;

    .line 292
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lgmd;->h:Lgmn;

    invoke-virtual {v0, p3}, Lgmn;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 655
    iget-object v0, p0, Lgmd;->h:Lgmn;

    invoke-virtual {v0, p3}, Lgmn;->a(I)Lgpt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgmd;->a(Lgpt;Z)V

    .line 657
    iget-object v0, p0, Lgmd;->b:La;

    if-eqz v0, :cond_0

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lgmd;->h:Lgmn;

    invoke-virtual {v0, p3}, Lgmn;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 661
    iget-object v0, p0, Lgmd;->c:La;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 664
    :cond_2
    iget-object v0, p0, Lgmd;->h:Lgmn;

    invoke-virtual {v0, p3}, Lgmn;->getItemViewType(I)I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 317
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 322
    iget-boolean v0, p0, Lgmd;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgmd;->k:Landroid/view/ViewGroup;

    .line 323
    :goto_0
    iget v1, p0, Lgmd;->o:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 324
    iget v1, p0, Lgmd;->o:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 326
    :cond_0
    iget v0, p0, Lgmd;->p:I

    iget-object v1, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    iget v1, p0, Lgmd;->p:I

    iget-object v2, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    .line 329
    :cond_1
    return-void

    .line 322
    :cond_2
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    move v0, v1

    .line 297
    :goto_0
    invoke-virtual {p0}, Lgmd;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lgmd;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    iget-object v3, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    iget-boolean v0, p0, Lgmd;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgmd;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 302
    :goto_1
    iget-object v2, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    .line 303
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    .line 302
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 306
    iget-boolean v2, p0, Lgmd;->n:Z

    if-eqz v2, :cond_2

    .line 307
    :goto_2
    iget-object v1, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    .line 308
    invoke-virtual {p0}, Lgmd;->getMeasuredHeight()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 307
    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->measure(II)V

    .line 313
    :cond_0
    return-void

    .line 301
    :cond_1
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v0}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 306
    goto :goto_2

    .line 297
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-boolean v0, p0, Lgmd;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgmd;->k:Landroid/view/ViewGroup;

    .line 337
    :goto_0
    if-nez p4, :cond_1

    cmpg-float v1, p3, v2

    if-gez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-gez v1, :cond_1

    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v0, v1}, Lgmd;->a(Landroid/view/View;I)V

    .line 340
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lgmd;->b(I)V

    .line 341
    const/4 v0, 0x1

    .line 351
    :goto_1
    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0

    .line 342
    :cond_1
    if-eqz p4, :cond_3

    cmpl-float v1, p3, v2

    if-lez v1, :cond_3

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_2

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lgmd;->a(Landroid/view/View;I)V

    .line 347
    :cond_2
    iget-object v1, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    neg-int v2, v2

    if-le v1, v2, :cond_3

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lgmd;->b(I)V

    .line 351
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 364
    iget-boolean v0, p0, Lgmd;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgmd;->k:Landroid/view/ViewGroup;

    .line 365
    :goto_0
    iget-object v1, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    invoke-virtual {v1}, Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;->b()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 395
    :cond_0
    :goto_1
    return-void

    .line 364
    :cond_1
    iget-object v0, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0

    .line 370
    :cond_2
    if-lez p3, :cond_6

    .line 372
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-lez v1, :cond_6

    .line 374
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    if-le v1, p3, :cond_3

    .line 375
    neg-int v1, p3

    .line 381
    :goto_2
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_4

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v3}, Lgmd;->a(Landroid/view/View;I)V

    .line 387
    :goto_3
    iget-object v3, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    if-ge v3, v4, :cond_5

    .line 388
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iget-object v3, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-direct {p0, v0}, Lgmd;->b(I)V

    .line 392
    :goto_4
    aput v2, p4, v2

    .line 393
    aput v1, p4, v5

    goto :goto_1

    .line 377
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    goto :goto_2

    .line 385
    :cond_4
    invoke-direct {p0, v0, v1}, Lgmd;->a(Landroid/view/View;I)V

    goto :goto_3

    .line 390
    :cond_5
    invoke-direct {p0, v1}, Lgmd;->b(I)V

    goto :goto_4

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    iget-boolean v1, p0, Lgmd;->j:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lgmd;->k:Landroid/view/ViewGroup;

    .line 418
    :goto_0
    if-gez p5, :cond_5

    .line 419
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gez v2, :cond_5

    .line 420
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    if-gt p5, v0, :cond_0

    .line 421
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result p5

    .line 427
    :cond_0
    :goto_1
    if-eqz p5, :cond_1

    .line 428
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p5

    if-lez v0, :cond_3

    .line 429
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v1, v0}, Lgmd;->a(Landroid/view/View;I)V

    .line 433
    :goto_2
    iget-object v0, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    sub-int/2addr v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 434
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lgmd;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lgmd;->b(I)V

    .line 439
    :cond_1
    :goto_3
    return-void

    .line 417
    :cond_2
    iget-object v1, p0, Lgmd;->g:Lcom/google/android/gms/people/accountswitcherview/SelectedAccountNavigationView;

    goto :goto_0

    .line 431
    :cond_3
    neg-int v0, p5

    invoke-direct {p0, v1, v0}, Lgmd;->a(Landroid/view/View;I)V

    goto :goto_2

    .line 436
    :cond_4
    neg-int v0, p5

    invoke-direct {p0, v0}, Lgmd;->b(I)V

    goto :goto_3

    :cond_5
    move p5, v0

    goto :goto_1
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lgmd;->n:Z

    return v0
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lgmd;->q:Z

    if-eqz v0, :cond_0

    .line 851
    invoke-direct {p0, p2}, Lgmd;->c(I)V

    .line 852
    const/4 p2, 0x0

    .line 854
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 855
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Lgmd;->q:Z

    if-eqz v0, :cond_0

    .line 861
    invoke-direct {p0, p2}, Lgmd;->c(I)V

    .line 862
    const/4 p2, 0x0

    .line 864
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPaddingRelative(IIII)V

    .line 865
    return-void
.end method
