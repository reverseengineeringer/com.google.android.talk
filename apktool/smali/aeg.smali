.class public final Laeg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1344
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2326
    if-nez v0, :cond_4

    .line 2327
    const/4 v0, 0x0

    .line 1345
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1346
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1348
    if-eqz v0, :cond_1

    .line 1349
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1312
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1313
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_2
    const-string v0, "en-US"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    sput-object v0, Laeg;->b:Ljava/lang/String;

    .line 68
    const-string v0, "##(\\S+)##"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Laeg;->c:Ljava/util/regex/Pattern;

    .line 267
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Laeg;->a:[C

    return-void

    .line 2329
    :cond_4
    const-string v3, "iw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2331
    const-string v0, "he"

    goto :goto_0

    .line 2332
    :cond_5
    const-string v3, "in"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2334
    const-string v0, "id"

    goto :goto_0

    .line 2335
    :cond_6
    const-string v3, "ji"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2337
    const-string v0, "yi"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 363
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-object p0

    .line 366
    :cond_1
    sget-object v0, Laeg;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 367
    const/4 v1, 0x0

    .line 368
    const/4 v0, 0x0

    .line 369
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 370
    if-nez v0, :cond_2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    :cond_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 374
    if-le v3, v1, :cond_3

    .line 375
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {}, Laei;->a()Laei;

    move-result-object v3

    invoke-virtual {v3, v1}, Laei;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    if-eqz v1, :cond_4

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    goto :goto_1

    .line 384
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 385
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 282
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 284
    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/lang/String;IZ)[B
    .locals 13

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "URL must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    const/4 v4, 0x0

    .line 102
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v2

    const-string v6, "http"

    invoke-direct {v5, v3, v2, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1288
    invoke-static {}, Laei;->a()Laei;

    move-result-object v2

    invoke-virtual {v2}, Laei;->g()Ljava/lang/String;

    move-result-object v2

    .line 1289
    move/from16 v0, p7

    invoke-static {v2, p0, v0}, Laej;->a(Ljava/lang/String;Landroid/content/Context;Z)Laej;

    move-result-object v3

    .line 1290
    invoke-virtual {v3}, Laej;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 1291
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 1294
    invoke-static {}, Laei;->a()Laei;

    move-result-object v6

    invoke-virtual {v6}, Laei;->o()I

    move-result v6

    .line 1295
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 108
    packed-switch p3, :pswitch_data_0

    .line 261
    invoke-virtual {v3}, Laej;->a()V

    const/4 v2, 0x0

    .line 264
    :goto_0
    return-object v2

    .line 110
    :pswitch_0
    :try_start_1
    new-instance v4, Laer;

    const-wide/16 v6, -0x1

    invoke-direct {v4, p0, v6, v7, p2}, Laer;-><init>(Landroid/content/Context;J[B)V

    .line 113
    const-string v2, "application/vnd.wap.mms-message"

    invoke-virtual {v4, v2}, Laer;->setContentType(Ljava/lang/String;)V

    .line 115
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v8, v2

    .line 127
    :goto_1
    invoke-virtual {v3}, Laej;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 128
    if-eqz p4, :cond_1

    .line 129
    new-instance v4, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v4, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v4}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 132
    :cond_1
    invoke-interface {v8, v2}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 135
    const-string v2, "Accept"

    const-string v4, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v8, v2, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Laei;->a()Laei;

    move-result-object v2

    invoke-virtual {v2}, Laei;->h()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {}, Laei;->a()Laei;

    move-result-object v4

    invoke-virtual {v4}, Laei;->i()Ljava/lang/String;

    move-result-object v4

    .line 140
    if-eqz v4, :cond_2

    .line 141
    invoke-interface {v8, v2, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_2
    invoke-static {}, Laei;->a()Laei;

    move-result-object v2

    invoke-virtual {v2}, Laei;->j()Ljava/lang/String;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_4

    .line 156
    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 157
    array-length v6, v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_4

    aget-object v7, v4, v2

    .line 158
    const-string v9, ":"

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 159
    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 160
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 161
    const/4 v10, 0x1

    aget-object v7, v7, v10

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Laeg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 162
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 163
    invoke-interface {v8, v9, v7}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 120
    :pswitch_1
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v8, v2

    .line 121
    goto :goto_1

    .line 168
    :cond_4
    const-string v2, "Accept-Language"

    sget-object v4, Laeg;->b:Ljava/lang/String;

    invoke-interface {v8, v2, v4}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v3, v5, v8}, Laej;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 171
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 172
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v10

    .line 173
    const/4 v2, 0x0

    .line 174
    if-eqz v10, :cond_b

    .line 176
    :try_start_2
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 177
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v2, v2, [B

    .line 178
    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    :cond_5
    :goto_3
    :try_start_5
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 190
    invoke-static {}, Laei;->a()Laei;

    move-result-object v4

    invoke-virtual {v4}, Laei;->e()I

    move-result v7

    .line 191
    new-array v11, v7, [B

    .line 192
    new-instance v12, Ljava/io/DataInputStream;

    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 194
    const/4 v6, 0x0

    .line 195
    const/4 v5, 0x0

    .line 196
    const/4 v4, 0x0

    .line 199
    :cond_6
    :try_start_6
    invoke-virtual {v12, v11, v5, v7}, Ljava/io/DataInputStream;->read([BII)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v6

    .line 204
    if-lez v6, :cond_7

    .line 205
    sub-int/2addr v7, v6

    .line 206
    add-int/2addr v5, v6

    .line 208
    :cond_7
    if-ltz v6, :cond_8

    if-gtz v7, :cond_6

    .line 209
    :cond_8
    :goto_4
    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    if-lez v5, :cond_9

    if-nez v4, :cond_9

    .line 212
    :try_start_7
    new-array v2, v5, [B

    .line 213
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v11, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 219
    :cond_9
    :try_start_8
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 226
    :cond_a
    :goto_5
    if-eqz v10, :cond_b

    .line 227
    :try_start_9
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 231
    :cond_b
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_12

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    if-eqz v2, :cond_c

    .line 234
    const-string v5, "response: text="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :cond_c
    invoke-interface {v8}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v6, :cond_10

    aget-object v7, v5, v2

    .line 237
    if-eqz v7, :cond_d

    .line 238
    const-string v8, "header: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 239
    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x3d

    .line 240
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 241
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    .line 242
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 236
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 182
    :catchall_0
    move-exception v2

    .line 183
    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 186
    :goto_7
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 226
    :catchall_1
    move-exception v2

    if-eqz v10, :cond_e

    .line 227
    :try_start_c
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_e
    throw v2
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 249
    :catch_0
    move-exception v2

    :goto_8
    :try_start_d
    invoke-static {v2}, Laeg;->a(Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 260
    if-eqz v3, :cond_f

    .line 261
    invoke-virtual {v3}, Laej;->a()V

    .line 264
    :cond_f
    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 201
    :catch_1
    move-exception v4

    const/4 v4, 0x1

    .line 202
    goto/16 :goto_4

    .line 218
    :catchall_2
    move-exception v2

    .line 219
    :try_start_e
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 222
    :goto_a
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 245
    :cond_10
    :try_start_10
    new-instance v4, Ljava/io/IOException;

    const-string v5, "HTTP error: "

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 251
    :catch_2
    move-exception v2

    :goto_c
    :try_start_11
    invoke-static {v2}, Laeg;->a(Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 260
    if-eqz v3, :cond_f

    .line 261
    invoke-virtual {v3}, Laej;->a()V

    goto :goto_9

    .line 245
    :cond_11
    :try_start_12
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/net/SocketException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto :goto_b

    .line 253
    :catch_3
    move-exception v2

    :goto_d
    :try_start_13
    invoke-static {v2}, Laeg;->a(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 260
    if-eqz v3, :cond_f

    .line 261
    invoke-virtual {v3}, Laej;->a()V

    goto :goto_9

    :cond_12
    invoke-virtual {v3}, Laej;->a()V

    goto/16 :goto_0

    .line 255
    :catch_4
    move-exception v2

    move-object v3, v4

    :goto_e
    :try_start_14
    invoke-static {v2}, Laeg;->a(Ljava/lang/Exception;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 260
    if-eqz v3, :cond_f

    .line 261
    invoke-virtual {v3}, Laej;->a()V

    goto :goto_9

    .line 257
    :catch_5
    move-exception v2

    move-object v3, v4

    :goto_f
    :try_start_15
    invoke-static {v2}, Laeg;->a(Ljava/lang/Exception;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 260
    if-eqz v3, :cond_f

    .line 261
    invoke-virtual {v3}, Laej;->a()V

    goto :goto_9

    .line 260
    :catchall_3
    move-exception v2

    move-object v3, v4

    :goto_10
    if-eqz v3, :cond_13

    .line 261
    invoke-virtual {v3}, Laej;->a()V

    :cond_13
    throw v2

    .line 187
    :catch_6
    move-exception v4

    goto/16 :goto_3

    :catch_7
    move-exception v4

    goto :goto_7

    .line 223
    :catch_8
    move-exception v4

    goto/16 :goto_5

    :catch_9
    move-exception v4

    goto :goto_a

    .line 260
    :catchall_4
    move-exception v2

    goto :goto_10

    .line 257
    :catch_a
    move-exception v2

    goto :goto_f

    .line 255
    :catch_b
    move-exception v2

    goto :goto_e

    .line 253
    :catch_c
    move-exception v2

    move-object v3, v4

    goto :goto_d

    .line 251
    :catch_d
    move-exception v2

    move-object v3, v4

    goto :goto_c

    .line 249
    :catch_e
    move-exception v2

    move-object v3, v4

    goto/16 :goto_8

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
