.class public final Lfcd;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lexv;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Lexs;

.field private c:Landroid/graphics/Bitmap;

.field private d:Z

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lexs;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcd;->d:Z

    .line 32
    invoke-virtual {p0, p1}, Lfcd;->a(Lexs;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lfcd;->b:Lexs;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0}, Lexs;->g()V

    .line 60
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lfcd;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lfcd;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lfcd;->e:Ljava/lang/Runnable;

    .line 113
    :cond_0
    iput-object p1, p0, Lfcd;->c:Landroid/graphics/Bitmap;

    .line 114
    invoke-virtual {p0}, Lfcd;->invalidateSelf()V

    .line 115
    return-void
.end method

.method public a(Lexs;)V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lfcd;->a:Landroid/graphics/Paint;

    .line 40
    invoke-virtual {p0}, Lfcd;->c()V

    .line 41
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lfcd;->b:Lexs;

    .line 43
    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0, p0}, Lexs;->a(Lexv;)V

    .line 44
    iget-object v0, p0, Lfcd;->b:Lexs;

    iget-boolean v1, p0, Lfcd;->d:Z

    invoke-virtual {v0, v1}, Lexs;->a(Z)V

    .line 46
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lfcd;->e:Ljava/lang/Runnable;

    .line 51
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lfcd;->b:Lexs;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0}, Lexs;->h()V

    .line 69
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lfcd;->b:Lexs;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0}, Lexs;->h()V

    .line 77
    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0, v1}, Lexs;->a(Lexv;)V

    .line 78
    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0}, Lexs;->j()V

    .line 79
    iput-object v1, p0, Lfcd;->b:Lexs;

    .line 81
    :cond_0
    iput-object v1, p0, Lfcd;->c:Landroid/graphics/Bitmap;

    .line 82
    iput-object v1, p0, Lfcd;->e:Ljava/lang/Runnable;

    .line 83
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iput-boolean v1, p0, Lfcd;->d:Z

    .line 90
    iget-object v0, p0, Lfcd;->b:Lexs;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0, v1}, Lexs;->a(Z)V

    .line 93
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lfcd;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfcd;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lfcd;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lfcd;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lfcd;->b:Lexs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0}, Lexs;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lfcd;->b:Lexs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfcd;->b:Lexs;

    invoke-virtual {v0}, Lexs;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lfcd;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lfcd;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 140
    return-void
.end method
