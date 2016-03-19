.class final Lbxi;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 858
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 859
    iput-object p1, p0, Lbxi;->c:Landroid/view/View;

    .line 860
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Lbxi;->a:I

    .line 861
    iget v0, p0, Lbxi;->a:I

    sub-int v0, p2, v0

    iput v0, p0, Lbxi;->b:I

    .line 864
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbxi;->setDuration(J)V

    .line 865
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lbxi;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lbxi;->a:I

    int-to-float v1, v1

    iget v2, p0, Lbxi;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 870
    iget-object v0, p0, Lbxi;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 871
    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .prologue
    .line 875
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 876
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x1

    return v0
.end method
