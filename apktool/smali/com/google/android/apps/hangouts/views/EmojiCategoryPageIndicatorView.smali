.class public Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:F

.field private c:I

.field private d:I

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->a:Landroid/graphics/Paint;

    .line 21
    iput v1, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->c:I

    .line 22
    iput v1, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->d:I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->e:F

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->a:Landroid/graphics/Paint;

    sget v2, Laal;->cY:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    sget v1, Laal;->ey:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->b:F

    .line 34
    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->c:I

    .line 38
    iput p2, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->d:I

    .line 39
    iput p3, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->e:F

    .line 40
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->invalidate()V

    .line 41
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->c:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 49
    iget v1, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 50
    iget v1, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->d:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->e:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 52
    add-float v3, v1, v0

    .line 53
    iget v4, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->b:F

    .line 54
    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/android/apps/hangouts/views/EmojiCategoryPageIndicatorView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
