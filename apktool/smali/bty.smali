.class public final Lbty;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:Landroid/graphics/Paint;

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lbty;-><init>(Landroid/content/Context;IB)V

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IB)V
    .locals 6

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbty;->setWillNotDraw(Z)V

    .line 47
    iput p2, p0, Lbty;->a:I

    .line 49
    invoke-virtual {p0}, Lbty;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 51
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010030

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    iget v1, v1, Landroid/util/TypedValue;->data:I

    .line 55
    const/4 v2, 0x0

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lbty;->b:I

    .line 56
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lbty;->c:Landroid/graphics/Paint;

    .line 57
    iget-object v2, p0, Lbty;->c:Landroid/graphics/Paint;

    .line 1104
    const/16 v3, 0x26

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 57
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lbty;->d:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lbty;->e:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lbty;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lbty;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->kS:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    return-void
.end method


# virtual methods
.method a(IF)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lbty;->f:I

    .line 66
    iput p2, p0, Lbty;->g:F

    .line 67
    invoke-virtual {p0}, Lbty;->invalidate()V

    .line 68
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 72
    invoke-virtual {p0}, Lbty;->getHeight()I

    move-result v6

    .line 73
    invoke-virtual {p0}, Lbty;->getChildCount()I

    move-result v0

    .line 76
    if-lez v0, :cond_1

    .line 77
    iget v0, p0, Lbty;->f:I

    invoke-virtual {p0, v0}, Lbty;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 79
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 81
    iget v2, p0, Lbty;->g:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    iget v2, p0, Lbty;->f:I

    invoke-virtual {p0}, Lbty;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 83
    iget v2, p0, Lbty;->f:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lbty;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 84
    iget v3, p0, Lbty;->g:F

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lbty;->g:F

    sub-float v4, v5, v4

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 85
    iget v3, p0, Lbty;->g:F

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Lbty;->g:F

    sub-float v3, v5, v3

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 88
    :cond_0
    int-to-float v1, v1

    iget v2, p0, Lbty;->d:I

    sub-int v2, v6, v2

    int-to-float v2, v2

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lbty;->e:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    :cond_1
    iget v0, p0, Lbty;->a:I

    if-nez v0, :cond_3

    .line 94
    iget v0, p0, Lbty;->b:I

    sub-int v0, v6, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lbty;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lbty;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    :cond_2
    :goto_0
    return-void

    .line 95
    :cond_3
    iget v0, p0, Lbty;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 96
    invoke-virtual {p0}, Lbty;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, p0, Lbty;->b:I

    int-to-float v4, v0

    iget-object v5, p0, Lbty;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v7

    move v2, v7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
