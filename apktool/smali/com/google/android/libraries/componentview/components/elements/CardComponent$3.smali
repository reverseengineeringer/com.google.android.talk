.class Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Lcom/google/android/libraries/componentview/components/elements/CardComponent;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent;ILjava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->e:Lcom/google/android/libraries/componentview/components/elements/CardComponent;

    iput p2, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->a:I

    iput-object p3, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 430
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->e:Lcom/google/android/libraries/componentview/components/elements/CardComponent;

    .line 1055
    iget-object v0, v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent;->c:Landroid/view/View;

    .line 430
    check-cast v0, Lgvm;

    invoke-virtual {v0}, Lgvm;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 432
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 433
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 434
    new-instance v3, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;-><init>(Landroid/view/View;Z)V

    .line 435
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 436
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 439
    new-instance v3, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;

    invoke-direct {v3, v0, v5}, Lcom/google/android/libraries/componentview/components/elements/CardComponent$ExpandAnimatorListener;-><init>(Landroid/view/View;Z)V

    .line 440
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 441
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 443
    :cond_1
    new-instance v0, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/componentview/components/elements/CardComponent$3$1;-><init>(Lcom/google/android/libraries/componentview/components/elements/CardComponent$3;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 453
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 454
    return v5

    .line 432
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
