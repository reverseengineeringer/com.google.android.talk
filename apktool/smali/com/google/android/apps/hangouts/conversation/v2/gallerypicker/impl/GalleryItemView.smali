.class public final Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a:I

    .line 33
    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->b:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a:I

    .line 33
    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->b:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a:I

    .line 33
    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->b:I

    .line 46
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lbso;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v0, 0x3f6147ae    # 0.88f

    const/4 v7, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 57
    sget v2, Laal;->kC:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    sget v3, Laal;->kD:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 62
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-boolean v3, p2, Lbso;->g:Z

    if-eqz v3, :cond_2

    .line 65
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 66
    if-eqz p3, :cond_1

    move v2, v1

    move v1, v0

    .line 84
    :goto_0
    sget v0, Laal;->kK:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 87
    new-instance v0, Ljava/io/File;

    iget-object v4, p2, Lbso;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 88
    iget-object v4, p2, Lbso;->b:Lbsq;

    sget-object v5, Lbsq;->a:Lbsq;

    if-ne v4, v5, :cond_0

    .line 89
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laal;->kO:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    aput-object v3, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-boolean v3, p2, Lbso;->g:Z

    if-eqz v3, :cond_4

    .line 97
    sget v3, Laal;->kM:I

    .line 98
    :goto_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v7

    .line 96
    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    cmpl-float v0, v2, v1

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->setScaleX(F)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->setScaleY(F)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x87

    .line 106
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x33

    .line 107
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 108
    invoke-static {}, Laal;->c()Lhth;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 114
    :goto_2
    return-void

    :cond_1
    move v1, v0

    move v2, v0

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    if-eqz p3, :cond_3

    .line 76
    const v0, 0x3f5eb852    # 0.87f

    move v2, v0

    .line 77
    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 79
    goto/16 :goto_0

    .line 98
    :cond_4
    sget v3, Laal;->kN:I

    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->setScaleX(F)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->setScaleY(F)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 51
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a:I

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->b:I

    .line 53
    iget v0, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->a:I

    iget v1, p0, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/conversation/v2/gallerypicker/impl/GalleryItemView;->setMeasuredDimension(II)V

    .line 54
    return-void
.end method
