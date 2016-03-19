.class final Lald;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lalk",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Laiw;


# direct methods
.method public constructor <init>(Laiw;Lalk;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiw;",
            "Lalk",
            "<*>;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lalk",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 353
    iput-object p1, p0, Lald;->a:Laiw;

    .line 354
    return-void
.end method
