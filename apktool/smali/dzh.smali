.class public final Ldzh;
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
    .line 5206
    iput-object p1, p0, Ldzh;->a:Leff;

    iput-object p2, p0, Ldzh;->b:Lbfd;

    iput-object p3, p0, Ldzh;->c:Ldvn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6204
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->g:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5210
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 7024
    invoke-static {}, Lhbs;->b()V

    goto :goto_0

    .line 5213
    :cond_0
    return-void
.end method
