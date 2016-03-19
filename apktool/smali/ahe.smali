.class public final Lahe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lago;


# static fields
.field public static final a:Z

.field private static d:I

.field private static e:I


# instance fields
.field public final b:Lahi;

.field public final c:Lahf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lahb;->b:Z

    sput-boolean v0, Lahe;->a:Z

    .line 59
    const/16 v0, 0xbb8

    sput v0, Lahe;->d:I

    .line 61
    const/16 v0, 0x1000

    sput v0, Lahe;->e:I

    return-void
.end method

.method public constructor <init>(Lahi;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Lahf;

    sget v1, Lahe;->e:I

    invoke-direct {v0, v1}, Lahf;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lahe;-><init>(Lahi;Lahf;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Lahi;Lahf;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lahe;->b:Lahi;

    .line 82
    iput-object p2, p0, Lahe;->c:Lahf;

    .line 83
    return-void
.end method

.method private static a([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 261
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 262
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/lang/String;Lagr;Laha;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lagr",
            "<*>;",
            "Laha;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 192
    invoke-virtual {p1}, Lagr;->m()Lagz;

    move-result-object v0

    .line 2513
    iget-object v1, p1, Lagr;->d:Lagz;

    invoke-virtual {v1}, Lagz;->a()I

    move-result v1

    .line 196
    :try_start_0
    invoke-virtual {v0, p2}, Lagz;->a(Laha;)V
    :try_end_0
    .catch Laha; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lagr;->a(Ljava/lang/String;)V

    .line 203
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lagr;->a(Ljava/lang/String;)V

    .line 200
    throw v0
.end method

.method private a(Lorg/apache/http/HttpEntity;)[B
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 228
    new-instance v2, Lahj;

    iget-object v0, p0, Lahe;->c:Lahf;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-direct {v2, v0, v1}, Lahj;-><init>(Lahf;I)V

    .line 230
    const/4 v1, 0x0

    .line 232
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    .line 234
    new-instance v0, Laha;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Laha;-><init>(C)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :catchall_0
    move-exception v0

    .line 245
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 251
    :goto_0
    iget-object v3, p0, Lahe;->c:Lahf;

    invoke-virtual {v3, v1}, Lahf;->a([B)V

    .line 252
    invoke-virtual {v2}, Lahj;->close()V

    throw v0

    .line 236
    :cond_0
    :try_start_2
    iget-object v3, p0, Lahe;->c:Lahf;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lahf;->a(I)[B

    move-result-object v1

    .line 238
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 239
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lahj;->write([BII)V

    goto :goto_1

    .line 241
    :cond_1
    invoke-virtual {v2}, Lahj;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 245
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 251
    :goto_2
    iget-object v3, p0, Lahe;->c:Lahf;

    invoke-virtual {v3, v1}, Lahf;->a([B)V

    .line 252
    invoke-virtual {v2}, Lahj;->close()V

    return-object v0

    .line 249
    :catch_0
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lahb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v3, "Error occured when calling consumingContent"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lahb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lagr;)Lagq;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lagr",
            "<*>;)",
            "Lagq;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 89
    :goto_0
    const/4 v3, 0x0

    .line 90
    const/4 v14, 0x0

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 94
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-virtual/range {p1 .. p1}, Lagr;->e()Lagj;

    move-result-object v4

    .line 1207
    if-eqz v4, :cond_1

    .line 1211
    iget-object v5, v4, Lagj;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1212
    const-string v5, "If-None-Match"

    iget-object v7, v4, Lagj;->b:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    :cond_0
    iget-wide v8, v4, Lagj;->d:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    .line 1216
    new-instance v5, Ljava/util/Date;

    iget-wide v8, v4, Lagj;->d:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 1217
    const-string v4, "If-Modified-Since"

    invoke-static {v5}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lahe;->b:Lahi;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v2}, Lahi;->a(Lagr;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v15

    .line 97
    :try_start_1
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 98
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 100
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Lahe;->a([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v6

    .line 102
    const/16 v2, 0x130

    if-ne v4, v2, :cond_3

    .line 104
    invoke-virtual/range {p1 .. p1}, Lagr;->e()Lagj;

    move-result-object v2

    .line 105
    if-nez v2, :cond_2

    .line 106
    new-instance v3, Lagq;

    const/16 v4, 0x130

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lagq;-><init>(I[BLjava/util/Map;ZJ)V

    .line 137
    :goto_1
    return-object v3

    .line 115
    :cond_2
    iget-object v3, v2, Lagj;->g:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 116
    new-instance v7, Lagq;

    const/16 v8, 0x130

    iget-object v9, v2, Lagj;->a:[B

    iget-object v10, v2, Lagj;->g:Ljava/util/Map;

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v2, v16

    invoke-direct/range {v7 .. v13}, Lagq;-><init>(I[BLjava/util/Map;ZJ)V

    move-object v3, v7

    goto :goto_1

    .line 122
    :cond_3
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 123
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lahe;->a(Lorg/apache/http/HttpEntity;)[B
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 131
    :goto_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    .line 2177
    sget-boolean v2, Lahe;->a:Z

    if-nez v2, :cond_4

    sget v2, Lahe;->d:I

    int-to-long v10, v2

    cmp-long v2, v8, v10

    if-lez v2, :cond_5

    .line 2178
    :cond_4
    const-string v7, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v2, 0x5

    new-array v10, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v10, v2

    const/4 v2, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v2

    const/4 v8, 0x2

    if-eqz v5, :cond_8

    array-length v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    aput-object v2, v10, v8

    const/4 v2, 0x3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    const/4 v2, 0x4

    invoke-virtual/range {p1 .. p1}, Lagr;->m()Lagz;

    move-result-object v3

    invoke-virtual {v3}, Lagz;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v2

    invoke-static {v7, v10}, Lahb;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_5
    const/16 v2, 0xc8

    if-lt v4, v2, :cond_6

    const/16 v2, 0x12b

    if-le v4, v2, :cond_9

    .line 135
    :cond_6
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 140
    :catch_0
    move-exception v2

    const-string v2, "socket"

    new-instance v3, Laha;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Laha;-><init>(S)V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lahe;->a(Ljava/lang/String;Lagr;Laha;)V

    goto/16 :goto_0

    .line 127
    :cond_7
    const/4 v2, 0x0

    :try_start_3
    new-array v5, v2, [B
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_2

    .line 2178
    :cond_8
    :try_start_4
    const-string v2, "null"

    goto :goto_3

    .line 137
    :cond_9
    new-instance v3, Lagq;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lagq;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 142
    :catch_1
    move-exception v2

    const-string v2, "connection"

    new-instance v3, Laha;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Laha;-><init>(S)V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lahe;->a(Ljava/lang/String;Lagr;Laha;)V

    goto/16 :goto_0

    .line 143
    :catch_2
    move-exception v2

    .line 144
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bad URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lagr;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 145
    :catch_3
    move-exception v2

    move-object v5, v14

    .line 148
    :goto_4
    if-eqz v3, :cond_b

    .line 149
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 153
    const-string v2, "Unexpected response code %d for %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lagr;->c()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v2, v3}, Lahb;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    if-eqz v5, :cond_d

    .line 155
    new-instance v3, Lagq;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-direct/range {v3 .. v9}, Lagq;-><init>(I[BLjava/util/Map;ZJ)V

    .line 157
    const/16 v2, 0x191

    if-eq v4, v2, :cond_a

    const/16 v2, 0x193

    if-ne v4, v2, :cond_c

    .line 159
    :cond_a
    const-string v2, "auth"

    new-instance v4, Lagh;

    invoke-direct {v4, v3}, Lagh;-><init>(Lagq;)V

    move-object/from16 v0, p1

    invoke-static {v2, v0, v4}, Lahe;->a(Ljava/lang/String;Lagr;Laha;)V

    goto/16 :goto_0

    .line 151
    :cond_b
    new-instance v3, Laha;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Laha;-><init>(Ljava/lang/Throwable;C)V

    throw v3

    .line 163
    :cond_c
    new-instance v2, Laha;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Laha;-><init>(Lagq;B)V

    throw v2

    .line 166
    :cond_d
    new-instance v2, Laha;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Laha;-><init>(B)V

    throw v2

    .line 145
    :catch_4
    move-exception v2

    move-object v5, v14

    move-object v3, v15

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v3, v15

    goto :goto_4
.end method
