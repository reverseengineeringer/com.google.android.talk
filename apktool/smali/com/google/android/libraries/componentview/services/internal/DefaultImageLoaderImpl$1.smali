.class Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llat",
        "<",
        "Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Llbl;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;Llbl;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->c:Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;

    iput-object p2, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->a:Llbl;

    iput-object p3, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;)V
    .locals 3

    .prologue
    .line 63
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->c:Z

    if-nez v0, :cond_1

    .line 64
    :cond_0
    const-string v0, "DefaultImageLoaderImpl"

    const-string v1, "Fetch failed with no response"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->a:Llbl;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fetch failed with no response"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Llbl;->a(Ljava/lang/Throwable;)Z

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->c:Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;

    iget-object v1, p1, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;->b:[B

    iget-object v2, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->b:Landroid/widget/ImageView;

    .line 1029
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->b([BLandroid/widget/ImageView;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->a:Llbl;

    new-instance v1, Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;

    invoke-direct {v1}, Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;-><init>()V

    invoke-virtual {v0, v1}, Llbl;->b(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->a(Lcom/google/android/libraries/componentview/services/application/Fetcher$Response;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 74
    const-string v0, "DefaultImageLoaderImpl"

    const-string v1, "Fetch failed for url"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;->a:Llbl;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fetch failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Llbl;->a(Ljava/lang/Throwable;)Z

    .line 76
    return-void
.end method
