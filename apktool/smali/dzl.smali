.class public final Ldzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 5369
    iput-object p1, p0, Ldzl;->a:Lbfd;

    iput-object p2, p0, Ldzl;->b:Ljava/lang/String;

    iput-object p3, p0, Ldzl;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6204
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5372
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    .line 5373
    iget-object v2, p0, Ldzl;->a:Lbfd;

    iget-object v3, p0, Ldzl;->b:Ljava/lang/String;

    iget-object v4, p0, Ldzl;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v3, v4}, Leap;->a(Lbfd;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5376
    :cond_0
    return-void
.end method
