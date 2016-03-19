.class final Lhhf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhhe;


# direct methods
.method constructor <init>(Lhhe;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lhhf;->a:Lhhe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    const-string v0, "vclib"

    const-string v1, "Fetching new token..."

    .line 1073
    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lhhf;->a:Lhhe;

    .line 2038
    iget-object v0, v0, Lhhe;->j:Ljava/lang/String;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lhhf;->a:Lhhe;

    .line 3038
    iget-object v0, v0, Lhhe;->d:Lhca;

    .line 59
    iget-object v1, p0, Lhhf;->a:Lhhe;

    .line 4038
    iget-object v1, v1, Lhhe;->b:Landroid/content/Context;

    .line 59
    iget-object v2, p0, Lhhf;->a:Lhhe;

    .line 5038
    iget-object v2, v2, Lhhe;->j:Ljava/lang/String;

    .line 59
    invoke-virtual {v0, v1, v2}, Lhca;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lhhf;->a:Lhhe;

    .line 6038
    iget-object v0, v0, Lhhe;->i:Lhhg;

    .line 61
    if-eqz v0, :cond_1

    .line 62
    const-string v0, "vclib"

    const-string v1, "Cancelling prior AuthenticationTask!"

    .line 6089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lhhf;->a:Lhhe;

    .line 7038
    iget-object v0, v0, Lhhe;->i:Lhhg;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhhg;->cancel(Z)Z

    .line 65
    :cond_1
    iget-object v0, p0, Lhhf;->a:Lhhe;

    new-instance v1, Lhhg;

    iget-object v2, p0, Lhhf;->a:Lhhe;

    .line 7247
    invoke-direct {v1, v2}, Lhhg;-><init>(Lhhe;)V

    .line 8038
    iput-object v1, v0, Lhhe;->i:Lhhg;

    .line 66
    iget-object v0, p0, Lhhf;->a:Lhhe;

    .line 9038
    iget-object v0, v0, Lhhe;->i:Lhhg;

    .line 66
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lhhg;->a([Ljava/lang/Object;)Lhbw;

    .line 10038
    sget-wide v0, Lhhe;->a:J

    .line 67
    invoke-static {p0, v0, v1}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 68
    return-void
.end method
