.class public final Lcom/google/android/libraries/componentview/components/elements/CarouselComponentFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/componentview/internal/NativeComponentRegistry$NativeElementViewFactory;


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

.field private final e:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkog;Lkog;Lkog;Lkog;Lkog;)V
    .locals 0
    .param p3    # Lkog;
        .annotation runtime Lcom/google/android/libraries/componentview/inject/annotations/ExecutorType$UI;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponentFactory;->a:Lkog;

    .line 18
    iput-object p2, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponentFactory;->b:Lkog;

    .line 19
    iput-object p3, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponentFactory;->c:Lkog;

    .line 20
    iput-object p4, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponentFactory;->d:Lkog;

    .line 21
    iput-object p5, p0, Lcom/google/android/libraries/componentview/components/elements/CarouselComponentFactory;->e:Lkog;

    .line 22
    return-void
.end method
