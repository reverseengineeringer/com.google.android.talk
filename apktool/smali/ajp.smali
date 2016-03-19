.class public final Lajp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajf",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lajq;


# instance fields
.field private final b:Laot;

.field private final c:I

.field private final d:Lajq;

.field private e:Ljava/net/HttpURLConnection;

.field private f:Ljava/io/InputStream;

.field private volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lajq;

    .line 3169
    invoke-direct {v0}, Lajq;-><init>()V

    .line 28
    sput-object v0, Lajp;->a:Lajq;

    return-void
.end method

.method public constructor <init>(Laot;)V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lajp;->a:Lajq;

    invoke-direct {p0, p1, v0}, Lajp;-><init>(Laot;Lajq;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Laot;Lajq;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lajp;->b:Laot;

    .line 46
    const/16 v0, 0x9c4

    iput v0, p0, Lajp;->c:I

    .line 47
    iput-object p2, p0, Lajp;->d:Lajq;

    .line 48
    return-void
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "I",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    move-object v2, p1

    .line 74
    :goto_0
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 75
    new-instance v0, Laiv;

    const-string v1, "Too many (> 5) redirects!"

    invoke-direct {v0, v1}, Laiv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Laiv;

    const-string v1, "In re-direct loop"

    invoke-direct {v0, v1}, Laiv;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 1172
    :cond_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 89
    iput-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    .line 90
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 91
    iget-object v4, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_2
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lajp;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    iget v1, p0, Lajp;->c:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 95
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 96
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 99
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 100
    iget-boolean v0, p0, Lajp;->g:Z

    if-eqz v0, :cond_3

    .line 101
    const/4 v0, 0x0

    .line 105
    :goto_2
    return-object v0

    .line 103
    :cond_3
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 104
    div-int/lit8 v1, v0, 0x64

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    .line 105
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    .line 2122
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2123
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    .line 2124
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    int-to-long v2, v1

    .line 3026
    new-instance v1, Lavk;

    invoke-direct {v1, v0, v2, v3}, Lavk;-><init>(Ljava/io/InputStream;J)V

    .line 2124
    iput-object v1, p0, Lajp;->f:Ljava/io/InputStream;

    .line 2131
    :goto_3
    iget-object v0, p0, Lajp;->f:Ljava/io/InputStream;

    goto :goto_2

    .line 2126
    :cond_4
    const-string v1, "HttpUrlFetcher"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2127
    const-string v1, "Got non empty content encoding: "

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2129
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lajp;->f:Ljava/io/InputStream;

    goto :goto_3

    .line 2127
    :cond_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 106
    :cond_7
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v5, :cond_9

    .line 107
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 109
    new-instance v0, Laiv;

    const-string v1, "Received empty or null redirect url"

    invoke-direct {v0, v1}, Laiv;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_8
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 112
    add-int/lit8 p2, p2, 0x1

    move-object p3, v2

    move-object v2, p1

    goto/16 :goto_0

    .line 113
    :cond_9
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 114
    new-instance v1, Laiv;

    invoke-direct {v1, v0}, Laiv;-><init>(I)V

    throw v1

    .line 116
    :cond_a
    new-instance v1, Laiv;

    iget-object v2, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Laiv;-><init>(Ljava/lang/String;I)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lajp;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lajp;->f:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lajp;->e:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 146
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lahs;Lajg;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahs;",
            "Lajg",
            "<-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lavm;->a()J

    move-result-wide v0

    .line 55
    :try_start_0
    iget-object v2, p0, Lajp;->b:Laot;

    invoke-virtual {v2}, Laot;->a()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lajp;->b:Laot;

    .line 56
    invoke-virtual {v5}, Laot;->b()Ljava/util/Map;

    move-result-object v5

    .line 55
    invoke-direct {p0, v2, v3, v4, v5}, Lajp;->a(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 65
    const-string v3, "HttpUrlFetcher"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-static {v0, v1}, Lavm;->a(J)D

    move-result-wide v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4a

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Finished http url fetcher fetch in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms and loaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_0
    invoke-interface {p2, v2}, Lajg;->a(Ljava/lang/Object;)V

    .line 70
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 61
    invoke-interface {p2, v0}, Lajg;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lajp;->g:Z

    .line 153
    return-void
.end method

.method public c()Lair;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lair;->b:Lair;

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
