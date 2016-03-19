.class public final Lkag;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkag;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljyb;

.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/Boolean;

.field public d:Ljzp;

.field public e:Ljzp;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Boolean;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14224
    invoke-direct {p0}, Llyb;-><init>()V

    .line 15229
    iput-object v0, p0, Lkag;->requestHeader:Lkdo;

    .line 15230
    iput-object v0, p0, Lkag;->a:Ljyb;

    .line 15231
    iput-object v0, p0, Lkag;->b:Ljava/lang/Boolean;

    .line 15232
    iput-object v0, p0, Lkag;->c:Ljava/lang/Boolean;

    .line 15233
    iput-object v0, p0, Lkag;->d:Ljzp;

    .line 15234
    iput-object v0, p0, Lkag;->e:Ljzp;

    .line 15235
    iput-object v0, p0, Lkag;->f:Ljava/lang/Integer;

    .line 15236
    iput-object v0, p0, Lkag;->g:Ljava/lang/Integer;

    .line 15237
    iput-object v0, p0, Lkag;->h:Ljava/lang/Boolean;

    .line 15238
    iput-object v0, p0, Lkag;->eD:Llyd;

    .line 15239
    const/4 v0, -0x1

    iput v0, p0, Lkag;->eE:I

    .line 14226
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 18323
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 18324
    sparse-switch v0, :sswitch_data_0

    .line 18328
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18329
    :sswitch_0
    return-object p0

    .line 18334
    :sswitch_1
    iget-object v0, p0, Lkag;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 18335
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkag;->requestHeader:Lkdo;

    .line 18337
    :cond_1
    iget-object v0, p0, Lkag;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 18341
    :sswitch_2
    iget-object v0, p0, Lkag;->a:Ljyb;

    if-nez v0, :cond_2

    .line 18342
    new-instance v0, Ljyb;

    invoke-direct {v0}, Ljyb;-><init>()V

    iput-object v0, p0, Lkag;->a:Ljyb;

    .line 18344
    :cond_2
    iget-object v0, p0, Lkag;->a:Ljyb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 18348
    :sswitch_3
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkag;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 18352
    :sswitch_4
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkag;->c:Ljava/lang/Boolean;

    goto :goto_0

    .line 18356
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkag;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 18360
    :sswitch_6
    iget-object v0, p0, Lkag;->d:Ljzp;

    if-nez v0, :cond_3

    .line 18361
    new-instance v0, Ljzp;

    invoke-direct {v0}, Ljzp;-><init>()V

    iput-object v0, p0, Lkag;->d:Ljzp;

    .line 18363
    :cond_3
    iget-object v0, p0, Lkag;->d:Ljzp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 18367
    :sswitch_7
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lkag;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 18371
    :sswitch_8
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 18372
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 18375
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkag;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 18381
    :sswitch_9
    iget-object v0, p0, Lkag;->e:Ljzp;

    if-nez v0, :cond_4

    .line 18382
    new-instance v0, Ljzp;

    invoke-direct {v0}, Ljzp;-><init>()V

    iput-object v0, p0, Lkag;->e:Ljzp;

    .line 18384
    :cond_4
    iget-object v0, p0, Lkag;->e:Ljzp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 18324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x30 -> :sswitch_5
        0x3a -> :sswitch_6
        0x40 -> :sswitch_7
        0x48 -> :sswitch_8
        0x5a -> :sswitch_9
    .end sparse-switch

    .line 18372
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 14246
    iget-object v0, p0, Lkag;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 14247
    const/4 v0, 0x1

    iget-object v1, p0, Lkag;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14249
    :cond_0
    iget-object v0, p0, Lkag;->a:Ljyb;

    if-eqz v0, :cond_1

    .line 14250
    const/4 v0, 0x2

    iget-object v1, p0, Lkag;->a:Ljyb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14252
    :cond_1
    iget-object v0, p0, Lkag;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 14253
    const/4 v0, 0x3

    iget-object v1, p0, Lkag;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 14255
    :cond_2
    iget-object v0, p0, Lkag;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 14256
    const/4 v0, 0x4

    iget-object v1, p0, Lkag;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 14258
    :cond_3
    iget-object v0, p0, Lkag;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 14259
    const/4 v0, 0x6

    iget-object v1, p0, Lkag;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 14261
    :cond_4
    iget-object v0, p0, Lkag;->d:Ljzp;

    if-eqz v0, :cond_5

    .line 14262
    const/4 v0, 0x7

    iget-object v1, p0, Lkag;->d:Ljzp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14264
    :cond_5
    iget-object v0, p0, Lkag;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 14265
    const/16 v0, 0x8

    iget-object v1, p0, Lkag;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 14267
    :cond_6
    iget-object v0, p0, Lkag;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 14268
    const/16 v0, 0x9

    iget-object v1, p0, Lkag;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 14270
    :cond_7
    iget-object v0, p0, Lkag;->e:Ljzp;

    if-eqz v0, :cond_8

    .line 14271
    const/16 v0, 0xb

    iget-object v1, p0, Lkag;->e:Ljzp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 14273
    :cond_8
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 14274
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 14278
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 14279
    iget-object v1, p0, Lkag;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 14280
    const/4 v1, 0x1

    iget-object v2, p0, Lkag;->requestHeader:Lkdo;

    .line 14281
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14283
    :cond_0
    iget-object v1, p0, Lkag;->a:Ljyb;

    if-eqz v1, :cond_1

    .line 14284
    const/4 v1, 0x2

    iget-object v2, p0, Lkag;->a:Ljyb;

    .line 14285
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14287
    :cond_1
    iget-object v1, p0, Lkag;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 14288
    const/4 v1, 0x3

    iget-object v2, p0, Lkag;->b:Ljava/lang/Boolean;

    .line 14289
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 14289
    add-int/2addr v0, v1

    .line 14291
    :cond_2
    iget-object v1, p0, Lkag;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 14292
    const/4 v1, 0x4

    iget-object v2, p0, Lkag;->c:Ljava/lang/Boolean;

    .line 14293
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 14293
    add-int/2addr v0, v1

    .line 14295
    :cond_3
    iget-object v1, p0, Lkag;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 14296
    const/4 v1, 0x6

    iget-object v2, p0, Lkag;->f:Ljava/lang/Integer;

    .line 14297
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14299
    :cond_4
    iget-object v1, p0, Lkag;->d:Ljzp;

    if-eqz v1, :cond_5

    .line 14300
    const/4 v1, 0x7

    iget-object v2, p0, Lkag;->d:Ljzp;

    .line 14301
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14303
    :cond_5
    iget-object v1, p0, Lkag;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 14304
    const/16 v1, 0x8

    iget-object v2, p0, Lkag;->h:Ljava/lang/Boolean;

    .line 14305
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 14305
    add-int/2addr v0, v1

    .line 14307
    :cond_6
    iget-object v1, p0, Lkag;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 14308
    const/16 v1, 0x9

    iget-object v2, p0, Lkag;->g:Ljava/lang/Integer;

    .line 14309
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14311
    :cond_7
    iget-object v1, p0, Lkag;->e:Ljzp;

    if-eqz v1, :cond_8

    .line 14312
    const/16 v1, 0xb

    iget-object v2, p0, Lkag;->e:Ljzp;

    .line 14313
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14315
    :cond_8
    return v0
.end method
