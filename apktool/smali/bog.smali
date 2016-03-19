.class final Lbog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 4673
    iput-object p1, p0, Lbog;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 4676
    iget-object v0, p0, Lbog;->a:Lbng;

    .line 5285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 4676
    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    .line 4677
    if-eqz v0, :cond_1

    iget-object v0, v0, Lbjb;->a:Ljava/lang/String;

    .line 4679
    :goto_0
    iget-object v1, p0, Lbog;->a:Lbng;

    .line 6285
    iget-object v1, v1, Lbng;->bm:Lbzy;

    .line 4679
    invoke-interface {v1}, Lbzy;->a()V

    .line 4682
    if-eqz v0, :cond_0

    iget-object v1, p0, Lbog;->a:Lbng;

    invoke-virtual {v1}, Lbng;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4683
    iget-object v1, p0, Lbog;->a:Lbng;

    .line 7285
    iget-object v1, v1, Lbng;->at:Lbfd;

    .line 4683
    iget-object v2, p0, Lbog;->a:Lbng;

    .line 8285
    iget-wide v2, v2, Lbng;->aW:J

    .line 4683
    invoke-static {v1, v0, v2, v3}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;J)I

    .line 4685
    :cond_0
    return-void

    .line 4677
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
