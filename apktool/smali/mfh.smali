.class public final Lmfh;
.super Llvy;
.source "SourceFile"

# interfaces
.implements Llwr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llvy",
        "<",
        "Lmfh;",
        "Llwa;",
        ">;",
        "Llwr;"
    }
.end annotation


# static fields
.field public static final f:Lmfh;

.field public static final g:Llvs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llvs;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J

.field private static volatile y:Llwt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwt",
            "<",
            "Lmfh;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public d:I

.field public e:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:I

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:D

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Llwj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwj",
            "<",
            "Lmfi;",
            ">;"
        }
    .end annotation
.end field

.field private x:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 4418
    new-instance v0, Lmfh;

    sget-object v1, Llwg;->e:Llvp;

    .line 13069
    sget-object v2, Llvt;->a:Llvt;

    .line 4422
    invoke-direct {v0, v1, v2}, Lmfh;-><init>(Llvp;Llvt;)V

    sput-object v0, Lmfh;->f:Lmfh;

    .line 13214
    sget-object v0, Lmdr;->e:Lmdr;

    .line 13426
    sget-object v1, Lmfh;->f:Lmfh;

    .line 14426
    sget-object v2, Lmfh;->f:Lmfh;

    .line 4445
    sget-object v3, Llxo;->k:Llxo;

    .line 14824
    new-instance v4, Llvs;

    new-instance v5, Llvx;

    const/4 v6, 0x0

    const v7, 0x5cb87e

    invoke-direct {v5, v6, v7, v3}, Llvx;-><init>(Llwi;ILlxo;)V

    invoke-direct {v4, v0, v1, v2, v5}, Llvs;-><init>(Llwp;Ljava/lang/Object;Llwp;Llvx;)V

    .line 4442
    sput-object v4, Lmfh;->g:Llvs;

    .line 4441
    return-void
.end method

