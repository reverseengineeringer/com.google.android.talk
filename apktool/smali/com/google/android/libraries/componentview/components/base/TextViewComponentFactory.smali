.class public final Lcom/google/android/libraries/componentview/components/base/TextViewComponentFactory;
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


# direct methods
.method public constructor <init>(Lkog;Lkog;Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/libraries/componentview/components/base/TextViewComponentFactory;->a:Lkog;

    .line 16
    iput-object p2, p0, Lcom/google/android/libraries/componentview/components/base/TextViewComponentFactory;->b:Lkog;

    .line 17
    iput-object p3, p0, Lcom/google/android/libraries/componentview/components/base/TextViewComponentFactory;->c:Lkog;

    .line 18
    return-void
.end method
