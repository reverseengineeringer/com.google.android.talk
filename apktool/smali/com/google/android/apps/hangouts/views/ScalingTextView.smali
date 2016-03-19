.class public Lcom/google/android/apps/hangouts/views/ScalingTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 16
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/hangouts/views/ScalingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/hangouts/views/ScalingTextView;->a:F

    .line 21
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/google/android/apps/hangouts/views/ScalingTextView;->a:F

    .line 28
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ScalingTextView;->requestLayout()V

    .line 29
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ScalingTextView;->getMeasuredHeight()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/ScalingTextView;->getMeasuredWidth()I

    move-result v1

    .line 37
    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/hangouts/views/ScalingTextView;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/google/android/apps/hangouts/views/ScalingTextView;->a:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/apps/hangouts/views/ScalingTextView;->setMeasuredDimension(II)V

    .line 38
    return-void
.end method
