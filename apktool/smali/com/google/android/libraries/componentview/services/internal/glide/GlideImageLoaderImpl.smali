.class public Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/services/internal/ImageLoader;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/componentview/services/application/Fetcher;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)V
    .locals 0
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/google/android/libraries/componentview/inject/annotations/ExecutorType$BACKGROUND;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    sput-object p1, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$Factory;->a:Lcom/google/android/libraries/componentview/services/application/Fetcher;

    .line 1068
    sput-object p2, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$Factory;->b:Ljava/util/concurrent/ExecutorService;

    .line 73
    iput-object p3, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;->a:Landroid/content/Context;

    .line 74
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/widget/ImageView;)Llbb;
    .locals 3
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
    .line 2041
    new-instance v1, Llbl;

    invoke-direct {v1}, Llbl;-><init>()V

    .line 80
    const-string v0, "data:image/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;->a:Landroid/content/Context;

    .line 3068
    sget-object v2, Latr;->a:Latr;

    .line 2419
    invoke-virtual {v2, v0}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lahw;->a(Ljava/lang/Object;)Lahu;

    move-result-object v0

    .line 85
    :goto_0
    new-instance v2, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl$ImageListener;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl$ImageListener;-><init>(Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;Ljava/lang/String;Llbl;)V

    invoke-virtual {v0, v2}, Lahu;->a(Lauj;)Lahu;

    move-result-object v0

    invoke-virtual {v0, p2}, Lahu;->a(Landroid/widget/ImageView;)Lauw;

    .line 86
    return-object v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;->a:Landroid/content/Context;

    .line 4068
    sget-object v2, Latr;->a:Latr;

    .line 3419
    invoke-virtual {v2, v0}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v0

    .line 83
    new-instance v2, Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;

    invoke-direct {v2, p1}, Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lahw;->a(Ljava/lang/Object;)Lahu;

    move-result-object v0

    goto :goto_0
.end method

.method public a([BLandroid/widget/ImageView;)Llbb;
    .locals 3
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
    .line 5041
    new-instance v0, Llbl;

    invoke-direct {v0}, Llbl;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;->a:Landroid/content/Context;

    .line 6068
    sget-object v2, Latr;->a:Latr;

    .line 5419
    invoke-virtual {v2, v1}, Latr;->a(Landroid/content/Context;)Lahw;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lahw;->h()Lahu;

    move-result-object v1

    invoke-virtual {v1, p1}, Lahu;->a([B)Lahu;

    move-result-object v1

    invoke-virtual {v1, p2}, Lahu;->a(Landroid/widget/ImageView;)Lauw;

    .line 93
    new-instance v1, Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;

    invoke-direct {v1}, Lcom/google/android/libraries/componentview/api/external/Readyable$ReadyInfo;-><init>()V

    invoke-virtual {v0, v1}, Llbl;->b(Ljava/lang/Object;)Z

    .line 94
    return-object v0
.end method
