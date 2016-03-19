.class public final Liqr;
.super Lcom/google/api/client/http/HttpTransport;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Liqn;

.field private final c:Ljavax/net/ssl/SSLSocketFactory;

.field private final d:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "OPTIONS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "POST"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PUT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TRACE"

    aput-object v2, v0, v1

    .line 76
    sput-object v0, Liqr;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Liqr;-><init>(B)V

    .line 97
    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/google/api/client/http/HttpTransport;-><init>()V

    .line 121
    new-instance v0, Liqn;

    invoke-direct {v0}, Liqn;-><init>()V

    iput-object v0, p0, Liqr;->b:Liqn;

    .line 122
    iput-object v1, p0, Liqr;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 123
    iput-object v1, p0, Liqr;->d:Ljavax/net/ssl/HostnameVerifier;

    .line 124
    return-void
.end method


# virtual methods
.method protected synthetic buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;
    .locals 4

    .prologue
    .line 1133
    invoke-virtual {p0, p1}, Liqr;->supportsMethod(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "HTTP method %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2069
    invoke-static {v0, v1, v2}, Lfii;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1135
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Liqr;->b:Liqn;

    invoke-virtual {v1, v0}, Liqn;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 1137
    invoke-virtual {v1, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1139
    instance-of v0, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1140
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 1141
    iget-object v2, p0, Liqr;->d:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_0

    .line 1142
    iget-object v2, p0, Liqr;->d:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 1144
    :cond_0
    iget-object v2, p0, Liqr;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    .line 1145
    iget-object v2, p0, Liqr;->c:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1148
    :cond_1
    new-instance v0, Liqo;

    invoke-direct {v0, v1}, Liqo;-><init>(Ljava/net/HttpURLConnection;)V

    .line 62
    return-object v0
.end method

.method public supportsMethod(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 128
    sget-object v0, Liqr;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
