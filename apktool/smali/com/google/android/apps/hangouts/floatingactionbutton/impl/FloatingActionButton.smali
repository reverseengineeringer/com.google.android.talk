.class public Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Lbww;

.field public b:I

.field public c:Landroid/graphics/Bitmap;

.field public d:I

.field public e:Landroid/graphics/Bitmap;

.field public f:F

.field public g:I

.field private h:Landroid/animation/ValueAnimator;

.field private i:Landroid/view/animation/Interpolator;

.field private j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private k:Landroid/animation/Animator$AnimatorListener;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->b:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->d:I

    .line 67
    new-instance v0, Lbwt;

    invoke-direct {v0, p0}, Lbwt;-><init>(Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 76
    new-instance v0, Lbwu;

    invoke-direct {v0, p0}, Lbwu;-><init>(Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->k:Landroid/animation/Animator$AnimatorListener;

    .line 92
    new-instance v0, Lbwv;

    invoke-direct {v0, p0}, Lbwv;-><init>(Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->l:Landroid/view/View$OnClickListener;

    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(Landroid/content/Context;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v0, Laxe;

    sget v1, Laxi;->a:I

    invoke-direct {v0, v1}, Laxe;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->i:Landroid/view/animation/Interpolator;

    .line 127
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->lA:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->k:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 133
    return-void

    .line 127
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->f:F

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->d:I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->e:Landroid/graphics/Bitmap;

    .line 200
    iput p1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->b:I

    .line 201
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 202
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->c:Landroid/graphics/Bitmap;

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->invalidate()V

    .line 204
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FI)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 276
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p2, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 278
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 282
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 283
    int-to-float v2, p4

    mul-float/2addr v2, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 284
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    .line 283
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 285
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p3

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getHeight()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 286
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 289
    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 290
    return-void
.end method


# virtual methods
.method public a(III)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1156
    iput p3, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->g:I

    .line 1157
    iget v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->b:I

    if-eq p1, v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1162
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->f:F

    .line 1163
    sget v0, Lbwx;->a:I

    if-ne p3, v0, :cond_2

    .line 1164
    iput p1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->d:I

    .line 1165
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1166
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->e:Landroid/graphics/Bitmap;

    .line 1167
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1178
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    .line 152
    return-object v0

    .line 1169
    :cond_2
    iget v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->b:I

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->d:I

    .line 1170
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->c:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->e:Landroid/graphics/Bitmap;

    .line 1171
    iput p1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->b:I

    .line 1172
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1173
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->c:Landroid/graphics/Bitmap;

    .line 1174
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method public a(II)V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(I)V

    .line 190
    return-void
.end method

.method public a(IIIIF)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3a83126f    # 0.001f

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p5, v1

    if-gez v1, :cond_1

    .line 224
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1229
    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-ltz v0, :cond_0

    cmpl-float v0, p5, v3

    if-lez v0, :cond_2

    .line 1230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fraction argument to transitionPartlyBetween should be between 0.0 and 1.0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move p2, p4

    .line 224
    goto :goto_0

    .line 1233
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1234
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1239
    :cond_3
    cmpg-float v0, p5, v2

    if-gez v0, :cond_4

    .line 1240
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(I)V

    .line 1244
    :goto_1
    return-void

    .line 1242
    :cond_4
    sub-float v0, v3, p5

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 1243
    invoke-direct {p0, p3}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(I)V

    goto :goto_1

    .line 1247
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->i:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->f:F

    .line 1249
    iput p1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->b:I

    .line 1250
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1251
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->c:Landroid/graphics/Bitmap;

    .line 1253
    iput p3, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->d:I

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1255
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->e:Landroid/graphics/Bitmap;

    .line 1257
    sget v0, Lbwx;->a:I

    iput v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->g:I

    .line 1259
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->invalidate()V

    goto :goto_1
.end method

.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    return-void
.end method

.method public a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->h:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 298
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 137
    sget v0, Laal;->lj:I

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 139
    return-void
.end method

.method public a(Lbww;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a:Lbww;

    .line 294
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->c:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->f:F

    const/16 v2, 0x87

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FI)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->e:Landroid/graphics/Bitmap;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->f:F

    sub-float/2addr v1, v2

    const/16 v2, -0x87

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/hangouts/floatingactionbutton/impl/FloatingActionButton;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FI)V

    .line 273
    :cond_1
    return-void
.end method
