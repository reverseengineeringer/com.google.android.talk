.class final Lhnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhna;

.field final synthetic b:Lhnc;


# direct methods
.method constructor <init>(Lhnc;Lhna;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lhnd;->b:Lhnc;

    iput-object p2, p0, Lhnd;->a:Lhna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lhnd;->b:Lhnc;

    iget-object v1, p0, Lhnd;->a:Lhna;

    invoke-interface {v1}, Lhna;->b()Lmik;

    move-result-object v1

    .line 1018
    invoke-virtual {v0, v1}, Lhnc;->a(Lmik;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    const-string v1, "StartupMetrics"

    const-string v2, "background metric failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
