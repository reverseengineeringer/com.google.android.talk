.class public Landroid/support/v7/internal/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/internal/widget/ButtonBarLayout;->b:I

    .line 40
    sget-object v0, Lsb;->S:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    sget v1, Lsb;->T:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/internal/widget/ButtonBarLayout;->a:Z

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 93
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->setOrientation(I)V

    .line 94
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    :goto_1
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->setGravity(I)V

    .line 95
    sget v0, Laal;->aT:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    if-eqz p1, :cond_3

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 102
    add-int/lit8 v0, v0, -0x2

    :goto_3
    if-ltz v0, :cond_4

    .line 103
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 102
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :cond_2
    const/16 v0, 0x50

    goto :goto_1

    .line 97
    :cond_3
    const/4 v0, 0x4

    goto :goto_2

    .line 105
    :cond_4
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 58
    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ButtonBarLayout;->a:Z

    if-eqz v3, :cond_1

    .line 59
    iget v3, p0, Landroid/support/v7/internal/widget/ButtonBarLayout;->b:I

    if-le v1, v3, :cond_0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->a(Z)V

    .line 63
    :cond_0
    iput v1, p0, Landroid/support/v7/internal/widget/ButtonBarLayout;->b:I

    .line 70
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->a()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v3, v4, :cond_4

    .line 71
    const/high16 v0, -0x80000000

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    move v1, v2

    .line 77
    :goto_0
    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 78
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ButtonBarLayout;->a:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ButtonBarLayout;->getMeasuredWidthAndState()I

    move-result v0

    .line 80
    const/high16 v3, -0x1000000

    and-int/2addr v0, v3

    .line 81
    const/high16 v3, 0x1000000

    if-ne v0, v3, :cond_2

    .line 82
    invoke-direct {p0, v2}, Landroid/support/v7/internal/widget/ButtonBarLayout;->a(Z)V

    move v1, v2

    .line 87
    :cond_2
    if-eqz v1, :cond_3

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 90
    :cond_3
    return-void

    :cond_4
    move v1, v0

    move v0, p1

    .line 75
    goto :goto_0
.end method
