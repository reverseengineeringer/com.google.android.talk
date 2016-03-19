.class Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher;
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


# instance fields
.field final synthetic a:Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader;

.field private final b:Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader;Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher;->a:Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher;->b:Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;

    .line 91
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public a(Lahs;Lajg;)V
    .locals 4
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
    .line 122
    new-instance v0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher$ImageCallback;

    .line 1093
    invoke-direct {v0, p0, p2}, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher$ImageCallback;-><init>(Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher;Lajg;)V

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher;->a:Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader;

    .line 2032
    iget-object v1, v1, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader;->a:Lcom/google/android/libraries/componentview/services/application/Fetcher;

    .line 127
    iget-object v2, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher;->b:Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;

    invoke-virtual {v2}, Lcom/google/android/libraries/componentview/services/internal/glide/ImageUrl;->a()Laot;

    move-result-object v2

    invoke-virtual {v2}, Laot;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/google/android/libraries/componentview/services/application/Fetcher;->a(Ljava/net/URI;Z)Llbb;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader$ImageDataFetcher;->a:Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader;

    .line 3032
    iget-object v2, v2, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoader;->b:Ljava/util/concurrent/ExecutorService;

    .line 128
    invoke-static {v1, v0, v2}, Llau;->a(Llbb;Llat;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v1, "ImageDataFetcher"

    const-string v2, "Malformed URL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lajg;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public c()Lair;
    .locals 1

    .prologue
    .line 142
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
    .line 137
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method
