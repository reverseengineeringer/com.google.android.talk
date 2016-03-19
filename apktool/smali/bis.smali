.class public abstract Lbis;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbir;

.field public final synthetic b:Ldci;

.field private c:Z

.field private d:Z

.field private final e:I

.field private final f:I

.field private g:Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method private constructor <init>(Lbir;IIZZ)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lbis;->a:Lbir;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p2, p0, Lbis;->e:I

    .line 163
    iput p3, p0, Lbis;->f:I

    .line 164
    iput-boolean p5, p0, Lbis;->d:Z

    .line 165
    iput-boolean p4, p0, Lbis;->c:Z

    .line 166
    invoke-direct {p0}, Lbis;->g()V

    .line 167
    return-void
.end method

.method public constructor <init>(Ldci;IIZZ)V
    .locals 0

    .prologue
    .line 12086
    iput-object p1, p0, Lbis;->b:Ldci;

    .line 12087
    invoke-direct/range {p0 .. p5}, Lbis;-><init>(Lbir;IIZZ)V

    .line 12088
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Lbis;->h()I

    move-result v0

    .line 282
    iget-boolean v1, p0, Lbis;->c:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lbis;->d:Z

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 286
    :cond_1
    iput v0, p0, Lbis;->h:I

    .line 287
    return-void
.end method

.method private h()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lbis;->a:Lbir;

    .line 11017
    iget-object v0, v0, Lbir;->c:Ljava/util/List;

    .line 325
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbis;

    .line 326
    if-ne v0, p0, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()I
    .locals 3

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 340
    iget-object v1, p0, Lbis;->a:Lbir;

    .line 12017
    iget-object v1, v1, Lbir;->c:Ljava/util/List;

    .line 340
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbis;

    .line 341
    if-ne v0, p0, :cond_0

    .line 347
    :goto_1
    return v1

    .line 344
    :cond_0
    invoke-virtual {v0}, Lbis;->c()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 345
    goto :goto_0

    .line 347
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lbis;->c:Z

    if-eqz v0, :cond_0

    .line 299
    add-int/lit8 p1, p1, -0x1

    .line 301
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 302
    iget v0, p0, Lbis;->e:I

    .line 304
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lbis;->f:I

    goto :goto_0
.end method

.method public abstract a(Laao;)V
.end method

