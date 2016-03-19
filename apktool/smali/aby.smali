.class final Laby;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Labn;


# direct methods
.method constructor <init>(Labn;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Laby;->a:Labn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1033
    iget-object v0, p0, Laby;->a:Labn;

    .line 1918
    iget-object v1, v0, Labn;->c:Lacc;

    invoke-interface {v1}, Lacc;->finish()V

    .line 1919
    iget-object v0, v0, Labn;->c:Lacc;

    invoke-interface {v0, v2, v2}, Lacc;->overridePendingTransition(II)V

    .line 1034
    return-void
.end method
