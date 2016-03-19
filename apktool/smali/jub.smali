.class final Ljub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljtn;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljtn;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Ljub;->a:Ljtn;

    iput-object p2, p0, Ljub;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Ljud;->a()Ljtn;

    move-result-object v1

    .line 95
    iget-object v0, p0, Ljub;->a:Ljtn;

    invoke-static {v0}, Ljud;->a(Ljtn;)V

    .line 97
    :try_start_0
    iget-object v0, p0, Ljub;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-static {v1}, Ljud;->a(Ljtn;)V

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    invoke-static {v1}, Ljud;->a(Ljtn;)V

    throw v0
.end method
