.class public final Leel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leec;


# instance fields
.field a:Leze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leze",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lknr",
            "<",
            "Landroid/content/Intent;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Leze;

    invoke-direct {v0}, Leze;-><init>()V

    iput-object v0, p0, Leel;->a:Leze;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leel;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Landroid/content/Intent;Z)V
    .locals 4

    .prologue
    .line 166
    invoke-static {}, Lezc;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "android.support.content.wakelockid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 168
    if-eqz p2, :cond_1

    .line 169
    iget-object v1, p0, Leel;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2}, Lknr;->a(Ljava/lang/Object;Ljava/lang/Object;)Lknr;

    move-result-object v2

    .line 169
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v1, p0, Leel;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lknq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1}, Lknq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Leel;->a:Leze;

    .line 158
    invoke-virtual {p1}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v2, "android.support.content.wakelockid"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Leze;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p1}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lfu;->a(Landroid/content/Intent;)Z

    .line 160
    invoke-virtual {p1}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leel;->a(Landroid/content/Intent;Z)V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Lknq;)Landroid/content/ComponentName;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 75
    invoke-virtual {p3}, Lknq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p3}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 77
    const-string v1, "android.support.content.wakelockid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lfii;->a(Z)V

    .line 78
    const-string v1, "EXTRA_INTENT_HOLDING_WAKELOCK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lfii;->a(Z)V

    .line 79
    const-string v1, "EXTRA_INTENT_HOLDING_WAKELOCK"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1144
    iget-object v1, p0, Leel;->a:Leze;

    const-string v3, "android.support.content.wakelockid"

    const/4 v4, -0x1

    .line 1145
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1144
    invoke-virtual {v1, v3}, Leze;->a(Ljava/lang/Object;)V

    .line 1147
    invoke-direct {p0, v0, v2}, Leel;->a(Landroid/content/Intent;Z)V

    .line 82
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Leeb;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 89
    if-nez p2, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 3037
    sget-object v1, Lkmm;->a:Lkmm;

    .line 90
    invoke-virtual {p1, v0, v1}, Leeb;->a(Landroid/content/Intent;Lknq;)V

    .line 101
    :goto_0
    return-void

    .line 3115
    :cond_0
    const-string v1, "android.support.content.wakelockid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3116
    const-string v1, "EXTRA_INTENT_HOLDING_WAKELOCK"

    .line 3117
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    const-string v1, "Intent was both holding a wakelock and contained an extra intent holding a wakelock"

    .line 3116
    invoke-static {v0, v1}, Lfii;->a(ZLjava/lang/Object;)V

    .line 3119
    invoke-static {p2}, Lknq;->b(Ljava/lang/Object;)Lknq;

    move-result-object v0

    move-object v1, v0

    .line 5132
    :goto_2
    :try_start_0
    invoke-virtual {v1}, Lknq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5133
    iget-object v2, p0, Leel;->a:Leze;

    .line 5134
    invoke-virtual {v1}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "android.support.content.wakelockid"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5133
    invoke-virtual {v2, v0}, Leze;->b(Ljava/lang/Object;)V

    .line 5136
    invoke-virtual {v1}, Lknq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Leel;->a(Landroid/content/Intent;Z)V

    .line 97
    :cond_1
    const-string v0, "EXTRA_INTENT_HOLDING_WAKELOCK"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, p2, v1}, Leeb;->a(Landroid/content/Intent;Lknq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-direct {p0, v1}, Leel;->a(Lknq;)V

    goto :goto_0

    .line 3117
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 3121
    :cond_3
    const-string v0, "EXTRA_INTENT_HOLDING_WAKELOCK"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3122
    const-string v0, "EXTRA_INTENT_HOLDING_WAKELOCK"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Lknq;->b(Ljava/lang/Object;)Lknq;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    .line 5037
    :cond_4
    sget-object v0, Lkmm;->a:Lkmm;

    move-object v1, v0

    goto :goto_2

    .line 100
    :catchall_0
    move-exception v0

    invoke-direct {p0, v1}, Leel;->a(Lknq;)V

    throw v0
.end method
