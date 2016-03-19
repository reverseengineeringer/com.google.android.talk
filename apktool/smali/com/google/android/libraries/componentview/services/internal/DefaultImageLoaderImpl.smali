.class public Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/services/internal/ImageLoader;


# instance fields
.field private final a:Lcom/google/android/libraries/componentview/services/application/Fetcher;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/componentview/services/application/Fetcher;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)V
    .locals 0
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/google/android/libraries/componentview/inject/annotations/ExecutorType$BACKGROUND;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->a:Lcom/google/android/libraries/componentview/services/application/Fetcher;

    .line 42
    iput-object p2, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->b:Ljava/util/concurrent/ExecutorService;

    .line 43
    iput-object p3, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->c:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;)Llbb;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/ImageView;",
            ")",
            "Llbb",
            "<",
            "Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-string v0, "data:image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "base64,"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 52
    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 53
    invoke-virtual {p0, v0, p2}, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->a([BLandroid/widget/ImageView;)Llbb;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    .line 1041
    :cond_0
    new-instance v0, Llbl;

    invoke-direct {v0}, Llbl;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->a:Lcom/google/android/libraries/componentview/services/application/Fetcher;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/componentview/services/application/Fetcher;->a(Ljava/net/URI;Z)Llbb;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl$1;-><init>(Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;Llbl;Landroid/widget/ImageView;)V

    iget-object v3, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2, v3}, Llau;->a(Llbb;Llat;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public a([BLandroid/widget/ImageView;)Llbb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Landroid/widget/ImageView;",
            ")",
            "Llbb",
            "<",
            "Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2041
    new-instance v0, Llbl;

    invoke-direct {v0}, Llbl;-><init>()V

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->b([BLandroid/widget/ImageView;)V

    .line 86
    new-instance v1, Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;

    invoke-direct {v1}, Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;-><init>()V

    invoke-virtual {v0, v1}, Llbl;->b(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method b([BLandroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/componentview/core/Utils;->a(Landroid/content/Context;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/libraries/componentview/core/Utils;->a([BF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 94
    return-void
.end method
