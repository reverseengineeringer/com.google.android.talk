.class public final Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


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


# direct methods
.method public constructor <init>(Lkog;Lkog;)V
    .locals 0
    .param p2    # Lkog;
        .annotation runtime Lcom/google/android/libraries/componentview/inject/annotations/ExecutorType$BACKGROUND;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory;->a:Lkog;

    .line 13
    iput-object p2, p0, Lcom/google/android/libraries/componentview/services/internal/glide/GlideUrlLoaderFactory;->b:Lkog;

    .line 14
    return-void
.end method
