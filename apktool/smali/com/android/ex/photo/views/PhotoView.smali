.class public Lcom/android/ex/photo/views/PhotoView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static d:I

.field private static e:Z

.field private static f:I

.field private static g:Landroid/graphics/Bitmap;

.field private static h:Landroid/graphics/Bitmap;

.field private static i:Landroid/graphics/Paint;

.field private static j:Landroid/graphics/Paint;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lacx;

.field private E:F

.field private F:F

.field private G:Lacz;

.field private H:Lacy;

.field private I:Landroid/graphics/RectF;

.field private J:Landroid/graphics/RectF;

.field private K:Landroid/graphics/RectF;

.field private L:[F

.field private M:Z

.field private N:F

.field private O:F

.field private P:Z

.field public a:Landroid/graphics/Matrix;

.field b:Lacw;

.field public c:F

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/Matrix;

.field private m:Landroid/graphics/Matrix;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:[B

.field private r:Z

.field private s:Z

.field private t:Landroid/graphics/Rect;

.field private u:I

.field private v:F

.field private w:Lit;

.field private x:Landroid/view/ScaleGestureDetector;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->m:Landroid/graphics/Matrix;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->n:I

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->A:Z

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->J:Landroid/graphics/RectF;

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    .line 172
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    .line 194
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->k()V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->m:Landroid/graphics/Matrix;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->n:I

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->A:Z

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->J:Landroid/graphics/RectF;

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    .line 172
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    .line 199
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->k()V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    .line 105
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->m:Landroid/graphics/Matrix;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->n:I

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->A:Z

    .line 166
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->J:Landroid/graphics/RectF;

    .line 170
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    .line 172
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    .line 204
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->k()V

    .line 205
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 273
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->A:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->M:Z

    if-eqz v0, :cond_4

    .line 274
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->B:Z

    if-nez v0, :cond_3

    .line 275
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->j()F

    move-result v4

    .line 280
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    .line 281
    iget v2, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    .line 282
    div-float v0, v2, v4

    .line 284
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    mul-float/2addr v5, v0

    sub-float/2addr v1, v5

    sub-float v5, v8, v0

    div-float/2addr v1, v5

    .line 286
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    sub-float v0, v8, v0

    div-float v0, v5, v0

    .line 311
    :goto_0
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    invoke-virtual {v5, v4, v2, v1, v0}, Lacx;->a(FFFF)Z

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_1
    iput-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->B:Z

    .line 316
    :goto_2
    iput-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->M:Z

    .line 317
    return v0

    .line 289
    :cond_0
    mul-float v0, v4, v7

    .line 291
    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 292
    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->F:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 293
    div-float v0, v2, v4

    .line 294
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v0

    .line 295
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v0

    .line 297
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v6, v1, v7

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 303
    :goto_3
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v6, v5, v7

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 300
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v1, v6, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_3

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v5

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 306
    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v5, v6, v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto/16 :goto_1

    :cond_4
    move v0, v3

    goto/16 :goto_2
.end method

.method private c(Z)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 831
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->o:Z

    if-nez v0, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 835
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 837
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v0

    .line 838
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v5

    .line 840
    if-ltz v3, :cond_2

    if-ne v0, v3, :cond_a

    :cond_2
    if-ltz v4, :cond_3

    if-ne v5, v4, :cond_a

    :cond_3
    move v0, v2

    .line 844
    :goto_1
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    if-nez p1, :cond_4

    iget v3, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->o:Z

    if-eqz v3, :cond_8

    .line 5865
    :cond_4
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 5866
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 5868
    iget-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v3, :cond_b

    sget v3, Lcom/android/ex/photo/views/PhotoView;->f:I

    .line 5869
    :goto_2
    iget-boolean v4, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v4, :cond_c

    sget v4, Lcom/android/ex/photo/views/PhotoView;->f:I

    .line 5871
    :goto_3
    if-ltz v5, :cond_5

    if-ne v3, v5, :cond_7

    :cond_5
    if-ltz v6, :cond_6

    if-ne v4, v6, :cond_7

    :cond_6
    move v1, v2

    .line 5874
    :cond_7
    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-nez v1, :cond_d

    .line 5875
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 5895
    :goto_4
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->m:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5899
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 5900
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 5902
    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->i()I

    move-result v1

    .line 5903
    :goto_5
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->i()I

    move-result v2

    .line 5905
    :goto_6
    if-ge v3, v1, :cond_12

    if-ge v4, v2, :cond_12

    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-nez v1, :cond_12

    .line 5906
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    .line 5910
    :goto_7
    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    mul-float/2addr v1, v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/views/PhotoView;->F:F

    .line 852
    :cond_8
    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 854
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 840
    goto/16 :goto_1

    .line 5868
    :cond_b
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v3

    goto :goto_2

    .line 5869
    :cond_c
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v4

    goto :goto_3

    .line 5878
    :cond_d
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v7, v6

    invoke-virtual {v1, v8, v8, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5879
    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v1, :cond_e

    .line 5880
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->J:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 5884
    :goto_8
    new-instance v1, Landroid/graphics/RectF;

    div-int/lit8 v2, v3, 0x2

    int-to-float v2, v2

    int-to-float v7, v5

    iget v8, p0, Lcom/android/ex/photo/views/PhotoView;->v:F

    mul-float/2addr v7, v8

    div-float/2addr v7, v10

    sub-float/2addr v2, v7

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    int-to-float v8, v6

    iget v9, p0, Lcom/android/ex/photo/views/PhotoView;->v:F

    mul-float/2addr v8, v9

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    int-to-float v5, v5

    iget v8, p0, Lcom/android/ex/photo/views/PhotoView;->v:F

    mul-float/2addr v5, v8

    div-float/2addr v5, v10

    add-float/2addr v3, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    int-to-float v5, v6

    iget v6, p0, Lcom/android/ex/photo/views/PhotoView;->v:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float/2addr v4, v5

    invoke-direct {v1, v2, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5889
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->J:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5890
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v1, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_4

    .line 5882
    :cond_e
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->J:Landroid/graphics/RectF;

    int-to-float v2, v3

    int-to-float v7, v4

    invoke-virtual {v1, v8, v8, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_8

    .line 5892
    :cond_f
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->J:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_4

    .line 5902
    :cond_10
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v1

    goto/16 :goto_5

    .line 5903
    :cond_11
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v2

    goto/16 :goto_6

    .line 5908
    :cond_12
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->j()F

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    goto/16 :goto_7

    .line 856
    :cond_13
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    goto/16 :goto_0
.end method

.method private i()I
    .locals 1

    .prologue
    .line 917
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->u:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->u:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/ex/photo/views/PhotoView;->f:I

    goto :goto_0
.end method

.method private j()F
    .locals 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 927
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1106
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1108
    sget-boolean v1, Lcom/android/ex/photo/views/PhotoView;->e:Z

    if-nez v1, :cond_0

    .line 1109
    sput-boolean v4, Lcom/android/ex/photo/views/PhotoView;->e:Z

    .line 1111
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1113
    sget v2, Laal;->bG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/ex/photo/views/PhotoView;->f:I

    .line 1115
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1116
    sput-object v2, Lcom/android/ex/photo/views/PhotoView;->i:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1117
    sget-object v2, Lcom/android/ex/photo/views/PhotoView;->i:Landroid/graphics/Paint;

    sget v3, Laal;->bD:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1118
    sget-object v2, Lcom/android/ex/photo/views/PhotoView;->i:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1120
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1121
    sput-object v2, Lcom/android/ex/photo/views/PhotoView;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1122
    sget-object v2, Lcom/android/ex/photo/views/PhotoView;->j:Landroid/graphics/Paint;

    sget v3, Laal;->bE:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1123
    sget-object v2, Lcom/android/ex/photo/views/PhotoView;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1124
    sget-object v2, Lcom/android/ex/photo/views/PhotoView;->j:Landroid/graphics/Paint;

    sget v3, Laal;->bF:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1126
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 1127
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 1128
    mul-int/2addr v1, v1

    sput v1, Lcom/android/ex/photo/views/PhotoView;->d:I

    .line 1131
    :cond_0
    new-instance v1, Lit;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lit;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;B)V

    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->w:Lit;

    .line 1132
    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, v0, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->x:Landroid/view/ScaleGestureDetector;

    .line 1133
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->x:Landroid/view/ScaleGestureDetector;

    .line 6083
    sget-object v1, Lki;->a:Lkl;

    invoke-interface {v1, v0}, Lkl;->a(Ljava/lang/Object;)Z

    move-result v0

    .line 1133
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->P:Z

    .line 1134
    new-instance v0, Lacx;

    invoke-direct {v0, p0}, Lacx;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    .line 1135
    new-instance v0, Lacz;

    invoke-direct {v0, p0}, Lacz;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    .line 1136
    new-instance v0, Lacy;

    invoke-direct {v0, p0}, Lacy;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->H:Lacy;

    .line 1137
    new-instance v0, Lacw;

    invoke-direct {v0, p0}, Lacw;-><init>(Lcom/android/ex/photo/views/PhotoView;)V

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->b:Lacw;

    .line 1138
    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 973
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 974
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 976
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 977
    :goto_0
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 978
    :goto_1
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 979
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    .line 982
    iget-boolean v7, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v7, :cond_3

    .line 984
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v5

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v5

    .line 985
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 984
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 995
    :goto_2
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 996
    :cond_0
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    .line 997
    :goto_3
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    .line 998
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    .line 1002
    iget-boolean v7, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v7, :cond_6

    .line 1004
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v5

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v5

    .line 1005
    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1004
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1016
    :goto_4
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1017
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 1019
    cmpl-float v0, v0, p1

    if-nez v0, :cond_8

    move v2, v3

    .line 1020
    :goto_5
    cmpl-float v0, v1, p2

    if-nez v0, :cond_9

    move v0, v3

    .line 1021
    :goto_6
    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    .line 1022
    const/4 v0, 0x3

    .line 1028
    :goto_7
    return v0

    :cond_1
    move v0, v1

    .line 976
    goto :goto_0

    .line 977
    :cond_2
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    .line 988
    :cond_3
    sub-float v7, v6, v5

    sub-float v8, v2, v0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 989
    sub-float/2addr v2, v0

    add-float/2addr v5, v6

    sub-float/2addr v2, v5

    div-float/2addr v2, v9

    add-float/2addr v0, v2

    goto :goto_2

    .line 991
    :cond_4
    sub-float/2addr v2, v6

    sub-float/2addr v0, v5

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_2

    .line 996
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    goto :goto_3

    .line 1008
    :cond_6
    sub-float v7, v6, v5

    sub-float v8, v2, v1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_7

    .line 1009
    sub-float/2addr v2, v1

    add-float/2addr v5, v6

    sub-float/2addr v2, v5

    div-float/2addr v2, v9

    add-float/2addr v1, v2

    goto :goto_4

    .line 1011
    :cond_7
    sub-float/2addr v2, v6

    sub-float/2addr v1, v5

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_4

    :cond_8
    move v2, v4

    .line 1019
    goto :goto_5

    :cond_9
    move v0, v4

    .line 1020
    goto :goto_6

    .line 1023
    :cond_a
    if-eqz v2, :cond_b

    move v0, v3

    .line 1024
    goto :goto_7

    .line 1025
    :cond_b
    if-eqz v0, :cond_c

    .line 1026
    const/4 v0, 0x2

    goto :goto_7

    :cond_c
    move v0, v4

    .line 1028
    goto :goto_7
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 1492
    iput p1, p0, Lcom/android/ex/photo/views/PhotoView;->v:F

    .line 1493
    return-void
.end method

.method public a(FFF)V
    .locals 4

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->c:F

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 947
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 948
    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->F:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 950
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->j()F

    move-result v1

    .line 951
    div-float/2addr v0, v1

    .line 954
    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 957
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->c:F

    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 959
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 960
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 526
    :cond_0
    iput-object p1, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    .line 532
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 534
    const/4 v0, 0x1

    .line 537
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/ex/photo/views/PhotoView;->c(Z)V

    .line 538
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 539
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->p:Z

    if-eq p1, v0, :cond_0

    .line 625
    iput-boolean p1, p0, Lcom/android/ex/photo/views/PhotoView;->p:Z

    .line 626
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->requestLayout()V

    .line 627
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 629
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 433
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-nez v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v0

    .line 436
    :cond_1
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    .line 4222
    iget-boolean v2, v2, Lacz;->a:Z

    .line 436
    if-eqz v2, :cond_2

    move v0, v1

    .line 438
    goto :goto_0

    .line 440
    :cond_2
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 441
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 442
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 444
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 445
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    .line 446
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    .line 448
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v5, :cond_0

    cmpg-float v5, v4, v2

    if-lez v5, :cond_0

    .line 451
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_0

    .line 454
    add-float v0, v4, v3

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_3

    move v0, v1

    .line 456
    goto :goto_0

    :cond_3
    move v0, v1

    .line 459
    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 821
    iput-boolean p1, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    .line 822
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-nez v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->g()V

    .line 825
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 466
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-nez v2, :cond_1

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    .line 5222
    iget-boolean v2, v2, Lacz;->a:Z

    .line 469
    if-eqz v2, :cond_2

    move v0, v1

    .line 471
    goto :goto_0

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 474
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 475
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 477
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 478
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->L:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    .line 479
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    .line 481
    iget-boolean v5, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v5, :cond_0

    cmpg-float v5, v4, v2

    if-lez v5, :cond_0

    .line 484
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_3

    move v0, v1

    .line 486
    goto :goto_0

    .line 487
    :cond_3
    add-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    .line 492
    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 502
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->w:Lit;

    .line 503
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->x:Landroid/view/ScaleGestureDetector;

    .line 504
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    .line 505
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    invoke-virtual {v0}, Lacx;->a()V

    .line 506
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    .line 507
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    invoke-virtual {v0}, Lacz;->a()V

    .line 508
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    .line 509
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->H:Lacy;

    invoke-virtual {v0}, Lacy;->a()V

    .line 510
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->H:Lacy;

    .line 511
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->b:Lacw;

    invoke-virtual {v0}, Lacw;->a()V

    .line 512
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->b:Lacw;

    .line 513
    invoke-virtual {p0, v1}, Lcom/android/ex/photo/views/PhotoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iput-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->y:Landroid/view/View$OnClickListener;

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->M:Z

    .line 516
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 548
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 549
    :goto_0
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 551
    if-nez v0, :cond_1

    .line 571
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 548
    goto :goto_0

    .line 561
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/photo/views/PhotoView;->E:F

    .line 562
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    move v0, v1

    .line 569
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/ex/photo/views/PhotoView;->c(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_1
.end method

.method public e()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/ex/photo/views/PhotoView;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 687
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 688
    return-void
.end method

.method public h()V
    .locals 10

    .prologue
    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 1035
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->I:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1036
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1039
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 1040
    :goto_0
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 1041
    :goto_1
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 1042
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    .line 1045
    sub-float v5, v4, v3

    sub-float v6, v2, v0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 1047
    sub-float/2addr v2, v0

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    div-float/2addr v2, v8

    add-float/2addr v0, v2

    .line 1059
    :goto_2
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 1060
    :goto_3
    iget-boolean v3, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    .line 1061
    :goto_4
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    .line 1062
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    .line 1065
    sub-float v6, v5, v4

    sub-float v7, v3, v2

    cmpg-float v6, v6, v7

    if-gez v6, :cond_9

    .line 1067
    sub-float v1, v3, v2

    add-float v3, v5, v4

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    add-float/2addr v1, v2

    .line 1078
    :cond_0
    :goto_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v9

    if-gtz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v9

    if-lez v2, :cond_b

    .line 1079
    :cond_1
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->H:Lacy;

    invoke-virtual {v2, v0, v1}, Lacy;->a(FF)Z

    .line 1084
    :goto_6
    return-void

    :cond_2
    move v0, v1

    .line 1039
    goto :goto_0

    .line 1040
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    .line 1048
    :cond_4
    cmpl-float v5, v3, v0

    if-lez v5, :cond_5

    .line 1050
    sub-float/2addr v0, v3

    goto :goto_2

    .line 1051
    :cond_5
    cmpg-float v0, v4, v2

    if-gez v0, :cond_6

    .line 1053
    sub-float v0, v2, v4

    goto :goto_2

    :cond_6
    move v0, v1

    .line 1055
    goto :goto_2

    :cond_7
    move v2, v1

    .line 1059
    goto :goto_3

    .line 1060
    :cond_8
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_4

    .line 1068
    :cond_9
    cmpl-float v6, v4, v2

    if-lez v6, :cond_a

    .line 1070
    sub-float v1, v2, v4

    goto :goto_5

    .line 1071
    :cond_a
    cmpg-float v2, v5, v3

    if-gez v2, :cond_0

    .line 1073
    sub-float v1, v3, v5

    goto :goto_5

    .line 1081
    :cond_b
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1082
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    goto :goto_6
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->invalidate()V

    .line 799
    :goto_0
    return-void

    .line 797
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->M:Z

    .line 233
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->P:Z

    if-nez v0, :cond_0

    .line 234
    invoke-direct {p0, p1}, Lcom/android/ex/photo/views/PhotoView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 244
    packed-switch v1, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 246
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->P:Z

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/views/PhotoView;->N:F

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/ex/photo/views/PhotoView;->O:F

    goto :goto_0

    .line 252
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->P:Z

    if-eqz v1, :cond_0

    .line 253
    invoke-direct {p0, p1}, Lcom/android/ex/photo/views/PhotoView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 257
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->P:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->M:Z

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/ex/photo/views/PhotoView;->N:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/ex/photo/views/PhotoView;->O:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 260
    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    .line 261
    sget v2, Lcom/android/ex/photo/views/PhotoView;->d:I

    if-le v1, v2, :cond_0

    .line 262
    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->M:Z

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    invoke-virtual {v0}, Lacz;->a()V

    .line 354
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->H:Lacy;

    invoke-virtual {v0}, Lacy;->a()V

    .line 356
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 706
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 709
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 710
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 711
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 713
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 718
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 720
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->q:[B

    if-eqz v0, :cond_1

    .line 721
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->r:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/ex/photo/views/PhotoView;->g:Landroid/graphics/Bitmap;

    .line 722
    :goto_0
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 723
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 724
    int-to-float v2, v2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 729
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 733
    :cond_2
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v0, :cond_4

    .line 734
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v6

    .line 735
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Lcom/android/ex/photo/views/PhotoView;->i:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 737
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 739
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 740
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->l:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 744
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 745
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/ex/photo/views/PhotoView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 748
    :cond_4
    return-void

    .line 721
    :cond_5
    sget-object v0, Lcom/android/ex/photo/views/PhotoView;->h:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    .line 4143
    iget-boolean v0, v0, Lacx;->a:Z

    .line 361
    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    invoke-virtual {v0, p3, p4}, Lacz;->a(FF)Z

    .line 364
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .prologue
    .line 752
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->o:Z

    .line 754
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v0

    .line 755
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v1

    .line 757
    iget-boolean v2, p0, Lcom/android/ex/photo/views/PhotoView;->s:Z

    if-eqz v2, :cond_0

    .line 758
    sget v2, Lcom/android/ex/photo/views/PhotoView;->f:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/ex/photo/views/PhotoView;->u:I

    .line 759
    iget v2, p0, Lcom/android/ex/photo/views/PhotoView;->u:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 760
    iget v2, p0, Lcom/android/ex/photo/views/PhotoView;->u:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 761
    iget v2, p0, Lcom/android/ex/photo/views/PhotoView;->u:I

    add-int/2addr v2, v0

    .line 762
    iget v3, p0, Lcom/android/ex/photo/views/PhotoView;->u:I

    add-int/2addr v3, v1

    .line 766
    iget-object v4, p0, Lcom/android/ex/photo/views/PhotoView;->t:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 768
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/ex/photo/views/PhotoView;->c(Z)V

    .line 769
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 773
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 774
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->n:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 776
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/ex/photo/views/PhotoView;->n:I

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/views/PhotoView;->setMeasuredDimension(II)V

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->C:Z

    .line 371
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->j()F

    move-result v0

    .line 372
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 373
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ex/photo/views/PhotoView;->a(FFF)V

    .line 375
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 380
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    invoke-virtual {v0}, Lacx;->a()V

    .line 382
    iput-boolean v1, p0, Lcom/android/ex/photo/views/PhotoView;->C:Z

    .line 384
    :cond_0
    return v1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 390
    invoke-direct {p0}, Lcom/android/ex/photo/views/PhotoView;->j()F

    move-result v2

    .line 391
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->F:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_0

    .line 393
    iget v0, p0, Lcom/android/ex/photo/views/PhotoView;->F:F

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    div-float v0, v1, v0

    .line 396
    sub-float/2addr v1, v0

    .line 397
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    .line 398
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 400
    iget-object v5, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v1

    .line 401
    iget-object v6, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    mul-float/2addr v6, v1

    .line 403
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v0

    iget-object v8, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    .line 404
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v0, v8

    iget-object v8, p0, Lcom/android/ex/photo/views/PhotoView;->K:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v1, v8

    add-float v8, v0, v1

    .line 406
    cmpl-float v0, v7, v5

    if-lez v0, :cond_2

    .line 408
    add-float v0, v7, v5

    div-float/2addr v0, v9

    move v1, v0

    .line 412
    :goto_0
    cmpl-float v0, v8, v6

    if-lez v0, :cond_3

    .line 414
    add-float v0, v8, v6

    div-float/2addr v0, v9

    .line 418
    :goto_1
    iget-object v3, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    iget v4, p0, Lcom/android/ex/photo/views/PhotoView;->F:F

    invoke-virtual {v3, v2, v4, v1, v0}, Lacx;->a(FFFF)Z

    .line 420
    :cond_0
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->C:Z

    if-eqz v0, :cond_1

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->B:Z

    .line 422
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->g()V

    .line 424
    :cond_1
    return-void

    .line 410
    :cond_2
    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 416
    :cond_3
    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->D:Lacx;

    .line 3143
    iget-boolean v0, v0, Lacx;->a:Z

    .line 344
    if-nez v0, :cond_0

    .line 345
    neg-float v0, p3

    neg-float v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/android/ex/photo/views/PhotoView;->a(FF)I

    .line 347
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->y:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->C:Z

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->y:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/photo/views/PhotoView;->C:Z

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 209
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->x:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->w:Lit;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->x:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 215
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->w:Lit;

    invoke-virtual {v0, p1}, Lit;->a(Landroid/view/MotionEvent;)Z

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 218
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->G:Lacz;

    .line 2222
    iget-boolean v0, v0, Lacz;->a:Z

    .line 221
    if-nez v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/ex/photo/views/PhotoView;->h()V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/ex/photo/views/PhotoView;->y:Landroid/view/View$OnClickListener;

    .line 429
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/ex/photo/views/PhotoView;->k:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
