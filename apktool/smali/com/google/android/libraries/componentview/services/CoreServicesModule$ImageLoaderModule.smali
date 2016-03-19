.class public final Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule;-><init>(B)V

    .line 45
    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule;->a:Z

    .line 49
    return-void
.end method


# virtual methods
.method a(Lcom/google/android/libraries/componentview/services/application/Fetcher;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)Lcom/google/android/libraries/componentview/services/internal/ImageLoader;
    .locals 1
    .param p2    # Ljava/util/concurrent/ExecutorService;
        .annotation runtime Lcom/google/android/libraries/componentview/inject/annotations/ExecutorType$BACKGROUND;
        .end annotation
    .end param

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule;->a:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/libraries/componentview/services/internal/glide/GlideImageLoaderImpl;-><init>(Lcom/google/android/libraries/componentview/services/application/Fetcher;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)V

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/libraries/componentview/services/internal/DefaultImageLoaderImpl;-><init>(Lcom/google/android/libraries/componentview/services/application/Fetcher;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)V

    goto :goto_0
.end method
