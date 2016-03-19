.class public final Ldth;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ldth;

.field static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "none"

    sput-object v0, Ldth;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILcvn;I)Lcom/google/api/client/http/HttpRequestInitializer;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 241
    invoke-static {p0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lbfd;->U()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v0}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    .line 244
    if-nez p1, :cond_1

    move-object v2, v1

    .line 246
    :goto_0
    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {p1, v2}, Lcvn;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 3212
    :cond_0
    new-instance v3, Liqi;

    invoke-direct {v3}, Liqi;-><init>()V

    .line 3213
    invoke-virtual {v3, v2}, Liqi;->c(Ljava/lang/String;)Liqi;

    .line 3214
    new-instance v0, Ldti;

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ldti;-><init>(Ljava/lang/Long;Ljava/lang/String;Liqi;Ljava/lang/String;I)V

    .line 251
    return-object v0

    .line 244
    :cond_1
    invoke-virtual {p1, v0}, Lcvn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static a([BLdoo;Ljava/lang/reflect/Method;)Ldqf;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ldoo;",
            ">([BTT;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ldqf;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 366
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v2, v4

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqf;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :goto_0
    return-object v0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "parseFrom method needs to be public"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 369
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 370
    const-string v0, "Babel_RequestWriter"

    const-string v4, "Protocol buffer parsing failure"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    const-string v0, "Babel_RequestWriter"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x9

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const-string v4, "Babel_RequestWriter"

    const-string v5, "Response: "

    invoke-static {p0}, Laal;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 373
    const-string v4, "babel_debug_protobuf_parse_failure"

    invoke-static {v0, v4, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Protocol buffer parsing failure"

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 372
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 377
    :cond_1
    const-string v0, "Babel_RequestWriter"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1c

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Could not invoke parseFrom: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 378
    goto/16 :goto_0
.end method

.method public static a()Ldth;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Ldth;->a:Ldth;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ldth;

    invoke-direct {v0}, Ldth;-><init>()V

    sput-object v0, Ldth;->a:Ldth;

    .line 84
    invoke-static {}, Ldth;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldth;->b:Ljava/lang/String;

    .line 86
    :cond_0
    sget-object v0, Ldth;->a:Ldth;

    return-object v0
.end method

.method private static a(ILcvn;ZLcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;II)[B
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 4036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 283
    const-class v0, Lhbr;

    invoke-static {v1, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbr;

    .line 284
    if-eqz v0, :cond_4

    .line 4321
    new-instance v3, Lhq;

    invoke-direct {v3}, Lhq;-><init>()V

    .line 4322
    const-string v2, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4323
    if-eqz p1, :cond_2

    .line 4324
    invoke-static {p0}, Ldvd;->e(I)Lbfd;

    move-result-object v2

    .line 4325
    invoke-virtual {v2}, Lbfd;->a()Ljava/lang/String;

    move-result-object v4

    .line 4326
    invoke-virtual {v2}, Lbfd;->y()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4328
    const-string v5, "X-Goog-PageId"

    invoke-virtual {v2}, Lbfd;->U()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4331
    :cond_0
    invoke-virtual {p1, v4}, Lcvn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4332
    const-string v5, "Authorization"

    const-string v6, "Bearer "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4333
    const-string v2, "none"

    .line 4334
    if-eqz v4, :cond_1

    .line 4335
    invoke-virtual {p1, v4}, Lcvn;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 4336
    if-eqz v4, :cond_1

    .line 4337
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4340
    :cond_1
    const-string v4, "X-Auth-Time"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4342
    :cond_2
    const-string v2, "X-Device-ID"

    sget-object v4, Ldth;->b:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4343
    const-string v2, "X-Network-ID"

    invoke-static {}, Lexa;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4344
    const-string v2, "User-Agent"

    invoke-static {}, Laal;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    if-eqz p2, :cond_8

    .line 288
    check-cast p4, Ldnd;

    .line 5050
    iget-object v2, p4, Ldnd;->a:Llyi;

    .line 288
    invoke-static {v2}, Llyi;->a(Llyi;)[B

    move-result-object v4

    .line 5117
    :goto_1
    :try_start_0
    sget-object v2, Ldvp;->d:Ldml;

    invoke-virtual {v2, p0}, Ldml;->b(I)Z

    move-result v2

    .line 291
    if-nez v2, :cond_7

    .line 292
    const/4 v6, 0x3

    .line 294
    :goto_2
    invoke-virtual {p3}, Lcom/google/api/client/http/GenericUrl;->toString()Ljava/lang/String;

    move-result-object v2

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lhbr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;[BII)[B
    :try_end_0
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :goto_3
    return-object v0

    .line 4332
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    invoke-static {v1, v0, v7}, Ldvn;->a(ILjava/lang/Exception;Ljava/lang/String;)Ldvn;

    move-result-object v0

    throw v0

    .line 301
    :cond_4
    new-instance v0, Liqr;

    invoke-direct {v0}, Liqr;-><init>()V

    .line 302
    invoke-static {p0, p1, p5}, Ldth;->a(ILcvn;I)Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v1

    .line 303
    invoke-virtual {v0, v1}, Liqr;->createRequestFactory(Lcom/google/api/client/http/HttpRequestInitializer;)Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v0

    .line 305
    if-eqz p2, :cond_5

    .line 306
    invoke-virtual {v0, p3, p4}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 310
    :goto_4
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v1

    if-nez v1, :cond_6

    .line 313
    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0, v7, v7}, Ldvn;->a(ILjava/lang/Exception;Ljava/lang/String;)Ldvn;

    move-result-object v0

    throw v0

    .line 308
    :cond_5
    invoke-virtual {v0, p3}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    goto :goto_4

    .line 315
    :cond_6
    invoke-static {v0}, Ldth;->a(Lcom/google/api/client/http/HttpResponse;)[B

    move-result-object v0

    goto :goto_3

    :cond_7
    move v6, p6

    goto :goto_2

    :cond_8
    move-object v4, v7

    goto :goto_1
.end method

.method private static a(Lcom/google/api/client/http/HttpResponse;)[B
    .locals 5

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 127
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    .line 131
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 132
    int-to-byte v0, v0

    .line 133
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 134
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    :try_start_2
    const-string v2, "Babel_RequestWriter"

    const-string v3, "Error reading response stream"

    invoke-static {v2, v3, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    new-instance v2, Ldvn;

    const/16 v3, 0x6a

    invoke-direct {v2, v3, v0}, Ldvn;-><init>(ILjava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 146
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 149
    :cond_0
    :goto_1
    throw v0

    .line 142
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 144
    if-eqz v1, :cond_2

    .line 146
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 149
    :cond_2
    :goto_2
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 350
    const-string v0, "none"

    .line 352
    :try_start_0
    invoke-static {}, Lexa;->a()J

    move-result-wide v2

    .line 353
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 5158
    const/16 v4, 0x8

    new-array v4, v4, [B

    .line 5159
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 5160
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v5

    .line 5161
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2, v3}, Ljava/nio/LongBuffer;->put(IJ)Ljava/nio/LongBuffer;

    .line 354
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 355
    invoke-static {v1}, Laal;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/GenericUrl;Ldpf;ILcvn;ZI)Ldqf;
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 112
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 117
    :goto_0
    return-object v5

    .line 1386
    :cond_0
    invoke-virtual {p2}, Ldpf;->n()I

    move-result v6

    .line 1387
    if-eqz v6, :cond_1

    move v1, v2

    .line 1389
    :goto_1
    invoke-static {p3}, Ldvd;->e(I)Lbfd;

    move-result-object v7

    .line 2036
    sget-object v8, Laal;->oJ:Landroid/content/Context;

    .line 1391
    const-class v0, Lawm;

    .line 1392
    invoke-static {v8, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    invoke-interface {v0, p3}, Lawm;->e(I)Ljava/lang/String;

    move-result-object v0

    .line 1393
    invoke-virtual {p2, v0, p6, p3}, Ldpf;->b(Ljava/lang/String;II)Lcom/google/api/client/http/HttpContent;

    move-result-object v4

    .line 1395
    if-eqz v4, :cond_7

    .line 1396
    const-string v0, "babel_server_request_timeout"

    const v5, 0x9c40

    .line 1397
    invoke-static {v8, v0, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 1401
    if-eqz v1, :cond_6

    .line 1402
    invoke-virtual {p2}, Ldpf;->m()Lcom/google/api/client/http/AbstractInputStreamContent;

    move-result-object v0

    .line 1403
    if-nez v0, :cond_2

    .line 1404
    new-instance v0, Ldvn;

    const/16 v1, 0x7a

    invoke-direct {v0, v1}, Ldvn;-><init>(I)V

    throw v0

    :cond_1
    move v1, v3

    .line 1387
    goto :goto_1

    .line 1407
    :cond_2
    if-ne v6, v2, :cond_3

    move v3, v2

    .line 2261
    :cond_3
    new-instance v1, Liqr;

    invoke-direct {v1}, Liqr;-><init>()V

    .line 2262
    invoke-static {p3, p4, v5}, Ldth;->a(ILcvn;I)Lcom/google/api/client/http/HttpRequestInitializer;

    move-result-object v5

    .line 2268
    new-instance v8, Liqk;

    invoke-direct {v8, v0, v1, v5}, Liqk;-><init>(Lcom/google/api/client/http/AbstractInputStreamContent;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/http/HttpRequestInitializer;)V

    .line 2270
    if-eqz v3, :cond_4

    .line 2271
    invoke-virtual {v8}, Liqk;->b()Liqk;

    .line 2273
    :cond_4
    invoke-virtual {v8, v4}, Liqk;->a(Lcom/google/api/client/http/HttpContent;)Liqk;

    .line 2274
    invoke-virtual {v8, p1}, Liqk;->a(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpResponse;

    move-result-object v0

    .line 2275
    invoke-static {v0}, Ldth;->a(Lcom/google/api/client/http/HttpResponse;)[B

    move-result-object v1

    .line 1410
    if-ne v6, v2, :cond_5

    .line 1411
    const/16 v0, 0x854

    .line 1413
    :goto_2
    invoke-static {v7, v0}, Laal;->a(Lbfd;I)V

    .line 2423
    :goto_3
    sget-object v0, Lcom/google/android/apps/hangouts/requestwriter/RequestWriter;->h:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leev;

    .line 2424
    iget-object v0, v0, Leev;->b:Ljava/lang/reflect/Method;

    invoke-static {v1, p2, v0}, Ldth;->a([BLdoo;Ljava/lang/reflect/Method;)Ldqf;

    move-result-object v5

    goto :goto_0

    .line 1412
    :cond_5
    const/16 v0, 0x855

    goto :goto_2

    .line 1416
    :cond_6
    invoke-virtual {p2}, Ldpf;->l()I

    move-result v6

    move v0, p3

    move-object v1, p4

    move v2, p5

    move-object v3, p1

    .line 1415
    invoke-static/range {v0 .. v6}, Ldth;->a(ILcvn;ZLcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;II)[B

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    :cond_7
    move-object v1, v5

    goto :goto_3
.end method
