.class public final Ldzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfd;

.field final synthetic b:Lege;


# direct methods
.method public constructor <init>(Lbfd;Lege;)V
    .locals 0

    .prologue
    .line 5150
    iput-object p1, p0, Ldzd;->a:Lbfd;

    iput-object p2, p0, Ldzd;->b:Lege;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5204
    sget-object v0, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5155
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leap;

    .line 5156
    iget-object v2, p0, Ldzd;->a:Lbfd;

    iget-object v3, p0, Ldzd;->b:Lege;

    invoke-virtual {v3}, Lege;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldzd;->b:Lege;

    .line 5157
    invoke-virtual {v4}, Lege;->c()Lczb;

    move-result-object v4

    iget-object v5, p0, Ldzd;->b:Lege;

    invoke-virtual {v5}, Lege;->a()Ljava/lang/String;

    move-result-object v5

    .line 5156
    invoke-virtual {v0, v2, v3, v4, v5}, Leap;->a(Lbfd;Ljava/lang/String;Lczb;Ljava/lang/String;)V

    goto :goto_0

    .line 5159
    :cond_0
    return-void
.end method
