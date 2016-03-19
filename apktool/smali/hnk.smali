.class public final Lhnk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhnn;

.field final synthetic b:Lhnp;

.field final synthetic c:Lhnl;


# direct methods
.method public constructor <init>(Lhnn;Lhnp;Lhnl;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lhnk;->a:Lhnn;

    iput-object p2, p0, Lhnk;->b:Lhnp;

    iput-object p3, p0, Lhnk;->c:Lhnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lhnk;->a:Lhnn;

    invoke-interface {v0}, Lhnn;->a()Lhnj;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lhnk;->b:Lhnp;

    invoke-virtual {v1, v0}, Lhnp;->a(Lhnj;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lhnk;->b:Lhnp;

    invoke-virtual {v1}, Lhnp;->a()V

    .line 65
    iget-object v1, p0, Lhnk;->c:Lhnl;

    if-eqz v1, :cond_0

    .line 1184
    const-string v1, "Primes"

    const-string v2, "Provider failure - shutting down Primes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2051
    const/4 v0, 0x1

    sput-boolean v0, Lhmn;->a:Z

    goto :goto_0

    .line 68
    :cond_0
    const-string v1, "TransmitterFactory"

    const-string v2, "provider failed, but no callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
