.class public final Ldzg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Leff;

.field final synthetic b:Lbfd;

.field final synthetic c:Ldvn;


# direct methods
.method public constructor <init>(Leff;Lbfd;Ldvn;)V
    .locals 0

    .prologue
    .line 5195
    iput-object p1, p0, Ldzg;->a:Leff;

    iput-object p2, p0, Ldzg;->b:Lbfd;

    iput-object p3, p0, Ldzg;->c:Ldvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5204
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5198
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    .line 5199
    iget-object v2, p0, Ldzg;->a:Leff;

    invoke-interface {v2}, Leff;->c()I

    move-result v2

    iget-object v3, p0, Ldzg;->b:Lbfd;

    iget-object v4, p0, Ldzg;->a:Leff;

    iget-object v5, p0, Ldzg;->c:Ldvn;

    invoke-virtual {v0, v2, v3, v4, v5}, Leap;->a(ILbfd;Leff;Ldvn;)V

    goto :goto_0

    .line 5202
    :cond_0
    iget-object v0, p0, Ldzg;->b:Lbfd;

    iget-object v1, p0, Ldzg;->c:Ldvn;

    invoke-static {v0, v1}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ldvn;)V

    .line 5203
    return-void
.end method
