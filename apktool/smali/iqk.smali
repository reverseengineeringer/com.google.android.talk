.class public final Liqk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Liso;

.field private c:I

.field private final d:Lcom/google/api/client/http/AbstractInputStreamContent;

.field private final e:Lcom/google/api/client/http/HttpRequestFactory;

.field private final f:Lcom/google/api/client/http/HttpTransport;

.field private g:Lcom/google/api/client/http/HttpContent;

.field private h:J

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/google/api/client/http/HttpHeaders;

.field private l:Lcom/google/api/client/http/HttpRequest;

.field private m:Ljava/io/InputStream;

.field private n:Z

.field private o:J

.field private p:I

.field private q:Ljava/lang/Byte;

.field private r:J

.field private s:I

.field private t:[B

.field private u:Z


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget v0, Liql;->a:I

    iput v0, p0, Liqk;->c:I

    .line 181
    const-string v0, "POST"

    iput-object v0, p0, Liqk;->j:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Liqk;->k:Lcom/google/api/client/http/HttpHeaders;

    .line 213
    const-string v0, "*"

    iput-object v0, p0, Liqk;->a:Ljava/lang/String;

    .line 226
    const/high16 v0, 0xa00000

    iput v0, p0, Liqk;->p:I

    .line 264
    sget-object v0, Liso;->a:Liso;

    iput-object v0, p0, Liqk;->b:Liso;

    .line 1127
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    check-cast v0, Lcom/google/api/client/http/AbstractInputStreamContent;

    iput-object v0, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 2127
    invoke-static {p2}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 287
    check-cast v0, Lcom/google/api/client/http/HttpTransport;

    iput-object v0, p0, Liqk;->f:Lcom/google/api/client/http/HttpTransport;

    .line 288
    if-nez p3, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Liqk;->e:Lcom/google/api/client/http/HttpRequestFactory;

    .line 290
    return-void

    .line 289
    :cond_0
    invoke-virtual {p2, p3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1

    .prologue
    .line 541
    new-instance v0, Liqg;

    invoke-direct {v0}, Liqg;-><init>()V

    invoke-virtual {v0, p0}, Liqg;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 545
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 546
    return-object v0
.end method

.method private b(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 4

    .prologue
    .line 346
    sget v0, Liql;->d:I

    .line 3905
    iput v0, p0, Liqk;->c:I

    .line 348
    iget-object v0, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 349
    iget-object v1, p0, Liqk;->g:Lcom/google/api/client/http/HttpContent;

    if-eqz v1, :cond_1

    .line 350
    new-instance v0, Lcom/google/api/client/http/MultipartContent;

    invoke-direct {v0}, Lcom/google/api/client/http/MultipartContent;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/api/client/http/HttpContent;

    const/4 v2, 0x0

    iget-object v3, p0, Liqk;->g:Lcom/google/api/client/http/HttpContent;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/MultipartContent;->setContentParts(Ljava/util/Collection;)Lcom/google/api/client/http/MultipartContent;

    move-result-object v0

    .line 351
    const-string v1, "uploadType"

    const-string v2, "multipart"

    invoke-virtual {p1, v1, v2}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :goto_0
    iget-object v1, p0, Liqk;->e:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v2, p0, Liqk;->j:Ljava/lang/String;

    .line 356
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iget-object v2, p0, Liqk;->k:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 360
    invoke-direct {p0, v0}, Liqk;->b(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 363
    :try_start_0
    invoke-direct {p0}, Liqk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0}, Liqk;->d()J

    move-result-wide v2

    iput-wide v2, p0, Liqk;->o:J

    .line 366
    :cond_0
    sget v0, Liql;->e:I

    .line 4905
    iput v0, p0, Liqk;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    return-object v1

    .line 353
    :cond_1
    const-string v1, "uploadType"

    const-string v2, "media"

    invoke-virtual {p1, v1, v2}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    .line 370
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0
.end method

.method private b(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Liqk;->u:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/api/client/http/EmptyContent;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Lcom/google/api/client/http/GZipEncoding;

    invoke-direct {v0}, Lcom/google/api/client/http/GZipEncoding;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;

    .line 562
    :cond_0
    invoke-static {p1}, Liqk;->a(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 563
    return-object v0
.end method

.method private c(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 11

    .prologue
    .line 384
    invoke-direct {p0, p1}, Liqk;->d(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 385
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-object v1

    .line 391
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 393
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    .line 397
    iget-object v1, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v1}, Lcom/google/api/client/http/AbstractInputStreamContent;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Liqk;->m:Ljava/io/InputStream;

    .line 398
    iget-object v1, p0, Liqk;->m:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Liqk;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Liqk;->m:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Liqk;->m:Ljava/io/InputStream;

    .line 408
    :cond_2
    :goto_1
    iget-object v1, p0, Liqk;->e:Lcom/google/api/client/http/HttpRequestFactory;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    iput-object v1, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    .line 5572
    invoke-direct {p0}, Liqk;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5574
    iget v1, p0, Liqk;->p:I

    int-to-long v2, v1

    invoke-direct {p0}, Liqk;->d()J

    move-result-wide v4

    iget-wide v6, p0, Liqk;->o:J

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    .line 5582
    :goto_2
    invoke-direct {p0}, Liqk;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 5584
    iget-object v2, p0, Liqk;->m:Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->mark(I)V

    .line 5586
    iget-object v2, p0, Liqk;->m:Ljava/io/InputStream;

    int-to-long v4, v1

    .line 6069
    new-instance v3, Lirk;

    invoke-direct {v3, v2, v4, v5}, Lirk;-><init>(Ljava/io/InputStream;J)V

    .line 5587
    new-instance v2, Lcom/google/api/client/http/InputStreamContent;

    iget-object v4, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 5588
    invoke-virtual {v4}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/google/api/client/http/InputStreamContent;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/InputStreamContent;->setRetrySupported(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v2

    int-to-long v4, v1

    .line 5589
    invoke-virtual {v2, v4, v5}, Lcom/google/api/client/http/InputStreamContent;->setLength(J)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/api/client/http/InputStreamContent;->setCloseInputStream(Z)Lcom/google/api/client/http/InputStreamContent;

    move-result-object v2

    .line 5590
    invoke-direct {p0}, Liqk;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Liqk;->a:Ljava/lang/String;

    .line 5654
    :goto_3
    iput v1, p0, Liqk;->s:I

    .line 5655
    iget-object v3, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v3, v2}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 5656
    if-nez v1, :cond_c

    .line 5658
    iget-object v1, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    const-string v2, "bytes */0"

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 412
    :goto_4
    new-instance v1, Liqm;

    iget-object v2, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {v1, p0, v2}, Liqm;-><init>(Liqk;Lcom/google/api/client/http/HttpRequest;)V

    .line 414
    invoke-direct {p0}, Liqk;->c()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 417
    iget-object v1, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    invoke-static {v1}, Liqk;->a(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 423
    :goto_5
    :try_start_1
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 424
    invoke-direct {p0}, Liqk;->d()J

    move-result-wide v2

    iput-wide v2, p0, Liqk;->o:J

    .line 425
    iget-object v0, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getCloseInputStream()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    iget-object v0, p0, Liqk;->m:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 428
    :cond_3
    sget v0, Liql;->e:I

    .line 6905
    iput v0, p0, Liqk;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 473
    :catchall_0
    move-exception v0

    .line 474
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0

    .line 393
    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0

    .line 5577
    :cond_4
    iget v1, p0, Liqk;->p:I

    goto/16 :goto_2

    .line 5600
    :cond_5
    const/4 v3, 0x0

    .line 5601
    iget-object v2, p0, Liqk;->t:[B

    if-nez v2, :cond_9

    .line 5602
    iget-object v2, p0, Liqk;->q:Ljava/lang/Byte;

    if-nez v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    .line 5603
    :goto_6
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [B

    iput-object v4, p0, Liqk;->t:[B

    .line 5604
    iget-object v4, p0, Liqk;->q:Ljava/lang/Byte;

    if-eqz v4, :cond_15

    .line 5605
    iget-object v4, p0, Liqk;->t:[B

    const/4 v5, 0x0

    iget-object v6, p0, Liqk;->q:Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v4, v5

    move v10, v3

    move v3, v2

    move v2, v10

    .line 5629
    :goto_7
    iget-object v4, p0, Liqk;->m:Ljava/io/InputStream;

    iget-object v5, p0, Liqk;->t:[B

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v6, v3

    invoke-static {v4, v5, v6, v3}, Laal;->a(Ljava/io/InputStream;[BII)I

    move-result v4

    .line 5633
    if-ge v4, v3, :cond_b

    .line 5634
    const/4 v1, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 5635
    iget-object v2, p0, Liqk;->q:Ljava/lang/Byte;

    if-eqz v2, :cond_6

    .line 5636
    add-int/lit8 v1, v1, 0x1

    .line 5637
    const/4 v2, 0x0

    iput-object v2, p0, Liqk;->q:Ljava/lang/Byte;

    .line 5640
    :cond_6
    iget-object v2, p0, Liqk;->a:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5643
    iget-wide v2, p0, Liqk;->o:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Liqk;->a:Ljava/lang/String;

    .line 5649
    :cond_7
    :goto_8
    new-instance v2, Lcom/google/api/client/http/ByteArrayContent;

    iget-object v3, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 5650
    invoke-virtual {v3}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Liqk;->t:[B

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[BII)V

    .line 5651
    iget-wide v4, p0, Liqk;->o:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Liqk;->r:J

    goto/16 :goto_3

    :cond_8
    move v2, v1

    .line 5602
    goto :goto_6

    .line 5616
    :cond_9
    iget-wide v2, p0, Liqk;->r:J

    iget-wide v4, p0, Liqk;->o:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 5619
    iget-object v3, p0, Liqk;->t:[B

    iget v4, p0, Liqk;->s:I

    sub-int/2addr v4, v2

    iget-object v5, p0, Liqk;->t:[B

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5621
    iget-object v3, p0, Liqk;->q:Ljava/lang/Byte;

    if-eqz v3, :cond_a

    .line 5623
    iget-object v3, p0, Liqk;->t:[B

    iget-object v4, p0, Liqk;->q:Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v2

    .line 5626
    :cond_a
    sub-int v3, v1, v2

    goto :goto_7

    .line 5646
    :cond_b
    iget-object v2, p0, Liqk;->t:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Liqk;->q:Ljava/lang/Byte;

    goto :goto_8

    .line 5660
    :cond_c
    iget-object v2, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    iget-wide v4, p0, Liqk;->o:J

    iget-wide v6, p0, Liqk;->o:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iget-object v1, p0, Liqk;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x30

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "bytes "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    goto/16 :goto_4

    .line 419
    :cond_d
    iget-object v1, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    invoke-direct {p0, v1}, Liqk;->b(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    goto/16 :goto_5

    .line 433
    :cond_e
    :try_start_2
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x134

    if-ne v2, v3, :cond_0

    .line 439
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 440
    if-eqz v2, :cond_f

    .line 441
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v0, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    .line 446
    :cond_f
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpHeaders;->getRange()Ljava/lang/String;

    move-result-object v2

    .line 7694
    if-nez v2, :cond_11

    .line 7695
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 448
    :goto_9
    iget-wide v2, p0, Liqk;->o:J

    sub-long v6, v4, v2

    .line 449
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-ltz v2, :cond_12

    iget v2, p0, Liqk;->s:I

    int-to-long v2, v2

    cmp-long v2, v6, v2

    if-gtz v2, :cond_12

    const/4 v2, 0x1

    .line 8081
    :goto_a
    invoke-static {v2}, Lfii;->b(Z)V

    .line 451
    iget v2, p0, Liqk;->s:I

    int-to-long v2, v2

    sub-long/2addr v2, v6

    .line 452
    invoke-direct {p0}, Liqk;->c()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 453
    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_10

    .line 459
    iget-object v2, p0, Liqk;->m:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 460
    iget-object v2, p0, Liqk;->m:Ljava/io/InputStream;

    invoke-virtual {v2, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 461
    cmp-long v2, v6, v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    .line 9081
    :goto_b
    invoke-static {v2}, Lfii;->b(Z)V

    .line 469
    :cond_10
    :goto_c
    iput-wide v4, p0, Liqk;->o:J

    .line 471
    sget v2, Liql;->d:I

    .line 9905
    iput v2, p0, Liqk;->c:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 474
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    goto/16 :goto_1

    .line 7697
    :cond_11
    const/16 v3, 0x2d

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-wide v4, v2

    goto :goto_9

    .line 449
    :cond_12
    const/4 v2, 0x0

    goto :goto_a

    .line 461
    :cond_13
    const/4 v2, 0x0

    goto :goto_b

    .line 463
    :cond_14
    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_10

    .line 467
    const/4 v2, 0x0

    iput-object v2, p0, Liqk;->t:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    :cond_15
    move v10, v3

    move v3, v2

    move v2, v10

    goto/16 :goto_7
.end method

.method private c()Z
    .locals 4

    .prologue
    .line 484
    invoke-direct {p0}, Liqk;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()J
    .locals 2

    .prologue
    .line 495
    iget-boolean v0, p0, Liqk;->i:Z

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v0}, Lcom/google/api/client/http/AbstractInputStreamContent;->getLength()J

    move-result-wide v0

    iput-wide v0, p0, Liqk;->h:J

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Liqk;->i:Z

    .line 499
    :cond_0
    iget-wide v0, p0, Liqk;->h:J

    return-wide v0
.end method

.method private d(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 6

    .prologue
    .line 508
    sget v0, Liql;->b:I

    .line 10905
    iput v0, p0, Liqk;->c:I

    .line 510
    const-string v0, "uploadType"

    const-string v1, "resumable"

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/http/GenericUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Liqk;->g:Lcom/google/api/client/http/HttpContent;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v0}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    .line 512
    :goto_0
    iget-object v1, p0, Liqk;->e:Lcom/google/api/client/http/HttpRequestFactory;

    iget-object v2, p0, Liqk;->j:Ljava/lang/String;

    .line 513
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Ljava/lang/String;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 514
    iget-object v1, p0, Liqk;->k:Lcom/google/api/client/http/HttpHeaders;

    const-string v2, "X-Upload-Content-Type"

    iget-object v3, p0, Liqk;->d:Lcom/google/api/client/http/AbstractInputStreamContent;

    invoke-virtual {v3}, Lcom/google/api/client/http/AbstractInputStreamContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 515
    invoke-direct {p0}, Liqk;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Liqk;->k:Lcom/google/api/client/http/HttpHeaders;

    const-string v2, "X-Upload-Content-Length"

    invoke-direct {p0}, Liqk;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    .line 518
    :cond_0
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    iget-object v2, p0, Liqk;->k:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v2}, Lcom/google/api/client/http/HttpHeaders;->putAll(Ljava/util/Map;)V

    .line 519
    invoke-direct {p0, v0}, Liqk;->b(Lcom/google/api/client/http/HttpRequest;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 523
    :try_start_0
    sget v0, Liql;->c:I

    .line 11905
    iput v0, p0, Liqk;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    return-object v1

    .line 511
    :cond_1
    iget-object v0, p0, Liqk;->g:Lcom/google/api/client/http/HttpContent;

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    .line 527
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Liqk;->c:I

    sget v1, Liql;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3037
    :goto_0
    invoke-static {v0}, Lfii;->a(Z)V

    .line 333
    iget-boolean v0, p0, Liqk;->n:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0, p1}, Liqk;->b(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 336
    :goto_1
    return-object v0

    .line 331
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :cond_1
    invoke-direct {p0, p1}, Liqk;->c(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Lcom/google/api/client/http/HttpContent;)Liqk;
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Liqk;->g:Lcom/google/api/client/http/HttpContent;

    .line 708
    return-object p0
.end method

.method a()V
    .locals 4

    .prologue
    .line 677
    iget-object v0, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    const-string v1, "The current request should not be null"

    .line 12140
    invoke-static {v0, v1}, Lfii;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v0, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    new-instance v1, Lcom/google/api/client/http/EmptyContent;

    invoke-direct {v1}, Lcom/google/api/client/http/EmptyContent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 681
    iget-object v0, p0, Liqk;->l:Lcom/google/api/client/http/HttpRequest;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    .line 682
    invoke-direct {p0}, Liqk;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Liqk;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "bytes */"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/api/client/http/HttpHeaders;->setContentRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 683
    return-void

    .line 682
    :cond_0
    const-string v0, "*"

    goto :goto_0
.end method

.method public b()Liqk;
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Liqk;->n:Z

    .line 745
    return-object p0
.end method
