.class final Lbpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpc;


# direct methods
.method constructor <init>(Lbpc;)V
    .locals 0

    .prologue
    .line 6452
    iput-object p1, p0, Lbpd;->a:Lbpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6455
    iget-object v0, p0, Lbpd;->a:Lbpc;

    iget-object v0, v0, Lbpc;->a:Lbng;

    .line 7285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 6455
    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    .line 6456
    iget-object v1, v0, Lbjb;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6461
    iget-object v1, p0, Lbpd;->a:Lbpc;

    iget-object v1, v1, Lbpc;->a:Lbng;

    .line 8285
    iget-object v1, v1, Lbng;->at:Lbfd;

    .line 6462
    iget-object v0, v0, Lbjb;->a:Ljava/lang/String;

    .line 6461
    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->l(Lbfd;Ljava/lang/String;)I

    .line 6464
    :cond_0
    iget-object v0, p0, Lbpd;->a:Lbpc;

    iget-object v0, v0, Lbpc;->a:Lbng;

    .line 9285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 6464
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbpd;->a:Lbpc;

    iget-object v0, v0, Lbpc;->a:Lbng;

    .line 10285
    iget-object v0, v0, Lbng;->at:Lbfd;

    .line 6465
    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 11183
    sget-object v1, Ldvp;->h:Ldml;

    invoke-virtual {v1, v0}, Ldml;->b(I)Z

    move-result v0

    .line 6465
    if-eqz v0, :cond_1

    .line 6466
    iget-object v0, p0, Lbpd;->a:Lbpc;

    iget-object v0, v0, Lbpc;->a:Lbng;

    .line 11285
    iget-object v0, v0, Lbng;->aS:Landroid/os/Handler;

    .line 12285
    sget-wide v2, Lbng;->d:J

    .line 6466
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6468
    :cond_1
    return-void
.end method
