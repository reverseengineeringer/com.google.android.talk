.class public final Ljsn;
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


# direct methods
.method public constructor <init>(Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ljsn;->a:Lkog;

    .line 16
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1020
    iget-object v0, p0, Ljsn;->a:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1031
    instance-of v1, v0, Liof;

    const-string v2, "Cannot inject lifecycle for an activity that doesn\'t have a lifecycle: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lfii;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1033
    check-cast v0, Liof;

    invoke-interface {v0}, Liof;->getLifecycle()Liog;

    move-result-object v0

    .line 1021
    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_0
    return-object v0
.end method
