.class public final Ldzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Ldrj;


# direct methods
.method public constructor <init>(Lbfd;Ldrj;)V
    .locals 0

    .prologue
    .line 5486
    iput-object p1, p0, Ldzt;->a:Lbfd;

    iput-object p2, p0, Ldzt;->b:Ldrj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6204
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5489
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    .line 5490
    iget-object v2, p0, Ldzt;->a:Lbfd;

    iget-object v3, p0, Ldzt;->b:Ldrj;

    invoke-virtual {v0, v2, v3}, Leap;->a(Lbfd;Ldrj;)V

    goto :goto_0

    .line 5492
    :cond_0
    return-void
.end method
