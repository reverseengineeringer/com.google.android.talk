.class public final Lgaf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:Landroid/content/Context;

.field private e:Ljavax/net/ssl/HostnameVerifier;

.field private f:Lgai;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/4 v1, 0x0

    const v3, 0xea60

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lgaf;->a:I

    iput v3, p0, Lgaf;->b:I

    iput-object p1, p0, Lgaf;->d:Landroid/content/Context;

    new-instance v0, Lgai;

    iget-object v2, p0, Lgaf;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Lgai;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgaf;->f:Lgai;

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lgaf;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lgaf;->c:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p0, Lgaf;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v0, v2, :cond_0

    new-instance v1, Landroid/net/SSLSessionCache;

    invoke-direct {v1, p1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-static {v3, v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lgaf;->c:Ljavax/net/ssl/SSLSocketFactory;

    :cond_1
    new-instance v0, Lgag;

    invoke-direct {v0, p0}, Lgag;-><init>(Lgaf;)V

    iput-object v0, p0, Lgaf;->e:Ljavax/net/ssl/HostnameVerifier;

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lgaf;->d:Landroid/content/Context;

    invoke-static {v0}, Lfhr;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.android.gms.common.net.SSLCertificateSocketFactory"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDefaultWithSessionCache"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, 0xea60

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lgaf;->d:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/net/URL;Landroid/net/Network;)Ljava/net/HttpURLConnection;
    .locals 3

    .prologue
    .line 0
    invoke-static {p1}, Laal;->d(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lgaf;->f:Lgai;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgai;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "block"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Blocked by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Larw;

    invoke-direct {v1, v0}, Larw;-><init>(Landroid/os/Bundle;)V

    throw v1

    :cond_0
    const-string v1, "rewrite"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "GoogleURLConnFactory"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rewrote "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1000
    iget v0, p0, Lgaf;->b:I

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lgaf;->a:I

    invoke-virtual {v1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgaf;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lgaf;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_4
    iget-object v0, p0, Lgaf;->e:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lgaf;->e:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 0
    :cond_5
    check-cast v1, Ljava/net/HttpURLConnection;

    return-object v1
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lgaf;->f:Lgai;

    invoke-virtual {v0, p1, p2}, Lgai;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public close()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
