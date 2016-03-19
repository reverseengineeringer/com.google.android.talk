.class public final Ldzx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldqh;


# direct methods
.method public constructor <init>(Ldqh;)V
    .locals 0

    .prologue
    .line 5536
    iput-object p1, p0, Ldzx;->a:Ldqh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6204
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5539
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    .line 5540
    iget-object v2, p0, Ldzx;->a:Ldqh;

    invoke-virtual {v2}, Ldqh;->b()I

    move-result v2

    iget-object v3, p0, Ldzx;->a:Ldqh;

    .line 5541
    invoke-virtual {v3}, Ldqh;->k()Ljava/lang/String;

    move-result-object v3

    .line 5540
    invoke-virtual {v0, v2, v3}, Leap;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 5543
    :cond_0
    return-void
.end method
