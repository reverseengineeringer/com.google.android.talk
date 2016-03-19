.class public final Lipz;
.super Liqb;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;
    .annotation runtime Lisd;
        a = "refresh_token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 94
    const-string v0, "refresh_token"

    invoke-direct {p0, p1, p2, p3, v0}, Liqb;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;Ljava/lang/String;)V

    .line 2127
    invoke-static {p4}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1137
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lipz;->c:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)Lipz;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Liqb;->a(Ljava/lang/String;Ljava/lang/Object;)Liqb;

    move-result-object v0

    check-cast v0, Lipz;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lipz;
    .locals 1

    .prologue
    .line 120
    invoke-super {p0, p1}, Liqb;->b(Lcom/google/api/client/http/HttpExecuteInterceptor;)Liqb;

    move-result-object v0

    check-cast v0, Lipz;

    return-object v0
.end method

.method public a(Lcom/google/api/client/http/HttpRequestInitializer;)Lipz;
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1}, Liqb;->b(Lcom/google/api/client/http/HttpRequestInitializer;)Liqb;

    move-result-object v0

    check-cast v0, Lipz;

    return-object v0
.end method

.method public synthetic a(Lcom/google/api/client/http/GenericUrl;)Liqb;
    .locals 1

    .prologue
    .line 4105
    invoke-super {p0, p1}, Liqb;->a(Lcom/google/api/client/http/GenericUrl;)Liqb;

    move-result-object v0

    check-cast v0, Lipz;

    .line 80
    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Liqb;
    .locals 1

    .prologue
    .line 3115
    invoke-super {p0, p1}, Liqb;->a(Ljava/lang/String;)Liqb;

    move-result-object v0

    check-cast v0, Lipz;

    .line 80
    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;Ljava/lang/Object;)Liqb;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lipz;->b(Ljava/lang/String;Ljava/lang/Object;)Lipz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/api/client/http/HttpExecuteInterceptor;)Liqb;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lipz;->a(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lipz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/api/client/http/HttpRequestInitializer;)Liqb;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lipz;->a(Lcom/google/api/client/http/HttpRequestInitializer;)Lipz;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lipz;->b(Ljava/lang/String;Ljava/lang/Object;)Lipz;

    move-result-object v0

    return-object v0
.end method
