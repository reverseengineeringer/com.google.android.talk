.class final Lbur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liaw;


# instance fields
.field private final a:Lhpz;

.field private final b:Lbdp;

.field private final c:Landroid/content/Context;

.field private final d:Leot;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-class v0, Lhpz;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    iput-object v0, p0, Lbur;->a:Lhpz;

    .line 82
    const-class v0, Lbdp;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    iput-object v0, p0, Lbur;->b:Lbdp;

    .line 83
    const-class v0, Leot;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leot;

    iput-object v0, p0, Lbur;->d:Leot;

    .line 84
    iput-object p1, p0, Lbur;->c:Landroid/content/Context;

    .line 85
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 94
    const-string v0, "Babel_StickerModule"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Account change update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lbur;->a:Lhpz;

    invoke-interface {v0, p1}, Lhpz;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1088
    iget-object v0, p0, Lbur;->b:Lbdp;

    const-string v1, "babel_stickers_account_id"

    const-string v2, "108618507921641169817"

    invoke-interface {v0, v1, v2}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {p1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 1106
    iget-object v2, p0, Lbur;->d:Leot;

    invoke-interface {v2, p1}, Leot;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1107
    invoke-static {v1}, Ldvd;->d(Lbfd;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v2, p0, Lbur;->c:Landroid/content/Context;

    invoke-static {v2, v1}, Lbff;->i(Landroid/content/Context;Lbfd;)J

    move-result-wide v2

    .line 1113
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lbur;->c:Landroid/content/Context;

    const-string v5, "babel_stickers_auto_update"

    const/4 v6, 0x1

    .line 1115
    invoke-static {v4, v5, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1119
    const-string v0, "Babel_StickerModule"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Skip stickers auto update. Last update:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1124
    :cond_2
    iget-object v4, p0, Lbur;->c:Landroid/content/Context;

    const-string v5, "babel_stickers_query_limit_ms"

    sget-wide v6, Leea;->i:J

    .line 1125
    invoke-static {v4, v5, v6, v7}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1131
    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1132
    const-string v4, "Babel_StickerModule"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x3f

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Sticker update initiated. last:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " empty:false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->o(Lbfd;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "Babel_StickerModule"

    const-string v1, "Null account update."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
