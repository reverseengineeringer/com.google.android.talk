.class public final Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule_GetImageLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkog;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule;

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final d:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1039
    iget-object v3, p0, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule_GetImageLoaderFactory;->a:Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule;

    iget-object v0, p0, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule_GetImageLoaderFactory;->b:Lkog;

    .line 1041
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/componentview/services/application/Fetcher;

    iget-object v1, p0, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule_GetImageLoaderFactory;->c:Lkog;

    invoke-interface {v1}, Lkog;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule_GetImageLoaderFactory;->d:Lkog;

    invoke-interface {v2}, Lkog;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 1040
    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/libraries/componentview/services/CoreServicesModule$ImageLoaderModule;->a(Lcom/google/android/libraries/componentview/services/application/Fetcher;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;)Lcom/google/android/libraries/componentview/services/internal/ImageLoader;

    move-result-object v0

    .line 11
    return-object v0
.end method