.method private constructor <init>(Llvp;Llvt;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 194
    invoke-direct {p0}, Llvy;-><init>()V

    .line 4282
    const/4 v2, -0x1

    iput-byte v2, p0, Lmfh;->x:B

    .line 195
    iput-wide v6, p0, Lmfh;->h:J

    .line 196
    iput-wide v6, p0, Lmfh;->i:J

    .line 197
    iput-wide v6, p0, Lmfh;->j:J

    .line 198
    iput-wide v6, p0, Lmfh;->k:J

    .line 199
    iput v1, p0, Lmfh;->l:I

    .line 200
    iput-wide v4, p0, Lmfh;->m:D

    .line 201
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    iput-wide v2, p0, Lmfh;->n:D

    .line 202
    const-string v2, ""

    iput-object v2, p0, Lmfh;->e:Ljava/lang/String;

    .line 203
    iput-wide v4, p0, Lmfh;->o:D

    .line 204
    iput-wide v4, p0, Lmfh;->p:D

    .line 205
    iput-wide v4, p0, Lmfh;->q:D

    .line 206
    iput-boolean v0, p0, Lmfh;->r:Z

    .line 207
    iput-boolean v0, p0, Lmfh;->s:Z

    .line 208
    iput v0, p0, Lmfh;->t:I

    .line 209
    const-string v2, ""

    iput-object v2, p0, Lmfh;->u:Ljava/lang/String;

    .line 210
    iput-boolean v0, p0, Lmfh;->v:Z

    .line 6020
    sget-object v2, Llwu;->b:Llwu;

    .line 211
    iput-object v2, p0, Lmfh;->w:Llwj;

    .line 214
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 215
    :try_start_0
    invoke-virtual {p1}, Llvp;->a()I

    move-result v2

    .line 216
    sparse-switch v2, :sswitch_data_0

    .line 221
    invoke-virtual {p0, v2, p1}, Lmfh;->a(ILlvp;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 222
    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 219
    goto :goto_0

    .line 227
    :sswitch_1
    iget v2, p0, Lmfh;->d:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmfh;->d:I

    .line 228
    invoke-virtual {p1}, Llvp;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->h:J
    :try_end_0
    .catch Llwk; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lmfh;->w:Llwj;

    invoke-interface {v1}, Llwj;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lmfh;->w:Llwj;

    invoke-interface {v1}, Llwj;->b()V

    .line 334
    :cond_1
    invoke-virtual {p0}, Lmfh;->e()V

    throw v0

    .line 232
    :sswitch_2
    :try_start_2
    iget v2, p0, Lmfh;->d:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lmfh;->d:I

    .line 233
    invoke-virtual {p1}, Llvp;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->i:J
    :try_end_2
    .catch Llwk; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Llwk;

    .line 329
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Llwk;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Llwk;->a(Llwp;)Llwk;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    :sswitch_3
    :try_start_4
    iget-object v2, p0, Lmfh;->w:Llwj;

    invoke-interface {v2}, Llwj;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6295
    new-instance v2, Llwu;

    invoke-direct {v2}, Llwu;-><init>()V

    .line 238
    iput-object v2, p0, Lmfh;->w:Llwj;

    .line 240
    :cond_2
    iget-object v2, p0, Lmfh;->w:Llwj;

    const/16 v3, 0x9

    .line 6834
    sget-object v4, Lmfi;->d:Lmfi;

    .line 240
    invoke-virtual {p1, v3, v4, p2}, Llvp;->a(ILlvy;Llvt;)Llvy;

    move-result-object v3

    invoke-interface {v2, v3}, Llwj;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :sswitch_4
    iget v2, p0, Lmfh;->d:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lmfh;->d:I

    .line 246
    invoke-virtual {p1}, Llvp;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->j:J

    goto/16 :goto_0

    .line 250
    :sswitch_5
    iget v2, p0, Lmfh;->d:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lmfh;->d:I

    .line 251
    invoke-virtual {p1}, Llvp;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->k:J

    goto/16 :goto_0

    .line 255
    :sswitch_6
    iget v2, p0, Lmfh;->d:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lmfh;->d:I

    .line 256
    invoke-virtual {p1}, Llvp;->f()I

    move-result v2

    iput v2, p0, Lmfh;->l:I

    goto/16 :goto_0

    .line 260
    :sswitch_7
    iget v2, p0, Lmfh;->d:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lmfh;->d:I

    .line 261
    invoke-virtual {p1}, Llvp;->b()D

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->n:D

    goto/16 :goto_0

    .line 265
    :sswitch_8
    invoke-virtual {p1}, Llvp;->j()Ljava/lang/String;

    move-result-object v2

    .line 266
    iget v3, p0, Lmfh;->d:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lmfh;->d:I

    .line 267
    iput-object v2, p0, Lmfh;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 271
    :sswitch_9
    iget v2, p0, Lmfh;->d:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lmfh;->d:I

    .line 272
    invoke-virtual {p1}, Llvp;->b()D

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->o:D

    goto/16 :goto_0

    .line 276
    :sswitch_a
    iget v2, p0, Lmfh;->d:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p0, Lmfh;->d:I

    .line 277
    invoke-virtual {p1}, Llvp;->b()D

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->p:D

    goto/16 :goto_0

    .line 281
    :sswitch_b
    iget v2, p0, Lmfh;->d:I

    or-int/lit16 v2, v2, 0x800

    iput v2, p0, Lmfh;->d:I

    .line 282
    invoke-virtual {p1}, Llvp;->i()Z

    move-result v2

    iput-boolean v2, p0, Lmfh;->r:Z

    goto/16 :goto_0

    .line 286
    :sswitch_c
    iget v2, p0, Lmfh;->d:I

    or-int/lit16 v2, v2, 0x400

    iput v2, p0, Lmfh;->d:I

    .line 287
    invoke-virtual {p1}, Llvp;->b()D

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->q:D

    goto/16 :goto_0

    .line 291
    :sswitch_d
    iget v2, p0, Lmfh;->d:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lmfh;->d:I

    .line 292
    invoke-virtual {p1}, Llvp;->b()D

    move-result-wide v2

    iput-wide v2, p0, Lmfh;->m:D

    goto/16 :goto_0

    .line 296
    :sswitch_e
    iget v2, p0, Lmfh;->d:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Lmfh;->d:I

    .line 297
    invoke-virtual {p1}, Llvp;->i()Z

    move-result v2

    iput-boolean v2, p0, Lmfh;->s:Z

    goto/16 :goto_0

    .line 301
    :sswitch_f
    invoke-virtual {p1}, Llvp;->n()I

    move-result v2

    .line 302
    invoke-static {v2}, Lmfl;->a(I)Lmfl;

    move-result-object v3

    .line 303
    if-nez v3, :cond_3

    .line 304
    const/16 v3, 0x22

    invoke-super {p0, v3, v2}, Llvy;->a(II)V

    goto/16 :goto_0

    .line 306
    :cond_3
    iget v3, p0, Lmfh;->d:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, p0, Lmfh;->d:I

    .line 307
    iput v2, p0, Lmfh;->t:I

    goto/16 :goto_0

    .line 312
    :sswitch_10
    invoke-virtual {p1}, Llvp;->j()Ljava/lang/String;

    move-result-object v2

    .line 313
    iget v3, p0, Lmfh;->d:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, p0, Lmfh;->d:I

    .line 314
    iput-object v2, p0, Lmfh;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 318
    :sswitch_11
    iget v2, p0, Lmfh;->d:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lmfh;->d:I

    .line 319
    invoke-virtual {p1}, Llvp;->i()Z

    move-result v2

    iput-boolean v2, p0, Lmfh;->v:Z
    :try_end_4
    .catch Llwk; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 331
    :cond_4
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->b()V

    .line 334
    :cond_5
    invoke-virtual {p0}, Lmfh;->e()V

    .line 335
    return-void

    .line 216
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x4b -> :sswitch_3
        0x71 -> :sswitch_4
        0x79 -> :sswitch_5
        0x80 -> :sswitch_6
        0x89 -> :sswitch_7
        0x92 -> :sswitch_8
        0x99 -> :sswitch_9
        0xa1 -> :sswitch_a
        0xd0 -> :sswitch_b
        0xf9 -> :sswitch_c
        0x101 -> :sswitch_d
        0x108 -> :sswitch_e
        0x110 -> :sswitch_f
        0x11a -> :sswitch_10
        0x120 -> :sswitch_11
    .end sparse-switch
.end method

.method private p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2851
    iget v1, p0, Lmfh;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private q()Z
    .locals 2

    .prologue
    .line 2880
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    const v5, 0x8000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 4286
    sget-object v0, Lmfg;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 4288
    :pswitch_0
    new-instance p0, Lmfh;

    check-cast p2, Llvp;

    check-cast p3, Llvt;

    invoke-direct {p0, p2, p3}, Lmfh;-><init>(Llvp;Llvt;)V

    .line 4408
    :cond_0
    :goto_0
    return-object p0

    .line 4292
    :pswitch_1
    new-instance p0, Lmfh;

    sget-object v0, Llwg;->e:Llvp;

    .line 9069
    sget-object v1, Llvt;->a:Llvt;

    .line 4295
    invoke-direct {p0, v0, v1}, Lmfh;-><init>(Llvp;Llvt;)V

    goto :goto_0

    .line 4298
    :pswitch_2
    iget-byte v0, p0, Lmfh;->x:B

    .line 4299
    if-ne v0, v4, :cond_1

    sget-object p0, Lmfh;->f:Lmfh;

    goto :goto_0

    .line 4300
    :cond_1
    if-nez v0, :cond_2

    move-object p0, v3

    goto :goto_0

    .line 4302
    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 4303
    invoke-direct {p0}, Lmfh;->p()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4304
    if-eqz v5, :cond_3

    .line 4305
    iput-byte v2, p0, Lmfh;->x:B

    :cond_3
    move-object p0, v3

    .line 4307
    goto :goto_0

    .line 4309
    :cond_4
    invoke-direct {p0}, Lmfh;->q()Z

    move-result v0

    if-nez v0, :cond_6

    .line 4310
    if-eqz v5, :cond_5

    .line 4311
    iput-byte v2, p0, Lmfh;->x:B

    :cond_5
    move-object p0, v3

    .line 4313
    goto :goto_0

    :cond_6
    move v1, v2

    .line 9376
    :goto_1
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    .line 4315
    if-ge v1, v0, :cond_9

    .line 9382
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmfi;

    .line 4316
    invoke-virtual {v0}, Lmfi;->f()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4317
    if-eqz v5, :cond_7

    .line 4318
    iput-byte v2, p0, Lmfh;->x:B

    :cond_7
    move-object p0, v3

    .line 4320
    goto :goto_0

    .line 4315
    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 4323
    :cond_9
    if-eqz v5, :cond_a

    iput-byte v4, p0, Lmfh;->x:B

    .line 4324
    :cond_a
    sget-object p0, Lmfh;->f:Lmfh;

    goto :goto_0

    .line 4328
    :pswitch_3
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->b()V

    move-object p0, v3

    .line 4329
    goto :goto_0

    .line 4332
    :pswitch_4
    new-instance p0, Llwa;

    .line 9674
    invoke-direct {p0}, Llwa;-><init>()V

    goto :goto_0

    .line 10426
    :pswitch_5
    sget-object v0, Lmfh;->f:Lmfh;

    .line 4335
    if-eq p2, v0, :cond_0

    .line 4336
    check-cast p2, Lmfh;

    .line 4337
    invoke-direct {p2}, Lmfh;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4338
    invoke-virtual {p2}, Lmfh;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmfh;->a(J)V

    .line 4340
    :cond_b
    invoke-direct {p2}, Lmfh;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 10886
    iget-wide v0, p2, Lmfh;->i:J

    .line 4341
    invoke-virtual {p0, v0, v1}, Lmfh;->b(J)V

    .line 10909
    :cond_c
    iget v0, p2, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19

    move v0, v4

    .line 4343
    :goto_2
    if-eqz v0, :cond_d

    .line 4344
    invoke-virtual {p2}, Lmfh;->k()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmfh;->c(J)V

    .line 10938
    :cond_d
    iget v0, p2, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    move v0, v4

    .line 4346
    :goto_3
    if-eqz v0, :cond_e

    .line 10944
    iget-wide v0, p2, Lmfh;->k:J

    .line 10950
    iget v3, p0, Lmfh;->d:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lmfh;->d:I

    .line 10951
    iput-wide v0, p0, Lmfh;->k:J

    .line 10967
    :cond_e
    iget v0, p2, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1b

    move v0, v4

    .line 4349
    :goto_4
    if-eqz v0, :cond_f

    .line 10973
    iget v0, p2, Lmfh;->l:I

    .line 10979
    iget v1, p0, Lmfh;->d:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lmfh;->d:I

    .line 10980
    iput v0, p0, Lmfh;->l:I

    .line 10996
    :cond_f
    iget v0, p2, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1c

    move v0, v4

    .line 4352
    :goto_5
    if-eqz v0, :cond_10

    .line 11002
    iget-wide v0, p2, Lmfh;->m:D

    .line 11008
    iget v3, p0, Lmfh;->d:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lmfh;->d:I

    .line 11009
    iput-wide v0, p0, Lmfh;->m:D

    .line 11025
    :cond_10
    iget v0, p2, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1d

    move v0, v4

    .line 4355
    :goto_6
    if-eqz v0, :cond_11

    .line 11031
    iget-wide v0, p2, Lmfh;->n:D

    .line 11037
    iget v3, p0, Lmfh;->d:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lmfh;->d:I

    .line 11038
    iput-wide v0, p0, Lmfh;->n:D

    .line 11054
    :cond_11
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1e

    move v0, v4

    .line 4358
    :goto_7
    if-eqz v0, :cond_12

    .line 4359
    iget v0, p0, Lmfh;->d:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lmfh;->d:I

    .line 4360
    iget-object v0, p2, Lmfh;->e:Ljava/lang/String;

    iput-object v0, p0, Lmfh;->e:Ljava/lang/String;

    .line 11105
    :cond_12
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1f

    move v0, v4

    .line 4362
    :goto_8
    if-eqz v0, :cond_13

    .line 4363
    invoke-virtual {p2}, Lmfh;->n()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmfh;->a(D)V

    .line 11134
    :cond_13
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_20

    move v0, v4

    .line 4365
    :goto_9
    if-eqz v0, :cond_14

    .line 4366
    invoke-virtual {p2}, Lmfh;->o()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmfh;->b(D)V

    .line 11163
    :cond_14
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_21

    move v0, v4

    .line 4368
    :goto_a
    if-eqz v0, :cond_15

    .line 11169
    iget-wide v0, p2, Lmfh;->q:D

    .line 11175
    iget v3, p0, Lmfh;->d:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lmfh;->d:I

    .line 11176
    iput-wide v0, p0, Lmfh;->q:D

    .line 11192
    :cond_15
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_22

    move v0, v4

    .line 4371
    :goto_b
    if-eqz v0, :cond_16

    .line 11198
    iget-boolean v0, p2, Lmfh;->r:Z

    .line 11204
    iget v1, p0, Lmfh;->d:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lmfh;->d:I

    .line 11205
    iput-boolean v0, p0, Lmfh;->r:Z

    .line 11221
    :cond_16
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_23

    move v0, v4

    .line 4374
    :goto_c
    if-eqz v0, :cond_17

    .line 11227
    iget-boolean v0, p2, Lmfh;->s:Z

    .line 11233
    iget v1, p0, Lmfh;->d:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lmfh;->d:I

    .line 11234
    iput-boolean v0, p0, Lmfh;->s:Z

    .line 11250
    :cond_17
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_24

    move v0, v4

    .line 4377
    :goto_d
    if-eqz v0, :cond_26

    .line 11256
    iget v0, p2, Lmfh;->t:I

    invoke-static {v0}, Lmfl;->a(I)Lmfl;

    move-result-object v0

    .line 11257
    if-nez v0, :cond_18

    sget-object v0, Lmfl;->a:Lmfl;

    .line 11263
    :cond_18
    if-nez v0, :cond_25

    .line 11264
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_19
    move v0, v2

    .line 10909
    goto/16 :goto_2

    :cond_1a
    move v0, v2

    .line 10938
    goto/16 :goto_3

    :cond_1b
    move v0, v2

    .line 10967
    goto/16 :goto_4

    :cond_1c
    move v0, v2

    .line 10996
    goto/16 :goto_5

    :cond_1d
    move v0, v2

    .line 11025
    goto/16 :goto_6

    :cond_1e
    move v0, v2

    .line 11054
    goto/16 :goto_7

    :cond_1f
    move v0, v2

    .line 11105
    goto/16 :goto_8

    :cond_20
    move v0, v2

    .line 11134
    goto :goto_9

    :cond_21
    move v0, v2

    .line 11163
    goto :goto_a

    :cond_22
    move v0, v2

    .line 11192
    goto :goto_b

    :cond_23
    move v0, v2

    .line 11221
    goto :goto_c

    :cond_24
    move v0, v2

    .line 11250
    goto :goto_d

    .line 11266
    :cond_25
    iget v1, p0, Lmfh;->d:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, p0, Lmfh;->d:I

    .line 11379
    iget v0, v0, Lmfl;->e:I

    .line 11267
    iput v0, p0, Lmfh;->t:I

    .line 12283
    :cond_26
    iget v0, p2, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_2b

    move v0, v4

    .line 4380
    :goto_e
    if-eqz v0, :cond_27

    .line 4381
    iget v0, p0, Lmfh;->d:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lmfh;->d:I

    .line 4382
    iget-object v0, p2, Lmfh;->u:Ljava/lang/String;

    iput-object v0, p0, Lmfh;->u:Ljava/lang/String;

    .line 12334
    :cond_27
    iget v0, p2, Lmfh;->d:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_28

    move v2, v4

    .line 4384
    :cond_28
    if-eqz v2, :cond_29

    .line 12340
    iget-boolean v0, p2, Lmfh;->v:Z

    .line 12346
    iget v1, p0, Lmfh;->d:I

    or-int/2addr v1, v5

    iput v1, p0, Lmfh;->d:I

    .line 12347
    iput-boolean v0, p0, Lmfh;->v:Z

    .line 4387
    :cond_29
    iget-object v0, p2, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 4388
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4389
    iget-object v0, p2, Lmfh;->w:Llwj;

    iput-object v0, p0, Lmfh;->w:Llwj;

    .line 4395
    :cond_2a
    :goto_f
    iget-object v0, p2, Lmfh;->b:Llxf;

    invoke-virtual {p0, v0}, Lmfh;->a(Llxf;)V

    goto/16 :goto_0

    :cond_2b
    move v0, v2

    .line 12283
    goto :goto_e

    .line 12392
    :cond_2c
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->a()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 12393
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-static {v0}, Lmfh;->a(Ljava/util/List;)Llwj;

    move-result-object v0

    iput-object v0, p0, Lmfh;->w:Llwj;

    .line 4392
    :cond_2d
    iget-object v0, p0, Lmfh;->w:Llwj;

    iget-object v1, p2, Lmfh;->w:Llwj;

    invoke-interface {v0, v1}, Llwj;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 4399
    :pswitch_6
    sget-object p0, Lmfh;->f:Lmfh;

    goto/16 :goto_0

    .line 4402
    :pswitch_7
    sget-object v0, Lmfh;->y:Llwt;

    if-nez v0, :cond_2f

    const-class v1, Lmfh;

    monitor-enter v1

    .line 4403
    :try_start_0
    sget-object v0, Lmfh;->y:Llwt;

    if-nez v0, :cond_2e

    .line 4404
    new-instance v0, Llvi;

    sget-object v2, Lmfh;->f:Lmfh;

    invoke-direct {v0, v2}, Llvi;-><init>(Llvy;)V

    sput-object v0, Lmfh;->y:Llwt;

    .line 4406
    :cond_2e
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4408
    :cond_2f
    sget-object p0, Lmfh;->y:Llwt;

    goto/16 :goto_0

    .line 4406
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 4286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(D)V
    .locals 1

    .prologue
    .line 3117
    iget v0, p0, Lmfh;->d:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lmfh;->d:I

    .line 3118
    iput-wide p1, p0, Lmfh;->o:D

    .line 3119
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 2863
    iget v0, p0, Lmfh;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmfh;->d:I

    .line 2864
    iput-wide p1, p0, Lmfh;->h:J

    .line 2865
    return-void
.end method

.method public a(Llvq;)V
    .locals 7

    .prologue
    const v6, 0x8000

    const/16 v5, 0x20

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3478
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    .line 3479
    iget-wide v0, p0, Lmfh;->h:J

    invoke-virtual {p1, v2, v0, v1}, Llvq;->c(IJ)V

    .line 3481
    :cond_0
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    .line 3482
    iget-wide v0, p0, Lmfh;->i:J

    invoke-virtual {p1, v3, v0, v1}, Llvq;->c(IJ)V

    .line 3484
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3485
    const/16 v2, 0x9

    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    invoke-virtual {p1, v2, v0}, Llvq;->e(ILlwp;)V

    .line 3484
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3487
    :cond_2
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3488
    const/16 v0, 0xe

    iget-wide v2, p0, Lmfh;->j:J

    invoke-virtual {p1, v0, v2, v3}, Llvq;->c(IJ)V

    .line 3490
    :cond_3
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 3491
    const/16 v0, 0xf

    iget-wide v2, p0, Lmfh;->k:J

    invoke-virtual {p1, v0, v2, v3}, Llvq;->c(IJ)V

    .line 3493
    :cond_4
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v4, :cond_5

    .line 3494
    iget v0, p0, Lmfh;->l:I

    invoke-virtual {p1, v4, v0}, Llvq;->b(II)V

    .line 3496
    :cond_5
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 3497
    const/16 v0, 0x11

    iget-wide v2, p0, Lmfh;->n:D

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(ID)V

    .line 3499
    :cond_6
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 3500
    const/16 v0, 0x12

    invoke-virtual {p0}, Lmfh;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Llvq;->a(ILjava/lang/String;)V

    .line 3502
    :cond_7
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 3503
    const/16 v0, 0x13

    iget-wide v2, p0, Lmfh;->o:D

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(ID)V

    .line 3505
    :cond_8
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 3506
    const/16 v0, 0x14

    iget-wide v2, p0, Lmfh;->p:D

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(ID)V

    .line 3508
    :cond_9
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    .line 3509
    const/16 v0, 0x1a

    iget-boolean v1, p0, Lmfh;->r:Z

    invoke-virtual {p1, v0, v1}, Llvq;->a(IZ)V

    .line 3511
    :cond_a
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_b

    .line 3512
    const/16 v0, 0x1f

    iget-wide v2, p0, Lmfh;->q:D

    invoke-virtual {p1, v0, v2, v3}, Llvq;->a(ID)V

    .line 3514
    :cond_b
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x20

    if-ne v0, v5, :cond_c

    .line 3515
    iget-wide v0, p0, Lmfh;->m:D

    invoke-virtual {p1, v5, v0, v1}, Llvq;->a(ID)V

    .line 3517
    :cond_c
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 3518
    const/16 v0, 0x21

    iget-boolean v1, p0, Lmfh;->s:Z

    invoke-virtual {p1, v0, v1}, Llvq;->a(IZ)V

    .line 3520
    :cond_d
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_e

    .line 3521
    iget v0, p0, Lmfh;->t:I

    invoke-virtual {p1, v0}, Llvq;->a(I)V

    .line 3523
    :cond_e
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_f

    .line 3524
    const/16 v0, 0x23

    .line 7289
    iget-object v1, p0, Lmfh;->u:Ljava/lang/String;

    .line 3524
    invoke-virtual {p1, v0, v1}, Llvq;->a(ILjava/lang/String;)V

    .line 3526
    :cond_f
    iget v0, p0, Lmfh;->d:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_10

    .line 3527
    const/16 v0, 0x24

    iget-boolean v1, p0, Lmfh;->v:Z

    invoke-virtual {p1, v0, v1}, Llvq;->a(IZ)V

    .line 3529
    :cond_10
    iget-object v0, p0, Lmfh;->b:Llxf;

    invoke-virtual {v0, p1}, Llxf;->a(Llvq;)V

    .line 3530
    return-void
.end method

.method public b(D)V
    .locals 1

    .prologue
    .line 3146
    iget v0, p0, Lmfh;->d:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lmfh;->d:I

    .line 3147
    iput-wide p1, p0, Lmfh;->p:D

    .line 3148
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 2892
    iget v0, p0, Lmfh;->d:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmfh;->d:I

    .line 2893
    iput-wide p1, p0, Lmfh;->i:J

    .line 2894
    return-void
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 2921
    iget v0, p0, Lmfh;->d:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lmfh;->d:I

    .line 2922
    iput-wide p1, p0, Lmfh;->j:J

    .line 2923
    return-void
.end method

.method public j()J
    .locals 2

    .prologue
    .line 2857
    iget-wide v0, p0, Lmfh;->h:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 2915
    iget-wide v0, p0, Lmfh;->j:J

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3060
    iget-object v0, p0, Lmfh;->e:Ljava/lang/String;

    return-object v0
.end method

.method public m()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0x10

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3533
    iget v0, p0, Lmfh;->c:I

    .line 3534
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 3607
    :goto_0
    return v0

    .line 3537
    :cond_0
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_11

    .line 3539
    invoke-static {v3}, Llvq;->i(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 3541
    :goto_1
    iget v2, p0, Lmfh;->d:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    .line 3543
    invoke-static {v4}, Llvq;->i(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v0

    .line 3545
    :goto_2
    iget-object v0, p0, Lmfh;->w:Llwj;

    invoke-interface {v0}, Llwj;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3546
    const/16 v3, 0x9

    iget-object v0, p0, Lmfh;->w:Llwj;

    .line 3547
    invoke-interface {v0, v1}, Llwj;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llwp;

    invoke-static {v3, v0}, Llvq;->f(ILlwp;)I

    move-result v0

    add-int/2addr v0, v2

    .line 3545
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    .line 3549
    :cond_2
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3550
    const/16 v0, 0xe

    .line 3551
    invoke-static {v0}, Llvq;->i(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3553
    :cond_3
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 3554
    const/16 v0, 0xf

    .line 3555
    invoke-static {v0}, Llvq;->i(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3557
    :cond_4
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_5

    .line 3558
    iget v0, p0, Lmfh;->l:I

    .line 3559
    invoke-static {v5, v0}, Llvq;->d(II)I

    move-result v0

    add-int/2addr v2, v0

    .line 3561
    :cond_5
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 3562
    const/16 v0, 0x11

    .line 3563
    invoke-static {v0}, Llvq;->j(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3565
    :cond_6
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 3566
    const/16 v0, 0x12

    .line 3567
    invoke-virtual {p0}, Lmfh;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llvq;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3569
    :cond_7
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 3570
    const/16 v0, 0x13

    .line 3571
    invoke-static {v0}, Llvq;->j(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3573
    :cond_8
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 3574
    const/16 v0, 0x14

    .line 3575
    invoke-static {v0}, Llvq;->j(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3577
    :cond_9
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_a

    .line 3578
    const/16 v0, 0x1a

    .line 3579
    invoke-static {v0}, Llvq;->k(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3581
    :cond_a
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_b

    .line 3582
    const/16 v0, 0x1f

    .line 3583
    invoke-static {v0}, Llvq;->j(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3585
    :cond_b
    iget v0, p0, Lmfh;->d:I

    and-int/lit8 v0, v0, 0x20

    if-ne v0, v6, :cond_c

    .line 3587
    invoke-static {v6}, Llvq;->j(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3589
    :cond_c
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 3590
    const/16 v0, 0x21

    .line 3591
    invoke-static {v0}, Llvq;->k(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3593
    :cond_d
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_e

    .line 3594
    iget v0, p0, Lmfh;->t:I

    .line 3595
    invoke-static {v0}, Llvq;->l(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3597
    :cond_e
    iget v0, p0, Lmfh;->d:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_f

    .line 3598
    const/16 v0, 0x23

    .line 8289
    iget-object v1, p0, Lmfh;->u:Ljava/lang/String;

    .line 3599
    invoke-static {v0, v1}, Llvq;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 3601
    :cond_f
    iget v0, p0, Lmfh;->d:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_10

    .line 3602
    const/16 v0, 0x24

    .line 3603
    invoke-static {v0}, Llvq;->k(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 3605
    :cond_10
    iget-object v0, p0, Lmfh;->b:Llxf;

    invoke-virtual {v0}, Llxf;->b()I

    move-result v0

    add-int/2addr v0, v2

    .line 3606
    iput v0, p0, Lmfh;->c:I

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_1
.end method

.method public n()D
    .locals 2

    .prologue
    .line 3111
    iget-wide v0, p0, Lmfh;->o:D

    return-wide v0
.end method

.method public o()D
    .locals 2

    .prologue
    .line 3140
    iget-wide v0, p0, Lmfh;->p:D

    return-wide v0
.end method
