.class public Lcom/google/android/apps/hangouts/views/FadeImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public a:Landroid/view/animation/Animation;

.field public b:Landroid/view/animation/Animation;

.field public c:Landroid/graphics/drawable/BitmapDrawable;

.field private d:Landroid/view/animation/Animation$AnimationListener;

.field private e:I

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lawl;->x:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    :try_start_0
    sget v0, Lawl;->z:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->e:I

    .line 39
    sget v0, Lawl;->y:I

    const/16 v2, 0xfa

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->f:I

    .line 40
    sget v0, Lawl;->A:I

    const/high16 v2, 0x3e800000    # 0.25f

    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->g:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->g:F

    invoke-direct {v0, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->a:Landroid/view/animation/Animation;

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->a:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 48
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    iget v1, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->g:F

    invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->b:Landroid/view/animation/Animation;

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->b:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 50
    new-instance v0, Lfbz;

    invoke-direct {v0, p0}, Lfbz;-><init>(Lcom/google/android/apps/hangouts/views/FadeImageView;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->d:Landroid/view/animation/Animation$AnimationListener;

    .line 66
    return-void

    .line 43
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public a(ZLandroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->b:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FadeImageView;->clearAnimation()V

    .line 74
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/views/FadeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->c:Landroid/graphics/drawable/BitmapDrawable;

    .line 75
    if-nez p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FadeImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    iget v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->e:I

    if-lez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->b:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->d:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->b:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FadeImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->c:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FadeImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object v0, p0, Lcom/google/android/apps/hangouts/views/FadeImageView;->a:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/views/FadeImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
