.class public final Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory_Factory;
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
.field private final a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1025
    new-instance v0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory;

    iget-object v1, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory_Factory;->a:Lkog;

    iget-object v2, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory_Factory;->b:Lkog;

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory;-><init>(Lkog;Lkog;)V

    .line 9
    return-object v0
.end method
