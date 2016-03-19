.class public final Ljtw;
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
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljtw;->a:Lkog;

    .line 29
    iput-object p2, p0, Ljtw;->b:Lkog;

    .line 31
    iput-object p3, p0, Ljtw;->c:Lkog;

    .line 33
    iput-object p4, p0, Ljtw;->d:Lkog;

    .line 34
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1038
    new-instance v3, Ljtt;

    iget-object v0, p0, Ljtw;->a:Lkog;

    .line 1039
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrs;

    iget-object v1, p0, Ljtw;->b:Lkog;

    invoke-interface {v1}, Lkog;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhvq;

    iget-object v2, p0, Ljtw;->c:Lkog;

    invoke-interface {v2}, Lkog;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v4, p0, Ljtw;->d:Lkog;

    invoke-direct {v3, v0, v1, v2, v4}, Ljtt;-><init>(Ljrs;Lhvq;Ljava/util/concurrent/Executor;Lkog;)V

    .line 11
    return-object v3
.end method
