.class public final Ljzh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljzh;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile r:[Ljzh;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Lkcr;

.field public d:Ljzj;

.field public e:Ljzb;

.field public f:Lkcv;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Boolean;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27209
    invoke-direct {p0}, Llyb;-><init>()V

    .line 28214
    iput-object v0, p0, Ljzh;->a:Ljava/lang/Integer;

    .line 28215
    iput-object v0, p0, Ljzh;->b:Ljava/lang/Boolean;

    .line 28216
    iput-object v0, p0, Ljzh;->c:Lkcr;

    .line 28217
    iput-object v0, p0, Ljzh;->d:Ljzj;

    .line 28218
    iput-object v0, p0, Ljzh;->e:Ljzb;

    .line 28219
    iput-object v0, p0, Ljzh;->f:Lkcv;

    .line 28220
    iput-object v0, p0, Ljzh;->g:Ljava/lang/Boolean;

    .line 28221
    iput-object v0, p0, Ljzh;->h:Ljava/lang/Boolean;

    .line 28222
    iput-object v0, p0, Ljzh;->i:Ljava/lang/Boolean;

    .line 28223
    iput-object v0, p0, Ljzh;->j:Ljava/lang/Integer;

    .line 28224
    iput-object v0, p0, Ljzh;->k:Ljava/lang/Integer;

    .line 28225
    iput-object v0, p0, Ljzh;->l:Ljava/lang/Integer;

    .line 28226
    iput-object v0, p0, Ljzh;->m:[B

    .line 28227
    iput-object v0, p0, Ljzh;->n:[B

    .line 28228
    iput-object v0, p0, Ljzh;->o:[B

    .line 28229
    iput-object v0, p0, Ljzh;->p:[B

    .line 28230
    iput-object v0, p0, Ljzh;->q:[B

    .line 28231
    iput-object v0, p0, Ljzh;->eD:Llyd;

    .line 28232
    const/4 v0, -0x1

    iput v0, p0, Ljzh;->eE:I

    .line 27211
    return-void
.end method

.method public static d()[Ljzh;
    .locals 2

    .prologue
    .line 27145
    sget-object v0, Ljzh;->r:[Ljzh;

    if-nez v0, :cond_1

    .line 27146
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 27148
    :try_start_0
    sget-object v0, Ljzh;->r:[Ljzh;

    if-nez v0, :cond_0

    .line 27149
    const/4 v0, 0x0

    new-array v0, v0, [Ljzh;

    sput-object v0, Ljzh;->r:[Ljzh;

    .line 27151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27153
    :cond_1
    sget-object v0, Ljzh;->r:[Ljzh;

    return-object v0

    .line 27151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 32372
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 32373
    sparse-switch v0, :sswitch_data_0

    .line 32377
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32378
    :sswitch_0
    return-object p0

    .line 32383
    :sswitch_1
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljzh;->m:[B

    goto :goto_0

    .line 32387
    :sswitch_2
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljzh;->n:[B

    goto :goto_0

    .line 32391
    :sswitch_3
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljzh;->o:[B

    goto :goto_0

    .line 32395
    :sswitch_4
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljzh;->p:[B

    goto :goto_0

    .line 32399
    :sswitch_5
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Ljzh;->q:[B

    goto :goto_0

    .line 32403
    :sswitch_6
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzh;->g:Ljava/lang/Boolean;

    goto :goto_0

    .line 32407
    :sswitch_7
    iget-object v0, p0, Ljzh;->f:Lkcv;

    if-nez v0, :cond_1

    .line 32408
    new-instance v0, Lkcv;

    invoke-direct {v0}, Lkcv;-><init>()V

    iput-object v0, p0, Ljzh;->f:Lkcv;

    .line 32410
    :cond_1
    iget-object v0, p0, Ljzh;->f:Lkcv;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32414
    :sswitch_8
    iget-object v0, p0, Ljzh;->c:Lkcr;

    if-nez v0, :cond_2

    .line 32415
    new-instance v0, Lkcr;

    invoke-direct {v0}, Lkcr;-><init>()V

    iput-object v0, p0, Ljzh;->c:Lkcr;

    .line 32417
    :cond_2
    iget-object v0, p0, Ljzh;->c:Lkcr;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32421
    :sswitch_9
    iget-object v0, p0, Ljzh;->d:Ljzj;

    if-nez v0, :cond_3

    .line 32422
    new-instance v0, Ljzj;

    invoke-direct {v0}, Ljzj;-><init>()V

    iput-object v0, p0, Ljzh;->d:Ljzj;

    .line 32424
    :cond_3
    iget-object v0, p0, Ljzh;->d:Ljzj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 32428
    :sswitch_a
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzh;->h:Ljava/lang/Boolean;

    goto :goto_0

    .line 32432
    :sswitch_b
    iget-object v0, p0, Ljzh;->e:Ljzb;

    if-nez v0, :cond_4

    .line 32433
    new-instance v0, Ljzb;

    invoke-direct {v0}, Ljzb;-><init>()V

    iput-object v0, p0, Ljzh;->e:Ljzb;

    .line 32435
    :cond_4
    iget-object v0, p0, Ljzh;->e:Ljzb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto/16 :goto_0

    .line 32439
    :sswitch_c
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 32440
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 32448
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzh;->a:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 32454
    :sswitch_d
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzh;->i:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 32458
    :sswitch_e
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 32459
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 32463
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzh;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 32469
    :sswitch_f
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 32470
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 32474
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzh;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 32480
    :sswitch_10
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 32481
    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 32486
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljzh;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 32492
    :sswitch_11
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ljzh;->b:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 32373
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x38 -> :sswitch_6
        0x42 -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x58 -> :sswitch_a
        0x62 -> :sswitch_b
        0x68 -> :sswitch_c
        0x70 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_f
        0x88 -> :sswitch_10
        0x90 -> :sswitch_11
    .end sparse-switch

    .line 32440
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 32459
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 32470
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 32481
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 27239
    iget-object v0, p0, Ljzh;->m:[B

    if-eqz v0, :cond_0

    .line 27240
    const/4 v0, 0x1

    iget-object v1, p0, Ljzh;->m:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 27242
    :cond_0
    iget-object v0, p0, Ljzh;->n:[B

    if-eqz v0, :cond_1

    .line 27243
    const/4 v0, 0x2

    iget-object v1, p0, Ljzh;->n:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 27245
    :cond_1
    iget-object v0, p0, Ljzh;->o:[B

    if-eqz v0, :cond_2

    .line 27246
    const/4 v0, 0x3

    iget-object v1, p0, Ljzh;->o:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 27248
    :cond_2
    iget-object v0, p0, Ljzh;->p:[B

    if-eqz v0, :cond_3

    .line 27249
    const/4 v0, 0x4

    iget-object v1, p0, Ljzh;->p:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 27251
    :cond_3
    iget-object v0, p0, Ljzh;->q:[B

    if-eqz v0, :cond_4

    .line 27252
    const/4 v0, 0x5

    iget-object v1, p0, Ljzh;->q:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 27254
    :cond_4
    iget-object v0, p0, Ljzh;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 27255
    const/4 v0, 0x7

    iget-object v1, p0, Ljzh;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 27257
    :cond_5
    iget-object v0, p0, Ljzh;->f:Lkcv;

    if-eqz v0, :cond_6

    .line 27258
    const/16 v0, 0x8

    iget-object v1, p0, Ljzh;->f:Lkcv;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27260
    :cond_6
    iget-object v0, p0, Ljzh;->c:Lkcr;

    if-eqz v0, :cond_7

    .line 27261
    const/16 v0, 0x9

    iget-object v1, p0, Ljzh;->c:Lkcr;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27263
    :cond_7
    iget-object v0, p0, Ljzh;->d:Ljzj;

    if-eqz v0, :cond_8

    .line 27264
    const/16 v0, 0xa

    iget-object v1, p0, Ljzh;->d:Ljzj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27266
    :cond_8
    iget-object v0, p0, Ljzh;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 27267
    const/16 v0, 0xb

    iget-object v1, p0, Ljzh;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 27269
    :cond_9
    iget-object v0, p0, Ljzh;->e:Ljzb;

    if-eqz v0, :cond_a

    .line 27270
    const/16 v0, 0xc

    iget-object v1, p0, Ljzh;->e:Ljzb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 27272
    :cond_a
    iget-object v0, p0, Ljzh;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 27273
    const/16 v0, 0xd

    iget-object v1, p0, Ljzh;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 27275
    :cond_b
    iget-object v0, p0, Ljzh;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 27276
    const/16 v0, 0xe

    iget-object v1, p0, Ljzh;->i:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 27278
    :cond_c
    iget-object v0, p0, Ljzh;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 27279
    const/16 v0, 0xf

    iget-object v1, p0, Ljzh;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 27281
    :cond_d
    iget-object v0, p0, Ljzh;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 27282
    const/16 v0, 0x10

    iget-object v1, p0, Ljzh;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 27284
    :cond_e
    iget-object v0, p0, Ljzh;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 27285
    const/16 v0, 0x11

    iget-object v1, p0, Ljzh;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 27287
    :cond_f
    iget-object v0, p0, Ljzh;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 27288
    const/16 v0, 0x12

    iget-object v1, p0, Ljzh;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(IZ)V

    .line 27290
    :cond_10
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 27291
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 27295
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 27296
    iget-object v1, p0, Ljzh;->m:[B

    if-eqz v1, :cond_0

    .line 27297
    const/4 v1, 0x1

    iget-object v2, p0, Ljzh;->m:[B

    .line 27298
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 27300
    :cond_0
    iget-object v1, p0, Ljzh;->n:[B

    if-eqz v1, :cond_1

    .line 27301
    const/4 v1, 0x2

    iget-object v2, p0, Ljzh;->n:[B

    .line 27302
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 27304
    :cond_1
    iget-object v1, p0, Ljzh;->o:[B

    if-eqz v1, :cond_2

    .line 27305
    const/4 v1, 0x3

    iget-object v2, p0, Ljzh;->o:[B

    .line 27306
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 27308
    :cond_2
    iget-object v1, p0, Ljzh;->p:[B

    if-eqz v1, :cond_3

    .line 27309
    const/4 v1, 0x4

    iget-object v2, p0, Ljzh;->p:[B

    .line 27310
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 27312
    :cond_3
    iget-object v1, p0, Ljzh;->q:[B

    if-eqz v1, :cond_4

    .line 27313
    const/4 v1, 0x5

    iget-object v2, p0, Ljzh;->q:[B

    .line 27314
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 27316
    :cond_4
    iget-object v1, p0, Ljzh;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 27317
    const/4 v1, 0x7

    iget-object v2, p0, Ljzh;->g:Ljava/lang/Boolean;

    .line 27318
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 27318
    add-int/2addr v0, v1

    .line 27320
    :cond_5
    iget-object v1, p0, Ljzh;->f:Lkcv;

    if-eqz v1, :cond_6

    .line 27321
    const/16 v1, 0x8

    iget-object v2, p0, Ljzh;->f:Lkcv;

    .line 27322
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27324
    :cond_6
    iget-object v1, p0, Ljzh;->c:Lkcr;

    if-eqz v1, :cond_7

    .line 27325
    const/16 v1, 0x9

    iget-object v2, p0, Ljzh;->c:Lkcr;

    .line 27326
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27328
    :cond_7
    iget-object v1, p0, Ljzh;->d:Ljzj;

    if-eqz v1, :cond_8

    .line 27329
    const/16 v1, 0xa

    iget-object v2, p0, Ljzh;->d:Ljzj;

    .line 27330
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27332
    :cond_8
    iget-object v1, p0, Ljzh;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 27333
    const/16 v1, 0xb

    iget-object v2, p0, Ljzh;->h:Ljava/lang/Boolean;

    .line 27334
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 27334
    add-int/2addr v0, v1

    .line 27336
    :cond_9
    iget-object v1, p0, Ljzh;->e:Ljzb;

    if-eqz v1, :cond_a

    .line 27337
    const/16 v1, 0xc

    iget-object v2, p0, Ljzh;->e:Ljzb;

    .line 27338
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 27340
    :cond_a
    iget-object v1, p0, Ljzh;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 27341
    const/16 v1, 0xd

    iget-object v2, p0, Ljzh;->a:Ljava/lang/Integer;

    .line 27342
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27344
    :cond_b
    iget-object v1, p0, Ljzh;->i:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    .line 27345
    const/16 v1, 0xe

    iget-object v2, p0, Ljzh;->i:Ljava/lang/Boolean;

    .line 27346
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 27346
    add-int/2addr v0, v1

    .line 27348
    :cond_c
    iget-object v1, p0, Ljzh;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 27349
    const/16 v1, 0xf

    iget-object v2, p0, Ljzh;->j:Ljava/lang/Integer;

    .line 27350
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27352
    :cond_d
    iget-object v1, p0, Ljzh;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    .line 27353
    const/16 v1, 0x10

    iget-object v2, p0, Ljzh;->k:Ljava/lang/Integer;

    .line 27354
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27356
    :cond_e
    iget-object v1, p0, Ljzh;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_f

    .line 27357
    const/16 v1, 0x11

    iget-object v2, p0, Ljzh;->l:Ljava/lang/Integer;

    .line 27358
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 27360
    :cond_f
    iget-object v1, p0, Ljzh;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_10

    .line 27361
    const/16 v1, 0x12

    iget-object v2, p0, Ljzh;->b:Ljava/lang/Boolean;

    .line 27362
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31620
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 27362
    add-int/2addr v0, v1

    .line 27364
    :cond_10
    return v0
.end method
