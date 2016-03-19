.class public final Lemu;
.super Lems;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field private static x:I


# instance fields
.field private A:I

.field private B:I

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field public m:J

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I

.field public q:J

.field public r:J

.field public s:I

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lemv;",
            ">;"
        }
    .end annotation
.end field

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "msg_box"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "st"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lemu;->a:[Ljava/lang/String;

    .line 182
    sput v3, Lemu;->x:I

    sput v4, Lemu;->x:I

    sput v3, Lemu;->b:I

    .line 183
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->c:I

    .line 184
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->d:I

    .line 185
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->e:I

    .line 186
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->f:I

    .line 187
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->g:I

    .line 188
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->h:I

    .line 189
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->i:I

    .line 190
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->j:I

    .line 191
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->k:I

    .line 192
    sget v0, Lemu;->x:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lemu;->x:I

    sput v0, Lemu;->l:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0}, Lems;-><init>()V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lemu;->w:Ljava/util/List;

    .line 207
    iput-boolean v1, p0, Lemu;->z:Z

    .line 208
    iput v1, p0, Lemu;->A:I

    .line 209
    iput v1, p0, Lemu;->B:I

    .line 210
    iput-object v2, p0, Lemu;->C:Ljava/lang/String;

    .line 211
    iput-object v2, p0, Lemu;->D:Ljava/lang/String;

    .line 212
    iput-object v2, p0, Lemu;->E:Ljava/lang/String;

    .line 213
    iput-boolean v1, p0, Lemu;->F:Z

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lemu;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 253
    new-instance v3, Lemu;

    invoke-direct {v3}, Lemu;-><init>()V

    .line 1219
    sget v0, Lemu;->b:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lemu;->m:J

    .line 1220
    sget v0, Lemu;->c:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lemu;->n:I

    .line 1221
    sget v0, Lemu;->d:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lemu;->o:Ljava/lang/String;

    .line 1222
    sget v0, Lemu;->e:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lemu;->p:I

    .line 1223
    iget-object v0, v3, Lemu;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1228
    iget-object v0, v3, Lemu;->o:Ljava/lang/String;

    const/4 v4, 0x4

    .line 1229
    invoke-static {v0, v4}, Laal;->b(Ljava/lang/String;I)[B

    move-result-object v0

    iget v4, v3, Lemu;->p:I

    .line 1228
    invoke-static {v0, v4}, Laal;->a([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lemu;->o:Ljava/lang/String;

    .line 1231
    :cond_0
    sget v0, Lemu;->f:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lemu;->y:J

    .line 1232
    sget v0, Lemu;->g:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v8

    mul-long/2addr v4, v8

    iput-wide v4, v3, Lemu;->q:J

    .line 1233
    sget v0, Lemu;->h:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lemu;->r:J

    .line 1234
    sget v0, Lemu;->i:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lemu;->s:I

    .line 1235
    sget v0, Lemu;->j:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lemu;->t:I

    .line 1236
    sget v0, Lemu;->k:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lemu;->u:Z

    .line 1237
    sget v0, Lemu;->l:I

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, v3, Lemu;->v:Z

    .line 1239
    iget-object v0, v3, Lemu;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1240
    iput-boolean v1, v3, Lemu;->z:Z

    .line 1241
    iput v1, v3, Lemu;->A:I

    .line 1242
    iput v1, v3, Lemu;->B:I

    .line 1243
    iput-object v6, v3, Lemu;->C:Ljava/lang/String;

    .line 1244
    iput-object v6, v3, Lemu;->D:Ljava/lang/String;

    .line 1245
    iput-object v6, v3, Lemu;->E:Ljava/lang/String;

    .line 1246
    iput-boolean v1, v3, Lemu;->F:Z

    .line 255
    return-object v3

    :cond_2
    move v0, v2

    .line 1236
    goto :goto_0
.end method

.method private m()V
    .locals 12

    .prologue
    .line 359
    iget-boolean v0, p0, Lemu;->z:Z

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lemu;->z:Z

    .line 363
    const/4 v5, 0x0

    .line 364
    const/4 v4, 0x0

    .line 367
    const/4 v3, 0x0

    .line 368
    const/4 v2, 0x0

    .line 369
    const-wide/16 v0, 0x0

    .line 370
    iget-object v6, p0, Lemu;->w:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v6, v0

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lemv;

    .line 371
    invoke-virtual {v0}, Lemv;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 372
    iget v5, p0, Lemu;->A:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lemu;->A:I

    .line 375
    iget-object v5, p0, Lemu;->C:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 377
    iget-object v5, v0, Lemv;->j:Ljava/lang/String;

    iput-object v5, p0, Lemu;->C:Ljava/lang/String;

    .line 425
    :cond_2
    :goto_2
    iget-wide v10, v0, Lemv;->n:J

    add-long/2addr v6, v10

    .line 426
    goto :goto_1

    .line 381
    :cond_3
    if-nez v4, :cond_4

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    iget-object v5, p0, Lemu;->C:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 384
    iget-object v5, p0, Lemu;->C:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_4
    iget-object v5, v0, Lemv;->j:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 388
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 389
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_5
    iget-object v5, v0, Lemv;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 394
    :cond_6
    invoke-virtual {v0}, Lemv;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 395
    iget v5, p0, Lemu;->B:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lemu;->B:I

    .line 396
    invoke-virtual {v0}, Lemv;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 397
    const/4 v5, 0x1

    iput-boolean v5, p0, Lemu;->F:Z

    .line 399
    :cond_7
    iget-object v5, p0, Lemu;->D:Ljava/lang/String;

    if-nez v5, :cond_8

    .line 401
    invoke-virtual {v0}, Lemv;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lemu;->D:Ljava/lang/String;

    .line 402
    iget-object v1, v0, Lemv;->i:Ljava/lang/String;

    iput-object v1, p0, Lemu;->E:Ljava/lang/String;

    .line 403
    iget v2, v0, Lemv;->l:I

    .line 404
    iget v1, v0, Lemv;->m:I

    goto :goto_2

    .line 408
    :cond_8
    if-nez v3, :cond_9

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lemu;->D:Ljava/lang/String;

    aput-object v10, v5, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lemu;->E:Ljava/lang/String;

    aput-object v10, v5, v9

    const/4 v9, 0x2

    .line 413
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    const/4 v9, 0x3

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 410
    invoke-static {v5}, Laal;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_9
    const/16 v5, 0x7c

    .line 417
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 419
    invoke-virtual {v0}, Lemv;->d()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, v0, Lemv;->i:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget v11, v0, Lemv;->l:I

    .line 421
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget v11, v0, Lemv;->m:I

    .line 422
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 418
    invoke-static {v9}, Laal;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 427
    :cond_a
    iget v0, p0, Lemu;->B:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    .line 428
    const-string v0, "multipart/mixed"

    iput-object v0, p0, Lemu;->E:Ljava/lang/String;

    .line 430
    :cond_b
    if-eqz v4, :cond_c

    .line 431
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lemu;->C:Ljava/lang/String;

    .line 433
    :cond_c
    if-eqz v3, :cond_d

    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lemu;->D:Ljava/lang/String;

    .line 436
    :cond_d
    iget-wide v0, p0, Lemu;->y:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 437
    iget-object v0, p0, Lemu;->o:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lemu;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    :goto_3
    iput-wide v0, p0, Lemu;->y:J

    .line 438
    iget-wide v0, p0, Lemu;->y:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lemu;->y:J

    goto/16 :goto_0

    .line 437
    :cond_e
    const-wide/16 v0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lemv;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lemu;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 444
    iget-wide v0, p0, Lemu;->m:J

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 454
    iget-wide v0, p0, Lemu;->q:J

    return-wide v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lemv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lemu;->w:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lemu;->m()V

    .line 273
    :cond_0
    iget-object v0, p0, Lemu;->C:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 274
    const-string v0, ""

    .line 276
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lemu;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0}, Lemu;->m()V

    .line 283
    :cond_0
    iget-object v0, p0, Lemu;->D:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 288
    invoke-direct {p0}, Lemu;->m()V

    .line 290
    :cond_0
    iget-object v0, p0, Lemu;->E:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 295
    invoke-direct {p0}, Lemu;->m()V

    .line 297
    :cond_0
    iget-wide v0, p0, Lemu;->y:J

    return-wide v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lemu;->m()V

    .line 304
    :cond_0
    iget-boolean v0, p0, Lemu;->F:Z

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 309
    invoke-direct {p0}, Lemu;->m()V

    .line 311
    :cond_0
    iget v0, p0, Lemu;->A:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 316
    invoke-direct {p0}, Lemu;->m()V

    .line 318
    :cond_0
    iget v0, p0, Lemu;->B:I

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Left;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 325
    iget-boolean v0, p0, Lemu;->z:Z

    if-nez v0, :cond_0

    .line 326
    invoke-direct {p0}, Lemu;->m()V

    .line 329
    :cond_0
    iget v0, p0, Lemu;->B:I

    if-lez v0, :cond_3

    .line 330
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v0, p0, Lemu;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lemv;

    .line 332
    invoke-virtual {v6}, Lemv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    new-instance v0, Lefw;

    new-array v1, v7, [I

    aput v10, v1, v10

    .line 339
    invoke-virtual {v6}, Lemv;->d()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v6, Lemv;->l:I

    iget v5, v6, Lemv;->m:I

    iget-object v6, v6, Lemv;->i:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lefw;-><init>([ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V

    .line 333
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v2, v8

    .line 351
    :cond_3
    return-object v2
.end method
