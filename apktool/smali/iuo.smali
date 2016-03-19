.class public final Liuo;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liuo;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Liut;

.field public b:Llyu;

.field public c:Liuq;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/String;

.field public f:Liup;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Boolean;

.field public i:I

.field public j:Lius;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Llyb;-><init>()V

    .line 236
    iput-object v1, p0, Liuo;->a:Liut;

    .line 237
    iput-object v1, p0, Liuo;->b:Llyu;

    .line 238
    iput-object v1, p0, Liuo;->c:Liuq;

    .line 239
    iput-object v1, p0, Liuo;->d:Ljava/lang/Long;

    .line 240
    iput-object v1, p0, Liuo;->e:Ljava/lang/String;

    .line 241
    iput-object v1, p0, Liuo;->f:Liup;

    .line 242
    iput-object v1, p0, Liuo;->g:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Liuo;->h:Ljava/lang/Boolean;

    .line 244
    const/high16 v0, -0x80000000

    iput v0, p0, Liuo;->i:I

    .line 245
    iput-object v1, p0, Liuo;->j:Lius;

    .line 246
    iput-object v1, p0, Liuo;->eD:Llyd;

    .line 247
    const/4 v0, -0x1

    iput v0, p0, Liuo;->eE:I

    .line 248
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 2337
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2338
    sparse-switch v0, :sswitch_data_0

    .line 2342
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2343
    :sswitch_0
    return-object p0

    .line 2348
    :sswitch_1
    iget-object v0, p0, Liuo;->a:Liut;

    if-nez v0, :cond_1

    .line 2349
    new-instance v0, Liut;

    invoke-direct {v0}, Liut;-><init>()V

    iput-object v0, p0, Liuo;->a:Liut;

    .line 2351
    :cond_1
    iget-object v0, p0, Liuo;->a:Liut;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2355
    :sswitch_2
    iget-object v0, p0, Liuo;->b:Llyu;

    if-nez v0, :cond_2

    .line 2356
    new-instance v0, Llyu;

    invoke-direct {v0}, Llyu;-><init>()V

    iput-object v0, p0, Liuo;->b:Llyu;

    .line 2358
    :cond_2
    iget-object v0, p0, Liuo;->b:Llyu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2362
    :sswitch_3
    iget-object v0, p0, Liuo;->c:Liuq;

    if-nez v0, :cond_3

    .line 2363
    new-instance v0, Liuq;

    invoke-direct {v0}, Liuq;-><init>()V

    iput-object v0, p0, Liuo;->c:Liuq;

    .line 2365
    :cond_3
    iget-object v0, p0, Liuo;->c:Liuq;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2369
    :sswitch_4
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Liuo;->d:Ljava/lang/Long;

    goto :goto_0

    .line 2373
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuo;->e:Ljava/lang/String;

    goto :goto_0

    .line 2377
    :sswitch_6
    iget-object v0, p0, Liuo;->f:Liup;

    if-nez v0, :cond_4

    .line 2378
    new-instance v0, Liup;

    invoke-direct {v0}, Liup;-><init>()V

    iput-object v0, p0, Liuo;->f:Liup;

    .line 2380
    :cond_4
    iget-object v0, p0, Liuo;->f:Liup;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2384
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liuo;->g:Ljava/lang/String;

    goto :goto_0

    .line 2388
    :sswitch_8
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liuo;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 2392
    :sswitch_9
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 2393
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2398
    :pswitch_0
    iput v0, p0, Liuo;->i:I

    goto :goto_0

    .line 2404
    :sswitch_a
    iget-object v0, p0, Liuo;->j:Lius;

    if-nez v0, :cond_5

    .line 2405
    new-instance v0, Lius;

    invoke-direct {v0}, Lius;-><init>()V

    iput-object v0, p0, Liuo;->j:Lius;

    .line 2407
    :cond_5
    iget-object v0, p0, Liuo;->j:Lius;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 2338
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch

    .line 2393
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Liuo;->a:Liut;

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x1

    iget-object v1, p0, Liuo;->a:Liut;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 256
    :cond_0
    iget-object v0, p0, Liuo;->b:Llyu;

    if-eqz v0, :cond_1

    .line 257
    const/4 v0, 0x2

    iget-object v1, p0, Liuo;->b:Llyu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 259
    :cond_1
    iget-object v0, p0, Liuo;->c:Liuq;

    if-eqz v0, :cond_2

    .line 260
    const/4 v0, 0x3

    iget-object v1, p0, Liuo;->c:Liuq;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 262
    :cond_2
    iget-object v0, p0, Liuo;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 263
    const/4 v0, 0x4

    iget-object v1, p0, Liuo;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 265
    :cond_3
    iget-object v0, p0, Liuo;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 266
    const/4 v0, 0x5

    iget-object v1, p0, Liuo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 268
    :cond_4
    iget-object v0, p0, Liuo;->f:Liup;

    if-eqz v0, :cond_5

    .line 269
    const/4 v0, 0x6

    iget-object v1, p0, Liuo;->f:Liup;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 271
    :cond_5
    iget-object v0, p0, Liuo;->g:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 272
    const/4 v0, 0x7

    iget-object v1, p0, Liuo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 274
    :cond_6
    iget-object v0, p0, Liuo;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 275
    const/16 v0, 0x8

    iget-object v1, p0, Liuo;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 277
    :cond_7
    iget v0, p0, Liuo;->i:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_8

    .line 278
    const/16 v0, 0x9

    iget v1, p0, Liuo;->i:I

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 280
    :cond_8
    iget-object v0, p0, Liuo;->j:Lius;

    if-eqz v0, :cond_9

    .line 281
    const/16 v0, 0xa

    iget-object v1, p0, Liuo;->j:Lius;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 283
    :cond_9
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 284
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 289
    iget-object v1, p0, Liuo;->a:Liut;

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x1

    iget-object v2, p0, Liuo;->a:Liut;

    .line 291
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_0
    iget-object v1, p0, Liuo;->b:Llyu;

    if-eqz v1, :cond_1

    .line 294
    const/4 v1, 0x2

    iget-object v2, p0, Liuo;->b:Llyu;

    .line 295
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_1
    iget-object v1, p0, Liuo;->c:Liuq;

    if-eqz v1, :cond_2

    .line 298
    const/4 v1, 0x3

    iget-object v2, p0, Liuo;->c:Liuq;

    .line 299
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_2
    iget-object v1, p0, Liuo;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 302
    const/4 v1, 0x4

    iget-object v2, p0, Liuo;->d:Ljava/lang/Long;

    .line 303
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_3
    iget-object v1, p0, Liuo;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 306
    const/4 v1, 0x5

    iget-object v2, p0, Liuo;->e:Ljava/lang/String;

    .line 307
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_4
    iget-object v1, p0, Liuo;->f:Liup;

    if-eqz v1, :cond_5

    .line 310
    const/4 v1, 0x6

    iget-object v2, p0, Liuo;->f:Liup;

    .line 311
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_5
    iget-object v1, p0, Liuo;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 314
    const/4 v1, 0x7

    iget-object v2, p0, Liuo;->g:Ljava/lang/String;

    .line 315
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_6
    iget-object v1, p0, Liuo;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 318
    const/16 v1, 0x8

    iget-object v2, p0, Liuo;->h:Ljava/lang/Boolean;

    .line 319
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 319
    add-int/2addr v0, v1

    .line 321
    :cond_7
    iget v1, p0, Liuo;->i:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_8

    .line 322
    const/16 v1, 0x9

    iget v2, p0, Liuo;->i:I

    .line 323
    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 325
    :cond_8
    iget-object v1, p0, Liuo;->j:Lius;

    if-eqz v1, :cond_9

    .line 326
    const/16 v1, 0xa

    iget-object v2, p0, Liuo;->j:Lius;

    .line 327
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 329
    :cond_9
    return v0
.end method
