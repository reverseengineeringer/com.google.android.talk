.class public final Larv;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private volatile a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Lamg;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lamg;)V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Larv;-><init>(Ljava/io/InputStream;Lamg;B)V

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Lamg;B)V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Larv;->d:I

    .line 75
    iput-object p2, p0, Larv;->f:Lamg;

    .line 76
    const/high16 v0, 0x10000

    invoke-virtual {p2, v0}, Lamg;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Larv;->a:[B

    .line 77
    return-void
.end method

.method private a(Ljava/io/InputStream;[B)I
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 139
    iget v0, p0, Larv;->d:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Larv;->e:I

    iget v1, p0, Larv;->d:I

    sub-int/2addr v0, v1

    iget v1, p0, Larv;->c:I

    if-lt v0, v1, :cond_2

    .line 141
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 142
    if-lez v0, :cond_1

    .line 143
    iput v2, p0, Larv;->d:I

    .line 144
    iput v3, p0, Larv;->e:I

    .line 145
    iput v0, p0, Larv;->b:I

    .line 179
    :cond_1
    :goto_0
    return v0

    .line 158
    :cond_2
    iget v0, p0, Larv;->d:I

    if-nez v0, :cond_5

    iget v0, p0, Larv;->c:I

    array-length v1, p2

    if-le v0, v1, :cond_5

    iget v0, p0, Larv;->b:I

    array-length v1, p2

    if-ne v0, v1, :cond_5

    .line 160
    array-length v0, p2

    shl-int/lit8 v0, v0, 0x1

    .line 161
    iget v1, p0, Larv;->c:I

    if-le v0, v1, :cond_3

    .line 162
    iget v0, p0, Larv;->c:I

    .line 164
    :cond_3
    iget-object v1, p0, Larv;->f:Lamg;

    invoke-virtual {v1, v0}, Lamg;->a(I)[B

    move-result-object v0

    .line 165
    array-length v1, p2

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    iput-object v0, p0, Larv;->a:[B

    .line 170
    iget-object v1, p0, Larv;->f:Lamg;

    invoke-virtual {v1, p2}, Lamg;->a([B)V

    move-object p2, v0

    .line 175
    :cond_4
    :goto_1
    iget v0, p0, Larv;->e:I

    iget v1, p0, Larv;->d:I

    sub-int/2addr v0, v1

    iput v0, p0, Larv;->e:I

    .line 176
    iput v3, p0, Larv;->d:I

    iput v3, p0, Larv;->b:I

    .line 177
    iget v0, p0, Larv;->e:I

    array-length v1, p2

    iget v2, p0, Larv;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 178
    if-gtz v1, :cond_6

    iget v0, p0, Larv;->e:I

    :goto_2
    iput v0, p0, Larv;->b:I

    move v0, v1

    .line 179
    goto :goto_0

    .line 171
    :cond_5
    iget v0, p0, Larv;->d:I

    if-lez v0, :cond_4

    .line 172
    iget v0, p0, Larv;->d:I

    array-length v1, p2

    iget v2, p0, Larv;->d:I

    sub-int/2addr v1, v2

    invoke-static {p2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 178
    :cond_6
    iget v0, p0, Larv;->e:I

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private static c()Ljava/io/IOException;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Larv;->a:[B

    array-length v0, v0

    iput v0, p0, Larv;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized available()I
    .locals 3

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Larv;->in:Ljava/io/InputStream;

    .line 91
    iget-object v1, p0, Larv;->a:[B

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_1
    :try_start_1
    iget v1, p0, Larv;->b:I

    iget v2, p0, Larv;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Larv;->a:[B

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Larv;->f:Lamg;

    iget-object v1, p0, Larv;->a:[B

    invoke-virtual {v0, v1}, Lamg;->a([B)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Larv;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Larv;->a:[B

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Larv;->f:Lamg;

    iget-object v1, p0, Larv;->a:[B

    invoke-virtual {v0, v1}, Lamg;->a([B)V

    .line 129
    iput-object v2, p0, Larv;->a:[B

    .line 131
    :cond_0
    iget-object v0, p0, Larv;->in:Ljava/io/InputStream;

    .line 132
    iput-object v2, p0, Larv;->in:Ljava/io/InputStream;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 136
    :cond_1
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget v0, p0, Larv;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Larv;->c:I

    .line 198
    iget v0, p0, Larv;->e:I

    iput v0, p0, Larv;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Larv;->a:[B

    .line 228
    iget-object v2, p0, Larv;->in:Ljava/io/InputStream;

    .line 229
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 230
    :cond_0
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :cond_1
    :try_start_1
    iget v3, p0, Larv;->e:I

    iget v4, p0, Larv;->b:I

    if-lt v3, v4, :cond_3

    invoke-direct {p0, v2, v1}, Larv;->a(Ljava/io/InputStream;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ne v2, v0, :cond_3

    .line 250
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    .line 239
    :cond_3
    :try_start_2
    iget-object v2, p0, Larv;->a:[B

    if-eq v1, v2, :cond_4

    .line 240
    iget-object v1, p0, Larv;->a:[B

    .line 241
    if-nez v1, :cond_4

    .line 242
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 247
    :cond_4
    iget v2, p0, Larv;->b:I

    iget v3, p0, Larv;->e:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_2

    .line 248
    iget v0, p0, Larv;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Larv;->e:I

    aget-byte v0, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public declared-synchronized read([BII)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 272
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Larv;->a:[B

    .line 273
    if-nez v2, :cond_0

    .line 274
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 277
    :cond_0
    if-nez p3, :cond_2

    .line 278
    const/4 p3, 0x0

    .line 330
    :cond_1
    :goto_0
    monitor-exit p0

    return p3

    .line 280
    :cond_2
    :try_start_1
    iget-object v4, p0, Larv;->in:Ljava/io/InputStream;

    .line 281
    if-nez v4, :cond_3

    .line 282
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 286
    :cond_3
    iget v0, p0, Larv;->e:I

    iget v3, p0, Larv;->b:I

    if-ge v0, v3, :cond_7

    .line 288
    iget v0, p0, Larv;->b:I

    iget v3, p0, Larv;->e:I

    sub-int/2addr v0, v3

    if-lt v0, p3, :cond_5

    move v0, p3

    .line 289
    :goto_1
    iget v3, p0, Larv;->e:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    iget v3, p0, Larv;->e:I

    add-int/2addr v3, v0

    iput v3, p0, Larv;->e:I

    .line 291
    if-eq v0, p3, :cond_4

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move p3, v0

    .line 292
    goto :goto_0

    .line 288
    :cond_5
    iget v0, p0, Larv;->b:I

    iget v3, p0, Larv;->e:I

    sub-int/2addr v0, v3

    goto :goto_1

    .line 294
    :cond_6
    add-int/2addr p2, v0

    .line 295
    sub-int v3, p3, v0

    .line 304
    :goto_2
    iget v0, p0, Larv;->d:I

    if-ne v0, v1, :cond_9

    array-length v0, v2

    if-lt v3, v0, :cond_9

    .line 305
    invoke-virtual {v4, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 306
    if-ne v0, v1, :cond_d

    .line 307
    if-ne v3, p3, :cond_8

    move p3, v1

    goto :goto_0

    :cond_7
    move v3, p3

    .line 297
    goto :goto_2

    .line 307
    :cond_8
    sub-int/2addr p3, v3

    goto :goto_0

    .line 310
    :cond_9
    invoke-direct {p0, v4, v2}, Larv;->a(Ljava/io/InputStream;[B)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 311
    if-ne v3, p3, :cond_a

    move p3, v1

    goto :goto_0

    :cond_a
    sub-int/2addr p3, v3

    goto :goto_0

    .line 314
    :cond_b
    iget-object v0, p0, Larv;->a:[B

    if-eq v2, v0, :cond_c

    .line 315
    iget-object v2, p0, Larv;->a:[B

    .line 316
    if-nez v2, :cond_c

    .line 317
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 321
    :cond_c
    iget v0, p0, Larv;->b:I

    iget v5, p0, Larv;->e:I

    sub-int/2addr v0, v5

    if-lt v0, v3, :cond_e

    move v0, v3

    .line 322
    :goto_3
    iget v5, p0, Larv;->e:I

    invoke-static {v2, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    iget v5, p0, Larv;->e:I

    add-int/2addr v5, v0

    iput v5, p0, Larv;->e:I

    .line 325
    :cond_d
    sub-int/2addr v3, v0

    .line 326
    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_f

    .line 330
    sub-int/2addr p3, v3

    goto :goto_0

    .line 321
    :cond_e
    iget v0, p0, Larv;->b:I

    iget v5, p0, Larv;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v0, v5

    goto :goto_3

    .line 332
    :cond_f
    add-int/2addr p2, v0

    .line 333
    goto :goto_2
.end method

.method public declared-synchronized reset()V
    .locals 5

    .prologue
    .line 346
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Larv;->a:[B

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iget v1, p0, Larv;->d:I

    if-ne v0, v1, :cond_1

    .line 350
    new-instance v0, Larw;

    iget v1, p0, Larv;->e:I

    iget v2, p0, Larv;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x42

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Mark has been invalidated, pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " markLimit: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Larw;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    iget v0, p0, Larv;->d:I

    iput v0, p0, Larv;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 368
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Larv;->a:[B

    .line 369
    iget-object v3, p0, Larv;->in:Ljava/io/InputStream;

    .line 370
    if-nez v2, :cond_0

    .line 371
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 373
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 374
    const-wide/16 p1, 0x0

    .line 400
    :goto_0
    monitor-exit p0

    return-wide p1

    .line 376
    :cond_1
    if-nez v3, :cond_2

    .line 377
    :try_start_1
    invoke-static {}, Larv;->c()Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 380
    :cond_2
    iget v0, p0, Larv;->b:I

    iget v1, p0, Larv;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_3

    .line 381
    iget v0, p0, Larv;->e:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Larv;->e:I

    goto :goto_0

    .line 384
    :cond_3
    iget v0, p0, Larv;->b:I

    iget v1, p0, Larv;->e:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 385
    iget v4, p0, Larv;->b:I

    iput v4, p0, Larv;->e:I

    .line 387
    iget v4, p0, Larv;->d:I

    if-eq v4, v6, :cond_6

    iget v4, p0, Larv;->c:I

    int-to-long v4, v4

    cmp-long v4, p1, v4

    if-gtz v4, :cond_6

    .line 388
    invoke-direct {p0, v3, v2}, Larv;->a(Ljava/io/InputStream;[B)I

    move-result v2

    if-ne v2, v6, :cond_4

    move-wide p1, v0

    .line 389
    goto :goto_0

    .line 391
    :cond_4
    iget v2, p0, Larv;->b:I

    iget v3, p0, Larv;->e:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v4, p1, v0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 392
    iget v2, p0, Larv;->e:I

    int-to-long v2, v2

    sub-long v0, p1, v0

    add-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Larv;->e:I

    goto :goto_0

    .line 396
    :cond_5
    iget v2, p0, Larv;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Larv;->e:I

    int-to-long v2, v2

    sub-long p1, v0, v2

    .line 397
    iget v0, p0, Larv;->b:I

    iput v0, p0, Larv;->e:I

    goto :goto_0

    .line 400
    :cond_6
    sub-long v4, p1, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    add-long p1, v0, v2

    goto :goto_0
.end method
