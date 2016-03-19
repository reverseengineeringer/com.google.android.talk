.class public Lasn;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Last;


# instance fields
.field private final a:Laso;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Z

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laik;Lamd;Lajd;IILandroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Laik;",
            "Lamd;",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v7, Laso;

    new-instance v0, Lasr;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lasr;-><init>(Landroid/content/Context;Laik;IILajd;Landroid/graphics/Bitmap;)V

    invoke-direct {v7, p1, p3, v0}, Laso;-><init>(Landroid/content/Context;Lamd;Lasr;)V

    invoke-direct {p0, v7}, Lasn;-><init>(Laso;)V

    .line 100
    return-void
.end method

.method constructor <init>(Laso;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasn;->e:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lasn;->g:I

    .line 1023
    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    check-cast v0, Laso;

    iput-object v0, p0, Lasn;->a:Laso;

    .line 104
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->g()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 167
    invoke-virtual {p0}, Lasn;->invalidateSelf()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-boolean v0, p0, Lasn;->b:Z

    if-nez v0, :cond_0

    .line 169
    iput-boolean v1, p0, Lasn;->b:Z

    .line 170
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0, p0}, Lasr;->a(Last;)V

    .line 171
    invoke-virtual {p0}, Lasn;->invalidateSelf()V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasn;->b:Z

    .line 177
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0, p0}, Lasr;->b(Last;)V

    .line 178
    return-void
.end method

.method private j()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lasn;->j:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lasn;->j:Landroid/graphics/Rect;

    .line 247
    :cond_0
    iget-object v0, p0, Lasn;->j:Landroid/graphics/Rect;

    return-object v0
.end method

.method private k()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lasn;->i:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lasn;->i:Landroid/graphics/Paint;

    .line 254
    :cond_0
    iget-object v0, p0, Lasn;->i:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->d()I

    move-result v0

    return v0
.end method

.method public a(Lajd;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajd",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0, p1, p2}, Lasr;->a(Lajd;Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->f()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->g()I

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 219
    iget-boolean v0, p0, Lasn;->d:Z

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-boolean v0, p0, Lasn;->h:Z

    if-eqz v0, :cond_1

    .line 224
    const/16 v0, 0x77

    invoke-virtual {p0}, Lasn;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lasn;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lasn;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 225
    invoke-direct {p0}, Lasn;->j()Landroid/graphics/Rect;

    move-result-object v4

    .line 224
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasn;->h:Z

    .line 229
    :cond_1
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    const/4 v1, 0x0

    invoke-direct {p0}, Lasn;->j()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lasn;->k()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->e()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lasn;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lasn;->stop()V

    .line 268
    invoke-virtual {p0}, Lasn;->invalidateSelf()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0}, Lasn;->invalidateSelf()V

    .line 274
    invoke-virtual {p0}, Lasn;->e()I

    move-result v0

    invoke-virtual {p0}, Lasn;->d()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 275
    iget v0, p0, Lasn;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lasn;->f:I

    .line 278
    :cond_2
    iget v0, p0, Lasn;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lasn;->f:I

    iget v1, p0, Lasn;->g:I

    if-lt v0, v1, :cond_0

    .line 279
    invoke-virtual {p0}, Lasn;->stop()V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasn;->d:Z

    .line 293
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->h()V

    .line 294
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lasn;->a:Laso;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->c()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lasn;->a:Laso;

    iget-object v0, v0, Laso;->c:Lasr;

    invoke-virtual {v0}, Lasr;->b()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lasn;->b:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasn;->h:Z

    .line 215
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lasn;->k()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 236
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Lasn;->k()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 241
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 182
    iput-boolean p1, p0, Lasn;->e:Z

    .line 183
    if-nez p1, :cond_1

    .line 184
    invoke-direct {p0}, Lasn;->i()V

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 185
    :cond_1
    iget-boolean v0, p0, Lasn;->c:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lasn;->h()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasn;->c:Z

    .line 1146
    const/4 v0, 0x0

    iput v0, p0, Lasn;->f:I

    .line 153
    iget-boolean v0, p0, Lasn;->e:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lasn;->h()V

    .line 156
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lasn;->c:Z

    .line 161
    invoke-direct {p0}, Lasn;->i()V

    .line 162
    return-void
.end method
