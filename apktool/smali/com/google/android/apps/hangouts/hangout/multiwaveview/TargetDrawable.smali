.class public Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I

.field private static final TAG:Ljava/lang/String; = "Babel_TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    .line 28
    :array_0
    .array-data 4
        0x101009e
        0x10100a2
    .end array-data

    .line 31
    :array_1
    .array-data 4
        0x101009e
        -0x10100a2
    .end array-data

    .line 34
    :array_2
    .array-data 4
        0x101009e
        -0x10100a2
        0x101009c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 39
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 40
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionX:F

    .line 41
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionY:F

    .line 42
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    .line 43
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    .line 44
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 50
    iput p2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mResourceId:I

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 39
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 40
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionX:F

    .line 41
    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionY:F

    .line 42
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    .line 43
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    .line 44
    iput v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 65
    iget v0, p1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mResourceId:I

    .line 67
    iget-object v0, p1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 69
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 70
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, -0x41000000    # -0.5f

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 214
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 215
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 219
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 96
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    move v0, v1

    .line 97
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 98
    aget v3, v2, v0

    const v4, 0x101009c

    if-ne v3, v4, :cond_1

    .line 99
    const/4 v1, 0x1

    .line 103
    :cond_0
    return v1

    .line 97
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mAlpha:F

    .line 163
    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    if-nez p2, :cond_1

    move-object v1, v0

    .line 59
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->resizeDrawables()V

    .line 61
    sget-object v0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->setState([I)V

    .line 62
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mEnabled:Z

    .line 224
    return-void
.end method

.method public setPositionX(F)V
    .locals 0

    .prologue
    .line 186
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionX:F

    .line 187
    return-void
.end method

.method public setPositionY(F)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mPositionY:F

    .line 191
    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleX:F

    .line 155
    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .prologue
    .line 158
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mScaleY:F

    .line 159
    return-void
.end method

.method public setState([I)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 75
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 77
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationX:F

    .line 147
    return-void
.end method

.method public setY(F)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/google/android/apps/hangouts/hangout/multiwaveview/TargetDrawable;->mTranslationY:F

    .line 151
    return-void
.end method
