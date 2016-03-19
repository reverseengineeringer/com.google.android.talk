.class public Lcom/google/android/apps/hangouts/views/MessageStatusView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field public d:Lcom/google/android/apps/hangouts/views/ScalingTextView;

.field e:Landroid/widget/ImageView;

.field public f:Landroid/view/View;

.field g:Lcom/google/android/apps/hangouts/views/ScalingTextView;

.field h:Landroid/view/View;

.field private i:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->i:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->i:F

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->i:F

    .line 39
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->i:F

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->setAlpha(F)V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->requestLayout()V

    .line 60
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 43
    sget v0, Laen;->aQ:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->a:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->a:Landroid/view/View;

    sget v1, Laen;->gJ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/ScalingTextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->d:Lcom/google/android/apps/hangouts/views/ScalingTextView;

    .line 45
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->a:Landroid/view/View;

    sget v1, Laen;->eq:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->b:Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->a:Landroid/view/View;

    sget v1, Laen;->fZ:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->c:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->a:Landroid/view/View;

    sget v1, Laen;->gj:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->e:Landroid/widget/ImageView;

    .line 49
    sget v0, Laen;->fX:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->f:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->f:Landroid/view/View;

    sget v1, Laen;->fY:I

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/hangouts/views/ScalingTextView;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->g:Lcom/google/android/apps/hangouts/views/ScalingTextView;

    .line 53
    sget v0, Laen;->gk:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->h:Landroid/view/View;

    .line 54
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/hangouts/views/MessageStatusView;->i:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/views/MessageStatusView;->setMeasuredDimension(II)V

    .line 66
    return-void
.end method
