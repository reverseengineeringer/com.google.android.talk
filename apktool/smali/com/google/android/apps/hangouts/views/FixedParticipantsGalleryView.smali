.class public Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lawl;->B:[I

    .line 31
    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 33
    :try_start_0
    sget v0, Lawl;->D:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->a:I

    .line 34
    sget v0, Lawl;->C:I

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->b:I

    .line 36
    sget v0, Lawl;->G:I

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->removeAllViews()V

    .line 69
    return-void
.end method

.method public a(Lbfd;Ljava/util/List;Lczb;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbfd;",
            "Ljava/util/List",
            "<",
            "Lczb;",
            ">;",
            "Lczb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->removeAllViews()V

    .line 45
    if-nez p2, :cond_1

    .line 65
    :cond_0
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczb;

    .line 50
    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Lczb;->a(Lczb;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 51
    :cond_2
    new-instance v3, Lcom/google/android/apps/hangouts/views/AvatarView;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/hangouts/views/AvatarView;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {v3, v0, p1}, Lcom/google/android/apps/hangouts/views/AvatarView;->a(Lczb;Lbfd;)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->a:I

    iget v5, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->a:I

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 54
    iget v4, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->b:I

    iget v5, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->b:I

    iget v6, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->b:I

    iget v7, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->b:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 55
    const/16 v4, 0x10

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 56
    const/4 v4, 0x0

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    invoke-virtual {v3, v0}, Lcom/google/android/apps/hangouts/views/AvatarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->addView(Landroid/view/View;)V

    .line 59
    add-int/lit8 v0, v1, 0x1

    .line 61
    :goto_1
    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->c:I

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->getChildCount()I

    move-result v3

    .line 75
    sub-int v0, p4, p2

    iget v1, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->b:I

    shl-int/lit8 v1, v1, 0x1

    iget v4, p0, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->a:I

    add-int/2addr v1, v4

    div-int/2addr v0, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v2

    .line 76
    :goto_0
    if-ge v1, v0, :cond_0

    .line 77
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FixedParticipantsGalleryView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 83
    return-void
.end method
