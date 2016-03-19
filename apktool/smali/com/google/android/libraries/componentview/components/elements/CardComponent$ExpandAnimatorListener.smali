.class Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/ViewGroup$MarginLayoutParams;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Landroid/graphics/Rect;

.field private final g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 479
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->a:Landroid/view/View;

    .line 480
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 481
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->c:I

    .line 482
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->d:I

    .line 483
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->c:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->e:I

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->f:Landroid/graphics/Rect;

    .line 485
    iput-boolean p2, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->g:Z

    .line 486
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->c:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 506
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->d:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 507
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 508
    iget-boolean v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->g:Z

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 490
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 491
    iget-boolean v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->g:Z

    if-nez v1, :cond_0

    .line 492
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 494
    :cond_0
    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->e:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 495
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->f:Landroid/graphics/Rect;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->a:Landroid/view/View;

    .line 496
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->c:I

    sub-int v4, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 497
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 498
    iget-object v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->e:I

    iget v3, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->d:I

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 500
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 501
    return-void
.end method
