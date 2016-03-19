.class public Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final d:I

.field private static final e:Landroid/os/Handler;


# instance fields
.field public a:Landroid/view/accessibility/AccessibilityManager;

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field private f:Landroid/graphics/RectF;

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/CharSequence;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Runnable;

.field private m:Lcdz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->d:I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->f:Landroid/graphics/RectF;

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->f:Landroid/graphics/RectF;

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 99
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 101
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 331
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 339
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->sendAccessibilityEvent(I)V

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->m:Lcdz;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->m:Lcdz;

    invoke-interface {v0, p0}, Lcdz;->a(Landroid/view/View;)V

    .line 205
    :cond_0
    return-void
.end method

.method public a(Lcdz;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->m:Lcdz;

    .line 86
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    .line 112
    iput-object p1, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->c:Ljava/lang/CharSequence;

    .line 114
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->h:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->c:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->m:Lcdz;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->m:Lcdz;

    invoke-interface {v0, p0, p1}, Lcdz;->a(Landroid/view/View;Z)V

    .line 198
    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->h:Z

    if-eq v0, p1, :cond_0

    .line 365
    iput-boolean p1, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->h:Z

    .line 367
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a:Landroid/view/accessibility/AccessibilityManager;

    .line 2196
    sget-object v1, Lmv;->a:Lmx;

    invoke-virtual {v1, v0}, Lmx;->a(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 322
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 261
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->i:Ljava/lang/CharSequence;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->j:Z

    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isLongClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->k:Z

    .line 266
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->l:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Lcdy;

    invoke-direct {v0, p0}, Lcdy;-><init>(Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;)V

    iput-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->l:Ljava/lang/Runnable;

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->l:Ljava/lang/Runnable;

    sget v1, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->d:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setClickable(Z)V

    .line 284
    invoke-virtual {p0, v4}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->f:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 288
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->h:Z

    if-eqz v0, :cond_6

    .line 289
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->performLongClick()Z

    .line 296
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 297
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 298
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 301
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    .line 3134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 303
    invoke-virtual {p0, v4}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 304
    invoke-virtual {p0, v4}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 306
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->h:Z

    if-eqz v0, :cond_7

    .line 307
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a()V

    .line 313
    :cond_4
    :goto_2
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b:I

    .line 3370
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 3371
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3373
    :cond_5
    invoke-virtual {p0, v4}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b(Z)V

    .line 316
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->j:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setClickable(Z)V

    .line 317
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->k:Z

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setLongClickable(Z)V

    goto/16 :goto_0

    .line 292
    :cond_6
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b()V

    goto :goto_1

    .line 309
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->performClick()Z

    goto :goto_2

    .line 259
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 121
    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    .line 122
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return v0

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 127
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->g:Z

    .line 130
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 145
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a()V

    .line 150
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->g:Z

    .line 152
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 135
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->g:Z

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 162
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Laal;->dO:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setMeasuredDimension(II)V

    .line 164
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 5

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 229
    iget-object v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->f:Landroid/graphics/RectF;

    .line 230
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    .line 229
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 234
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return v3

    .line 176
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 178
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 1208
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b:I

    .line 1209
    sget-object v1, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->e:Landroid/os/Handler;

    new-instance v2, Lcdx;

    invoke-direct {v2, p0, v0}, Lcdx;-><init>(Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;I)V

    .line 1222
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v4, v0

    .line 1209
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 185
    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 186
    iget v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b:I

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->performClick()Z

    goto :goto_0

    .line 174
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 238
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->b()V

    .line 240
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 241
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 250
    :goto_0
    return v0

    .line 243
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    .line 1350
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1354
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 1358
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->sendAccessibilityEvent(I)V

    .line 1360
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->setPressed(Z)V

    .line 245
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 246
    invoke-virtual {p0, v2}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->a()V

    .line 250
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/apps/hangouts/fragments/dialpad/DialpadKeyButton;->i:Ljava/lang/CharSequence;

    .line 169
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method
