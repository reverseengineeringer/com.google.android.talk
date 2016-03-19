.class public final Ljde;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljde;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:Ljdg;

.field public c:[J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;

.field public g:Ljdf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1202
    iput-object v1, p0, Ljde;->a:Ljava/lang/Boolean;

    .line 1203
    iput-object v1, p0, Ljde;->b:Ljdg;

    .line 1204
    sget-object v0, Llyo;->b:[J

    iput-object v0, p0, Ljde;->c:[J

    .line 1205
    iput-object v1, p0, Ljde;->d:Ljava/lang/String;

    .line 1206
    iput-object v1, p0, Ljde;->e:Ljava/lang/Integer;

    .line 1207
    iput-object v1, p0, Ljde;->f:Ljava/lang/String;

    .line 1208
    iput-object v1, p0, Ljde;->g:Ljdf;

    .line 1209
    iput-object v1, p0, Ljde;->eD:Llyd;

    .line 1210
    const/4 v0, -0x1

    iput v0, p0, Ljde;->eE:I

    .line 199
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2288
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2289
    sparse-switch v0, :sswitch_data_0

    .line 2293
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2294
    :sswitch_0
    return-object p0

    .line 2299
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljde;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 2303
    :sswitch_2
    iget-object v0, p0, Ljde;->b:Ljdg;

    if-nez v0, :cond_1

    .line 2304
    new-instance v0, Ljdg;

    invoke-direct {v0}, Ljdg;-><init>()V

    iput-object v0, p0, Ljde;->b:Ljdg;

    .line 2306
    :cond_1
    iget-object v0, p0, Ljde;->b:Ljdg;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2310
    :sswitch_3
    const/16 v0, 0x18

    .line 2311
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2312
    iget-object v0, p0, Ljde;->c:[J

    if-nez v0, :cond_3

    move v0, v1

    .line 2313
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [J

    .line 2314
    if-eqz v0, :cond_2

    .line 2315
    iget-object v3, p0, Ljde;->c:[J

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2317
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2318
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2319
    invoke-virtual {p1}, Llxy;->a()I

    .line 2317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2312
    :cond_3
    iget-object v0, p0, Ljde;->c:[J

    array-length v0, v0

    goto :goto_1

    .line 2322
    :cond_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 2323
    iput-object v2, p0, Ljde;->c:[J

    goto :goto_0

    .line 2327
    :sswitch_4
    invoke-virtual {p1}, Llxy;->p()I

    move-result v0

    .line 2328
    invoke-virtual {p1, v0}, Llxy;->c(I)I

    move-result v3

    .line 2331
    invoke-virtual {p1}, Llxy;->r()I

    move-result v2

    move v0, v1

    .line 2332
    :goto_3
    invoke-virtual {p1}, Llxy;->q()I

    move-result v4

    if-lez v4, :cond_5

    .line 2333
    invoke-virtual {p1}, Llxy;->e()J

    .line 2334
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2336
    :cond_5
    invoke-virtual {p1, v2}, Llxy;->e(I)V

    .line 2337
    iget-object v2, p0, Ljde;->c:[J

    if-nez v2, :cond_7

    move v2, v1

    .line 2338
    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [J

    .line 2339
    if-eqz v2, :cond_6

    .line 2340
    iget-object v4, p0, Ljde;->c:[J

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2342
    :cond_6
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 2343
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 2342
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2337
    :cond_7
    iget-object v2, p0, Ljde;->c:[J

    array-length v2, v2

    goto :goto_4

    .line 2345
    :cond_8
    iput-object v0, p0, Ljde;->c:[J

    .line 2346
    invoke-virtual {p1, v3}, Llxy;->d(I)V

    goto/16 :goto_0

    .line 2350
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljde;->d:Ljava/lang/String;

    goto/16 :goto_0

    .line 2354
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljde;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 2358
    :sswitch_7
    iget-object v0, p0, Ljde;->g:Ljdf;

    if-nez v0, :cond_9

    .line 2359
    new-instance v0, Ljdf;

    invoke-direct {v0}, Ljdf;-><init>()V

    iput-object v0, p0, Ljde;->g:Ljdf;

    .line 2361
    :cond_9
    iget-object v0, p0, Ljde;->g:Ljdf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2365
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljde;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 2289
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
        0x3a -> :sswitch_8
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Ljde;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x1

    iget-object v1, p0, Ljde;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 220
    :cond_0
    iget-object v0, p0, Ljde;->b:Ljdg;

    if-eqz v0, :cond_1

    .line 221
    const/4 v0, 0x2

    iget-object v1, p0, Ljde;->b:Ljdg;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 223
    :cond_1
    iget-object v0, p0, Ljde;->c:[J

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljde;->c:[J

    array-length v0, v0

    if-lez v0, :cond_2

    .line 224
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljde;->c:[J

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 225
    const/4 v1, 0x3

    iget-object v2, p0, Ljde;->c:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v1, v2, v3}, Llxz;->b(IJ)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Ljde;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 229
    const/4 v0, 0x4

    iget-object v1, p0, Ljde;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 231
    :cond_3
    iget-object v0, p0, Ljde;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 232
    const/4 v0, 0x5

    iget-object v1, p0, Ljde;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 234
    :cond_4
    iget-object v0, p0, Ljde;->g:Ljdf;

    if-eqz v0, :cond_5

    .line 235
    const/4 v0, 0x6

    iget-object v1, p0, Ljde;->g:Ljdf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 237
    :cond_5
    iget-object v0, p0, Ljde;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 238
    const/4 v0, 0x7

    iget-object v1, p0, Ljde;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 240
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 241
    return-void
.end method

.method protected b()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 246
    iget-object v2, p0, Ljde;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 247
    const/4 v2, 0x1

    iget-object v3, p0, Ljde;->a:Ljava/lang/Boolean;

    .line 248
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 248
    add-int/2addr v0, v2

    .line 250
    :cond_0
    iget-object v2, p0, Ljde;->b:Ljdg;

    if-eqz v2, :cond_1

    .line 251
    const/4 v2, 0x2

    iget-object v3, p0, Ljde;->b:Ljdg;

    .line 252
    invoke-static {v2, v3}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 254
    :cond_1
    iget-object v2, p0, Ljde;->c:[J

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljde;->c:[J

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v1

    .line 256
    :goto_0
    iget-object v3, p0, Ljde;->c:[J

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 257
    iget-object v3, p0, Ljde;->c:[J

    aget-wide v4, v3, v1

    .line 1765
    invoke-static {v4, v5}, Llxz;->b(J)I

    move-result v3

    .line 259
    add-int/2addr v2, v3

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_2
    add-int/2addr v0, v2

    .line 262
    iget-object v1, p0, Ljde;->c:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 264
    :cond_3
    iget-object v1, p0, Ljde;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 265
    const/4 v1, 0x4

    iget-object v2, p0, Ljde;->d:Ljava/lang/String;

    .line 266
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 268
    :cond_4
    iget-object v1, p0, Ljde;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 269
    const/4 v1, 0x5

    iget-object v2, p0, Ljde;->e:Ljava/lang/Integer;

    .line 270
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 272
    :cond_5
    iget-object v1, p0, Ljde;->g:Ljdf;

    if-eqz v1, :cond_6

    .line 273
    const/4 v1, 0x6

    iget-object v2, p0, Ljde;->g:Ljdf;

    .line 274
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 276
    :cond_6
    iget-object v1, p0, Ljde;->f:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 277
    const/4 v1, 0x7

    iget-object v2, p0, Ljde;->f:Ljava/lang/String;

    .line 278
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_7
    return v0
.end method
