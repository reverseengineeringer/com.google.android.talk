.class public final Lhha;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/api/client/http/HttpResponse;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2042
    iput-object p1, p0, Lhha;->a:Lcom/google/api/client/http/HttpResponse;

    .line 2043
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lhha;->a:Lcom/google/api/client/http/HttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lhha;->a:Lcom/google/api/client/http/HttpResponse;

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/http/HttpHeaders;->getFirstHeaderStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
