.class public Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/services/application/Fetcher;


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Llbd;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->c:Landroid/content/Context;

    .line 46
    invoke-static {p2}, Laal;->a(Ljava/util/concurrent/ExecutorService;)Llbd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->b:Llbd;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->c:Landroid/content/Context;

    return-object v0
.end method

.method a(Ljava/net/URI;[BZ)Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 84
    :try_start_0
    new-instance v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;

    invoke-direct {v8}, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;-><init>()V

    .line 1139
    if-nez p1, :cond_2

    move-object v1, v4

    .line 87
    :cond_0
    :goto_0
    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 89
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v2, v3

    .line 122
    :goto_1
    :try_start_1
    invoke-static {v2}, Lkyz;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 123
    iput-object v1, v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->b:[B

    .line 124
    iput-object v4, v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->a:Ljava/nio/charset/Charset;

    .line 125
    if-eqz v1, :cond_b

    move v1, v5

    :goto_2
    iput-boolean v1, v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 128
    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object v8

    .line 1142
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1143
    const-string v2, "file:/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1144
    const-string v2, "file:///"

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v1

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_4

    .line 129
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_4
    throw v1

    .line 92
    :cond_5
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->a(Ljava/net/URI;)Ljava/net/URLConnection;

    move-result-object v2

    .line 93
    const-string v1, "User-Agent"

    const-string v3, "Mozilla/5.0 (Linux; Android 5.0; Nexus 5 Build/LRX21N) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/37.0.0.0 Mobile Safari/537.36 GSA/4.1.3.1531624.arm,gzip(gfe)"

    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_c

    .line 98
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 99
    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move v7, v5

    .line 101
    :goto_4
    if-eqz p2, :cond_6

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 103
    invoke-virtual {v2}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 105
    :cond_6
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 106
    :try_start_4
    sget-object v4, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->a:Ljava/nio/charset/Charset;

    .line 107
    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 108
    if-eqz v9, :cond_7

    .line 109
    const-string v10, "charset="

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 110
    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    .line 111
    add-int/lit8 v4, v10, 0x8

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    .line 115
    :cond_7
    if-eqz v7, :cond_9

    .line 116
    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->d:I

    .line 117
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->e:Ljava/util/Map;

    .line 118
    iget-object v2, v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->e:Ljava/util/Map;

    .line 1154
    const-string v1, "Location"

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Location"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_a

    .line 1155
    :cond_8
    const-string v1, ""

    .line 118
    :goto_5
    iput-object v1, v8, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->f:Ljava/lang/String;

    :cond_9
    move-object v2, v3

    goto/16 :goto_1

    .line 1158
    :cond_a
    const-string v1, "Location"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    :cond_b
    move v1, v6

    .line 125
    goto/16 :goto_2

    .line 128
    :catchall_1
    move-exception v1

    move-object v2, v3

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    goto/16 :goto_3

    :cond_c
    move-object v1, v4

    move v7, v6

    goto :goto_4
.end method

.method protected a(Ljava/net/URI;)Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/net/URI;Z)Llbb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llbb",
            "<",
            "Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->b:Llbd;

    new-instance v1, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2, p2}, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;-><init>(Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;Ljava/net/URI;[BZ)V

    .line 62
    invoke-interface {v0, v1}, Llbd;->a(Ljava/util/concurrent/Callable;)Llbb;

    move-result-object v0

    .line 69
    const-class v1, Ljava/lang/Throwable;

    new-instance v2, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$2;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$2;-><init>(Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;)V

    iget-object v3, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->b:Llbd;

    invoke-static {v0, v1, v2, v3}, Llau;->a(Llbb;Ljava/lang/Class;Llap;Ljava/util/concurrent/Executor;)Llbb;

    move-result-object v0

    return-object v0
.end method
