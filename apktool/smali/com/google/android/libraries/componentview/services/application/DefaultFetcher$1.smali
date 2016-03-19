.class Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URI;

.field final synthetic b:[B

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;Ljava/net/URI;[BZ)V
    .locals 1

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->d:Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;

    iput-object p2, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->a:Ljava/net/URI;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->b:[B

    iput-boolean p4, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->d:Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;

    iget-object v1, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->b:[B

    iget-boolean v3, p0, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->c:Z

    .line 1031
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher;->a(Ljava/net/URI;[BZ)Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/android/libraries/componentview/services/application/DefaultFetcher$1;->a()Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;

    move-result-object v0

    return-object v0
.end method
