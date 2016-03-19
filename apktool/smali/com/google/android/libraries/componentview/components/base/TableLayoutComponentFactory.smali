.class public final Lcom/google/android/libraries/componentview/components/base/TableLayoutComponentFactory;
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


# direct methods
.method public constructor <init>(Lkog;Lkog;Lkog;Lkog;)V
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
            ")V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/base/TableLayoutComponentFactory;->a:Lkog;

    .line 17
    iput-object p2, p0, Lcom/google/android/libraries/componentview/components/base/TableLayoutComponentFactory;->b:Lkog;

    .line 18
    iput-object p3, p0, Lcom/google/android/libraries/componentview/components/base/TableLayoutComponentFactory;->c:Lkog;

    .line 19
    iput-object p4, p0, Lcom/google/android/libraries/componentview/components/base/TableLayoutComponentFactory;->d:Lkog;

    .line 20
    return-void
.end method