.method public a(Laao;I)V
    .locals 3

    .prologue
    .line 309
    iget-boolean v0, p0, Lbis;->c:Z

    if-eqz v0, :cond_0

    .line 310
    add-int/lit8 p2, p2, -0x1

    .line 313
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 314
    invoke-virtual {p0, p1}, Lbis;->a(Laao;)V

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_2
    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    invoke-virtual {p0, p1, v0}, Lbis;->a(Laao;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public abstract a(Laao;Landroid/database/Cursor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    if-ne v0, p1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lbis;->i()Z

    move-result v0

    .line 251
    invoke-direct {p0}, Lbis;->j()I

    move-result v1

    .line 253
    if-nez v0, :cond_1

    .line 254
    iput-object p1, p0, Lbis;->g:Landroid/database/Cursor;

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {p0}, Lbis;->a()Z

    move-result v0

    .line 259
    iget v2, p0, Lbis;->h:I

    .line 260
    iput-object p1, p0, Lbis;->g:Landroid/database/Cursor;

    .line 261
    invoke-direct {p0}, Lbis;->g()V

    .line 262
    invoke-virtual {p0}, Lbis;->a()Z

    move-result v3

    .line 263
    iget v4, p0, Lbis;->h:I

    .line 265
    iget-object v5, p0, Lbis;->a:Lbir;

    iget-object v6, p0, Lbis;->a:Lbir;

    .line 9017
    iget v6, v6, Lbir;->d:I

    .line 265
    sub-int v7, v4, v2

    add-int/2addr v6, v7

    .line 10017
    iput v6, v5, Lbir;->d:I

    .line 267
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 269
    :goto_1
    if-le v4, v2, :cond_3

    .line 270
    iget-object v3, p0, Lbis;->a:Lbir;

    add-int v5, v1, v0

    sub-int v0, v2, v0

    invoke-virtual {v3, v5, v0}, Lbir;->a(II)V

    .line 271
    iget-object v0, p0, Lbis;->a:Lbir;

    add-int/2addr v1, v2

    sub-int v2, v4, v2

    invoke-virtual {v0, v1, v2}, Lbir;->b(II)V

    goto :goto_0

    .line 267
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 272
    :cond_3
    if-le v2, v4, :cond_4

    .line 273
    iget-object v3, p0, Lbis;->a:Lbir;

    add-int v5, v1, v0

    sub-int v0, v4, v0

    invoke-virtual {v3, v5, v0}, Lbir;->a(II)V

    .line 274
    iget-object v0, p0, Lbis;->a:Lbir;

    add-int/2addr v1, v4

    sub-int/2addr v2, v4

    .line 10670
    iget-object v0, v0, Lzu;->a:Lzv;

    invoke-virtual {v0, v1, v2}, Lzv;->c(II)V

    goto :goto_0

    .line 276
    :cond_4
    iget-object v2, p0, Lbis;->a:Lbir;

    add-int/2addr v1, v0

    sub-int v0, v4, v0

    invoke-virtual {v2, v1, v0}, Lbir;->a(II)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 191
    iget-boolean v0, p0, Lbis;->c:Z

    if-ne v0, p1, :cond_1

    .line 6207
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lbis;->a()Z

    move-result v0

    .line 196
    iput-boolean p1, p0, Lbis;->c:Z

    .line 6201
    invoke-virtual {p0}, Lbis;->a()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 6202
    invoke-direct {p0}, Lbis;->j()I

    move-result v1

    .line 6203
    if-eqz v0, :cond_2

    .line 6204
    iget v0, p0, Lbis;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbis;->h:I

    .line 6205
    invoke-direct {p0}, Lbis;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6206
    iget-object v0, p0, Lbis;->a:Lbir;

    .line 7017
    iget v2, v0, Lbir;->d:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lbir;->d:I

    .line 6207
    iget-object v0, p0, Lbis;->a:Lbir;

    .line 7653
    iget-object v0, v0, Lzu;->a:Lzv;

    invoke-virtual {v0, v1, v3}, Lzv;->c(II)V

    goto :goto_0

    .line 6210
    :cond_2
    iget v0, p0, Lbis;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbis;->h:I

    .line 6211
    invoke-direct {p0}, Lbis;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6212
    iget-object v0, p0, Lbis;->a:Lbir;

    .line 8017
    iget v2, v0, Lbir;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lbir;->d:I

    .line 6213
    iget-object v0, p0, Lbis;->a:Lbir;

    .line 8602
    iget-object v0, v0, Lzu;->a:Lzv;

    invoke-virtual {v0, v1, v3}, Lzv;->b(II)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lbis;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbis;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbis;->h()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12091
    invoke-virtual {p0}, Lbis;->e()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lbec;

    .line 12092
    if-nez v0, :cond_0

    .line 12102
    :goto_0
    return v1

    .line 12097
    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Lbis;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12099
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 12102
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lbis;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lbis;->h:I

    return v0
.end method

.method public c(I)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12106
    invoke-virtual {p0}, Lbis;->e()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lbec;

    .line 12107
    if-nez v0, :cond_1

    .line 12116
    :cond_0
    :goto_0
    return v1

    .line 12111
    :cond_1
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lbis;->a()Z

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lbis;->g:Landroid/database/Cursor;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 12120
    invoke-virtual {p0}, Lbis;->e()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lbec;

    .line 12121
    if-eqz v0, :cond_0

    .line 12122
    invoke-interface {v0}, Lbec;->b()I

    move-result v0

    .line 12125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
