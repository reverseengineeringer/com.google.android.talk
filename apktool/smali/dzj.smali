.class public final Ldzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbfd;

.field final synthetic c:Leau;


# direct methods
.method public constructor <init>(ILbfd;Leau;)V
    .locals 0

    .prologue
    .line 5332
    iput p1, p0, Ldzj;->a:I

    iput-object p2, p0, Ldzj;->b:Lbfd;

    iput-object p3, p0, Ldzj;->c:Leau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6204
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5335
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    .line 5336
    iget v2, p0, Ldzj;->a:I

    iget-object v3, p0, Ldzj;->b:Lbfd;

    iget-object v4, p0, Ldzj;->c:Leau;

    invoke-virtual {v0, v2, v3, v4}, Leap;->a(ILbfd;Leau;)V

    goto :goto_0

    .line 5338
    :cond_0
    return-void
.end method
