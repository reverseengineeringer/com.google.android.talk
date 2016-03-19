.class public final Lesc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lchj;
.implements Lesf;
.implements Lesj;


# instance fields
.field private final a:Landroid/telecom/TelecomManager;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lesd;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telecom/TelecomManager;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lesc;->b:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lesc;->c:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lesc;->a:Landroid/telecom/TelecomManager;

    .line 41
    return-void
.end method

.method static b(Landroid/content/Context;Lbfd;)I
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 48
    invoke-static {p0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v3

    .line 49
    const-string v4, "babel_incoming_wifi_calls_allowed"

    invoke-interface {v3, v4, v0}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    const-string v1, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallController.getRegistrationState, not allowed by gservices"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-static {p0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v4

    .line 57
    invoke-virtual {v4}, Leut;->c()Z

    move-result v5

    if-nez v5, :cond_1

    .line 58
    const-string v1, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallController.getRegistrationState, wifi calling not enabled"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v5

    invoke-virtual {v4}, Leut;->f()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p0}, Laal;->n(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 70
    const-string v1, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallController.getRegistrationState, not connection manager"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {v4}, Leut;->b()I

    move-result v4

    .line 76
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v5

    if-eq v5, v4, :cond_4

    .line 77
    const-string v3, "Babel_telephony"

    const-string v5, "TeleIncomingWifiCallController.getRegistrationState, account: %s, index: %d, doesn\'t match calling account index: %d"

    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Laal;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v7

    invoke-virtual {p1}, Lbfd;->g()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 77
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p1}, Lbfd;->N()I

    move-result v4

    if-nez v4, :cond_5

    .line 88
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallController.getRegistrationState, voip calling status is unknown"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 90
    goto :goto_0

    .line 95
    :cond_5
    const-string v2, "babel_incoming_wifi_calls_require_google_voice_integration"

    invoke-interface {v3, v2, v0}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 99
    invoke-static {}, Lezm;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lbfd;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 100
    const-string v1, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallController.getRegistrationState, cell phone number doesn\'t match Google Voice number"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 106
    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Landroid/telecom/ConnectionRequest;Lerl;Landroid/os/PowerManager$WakeLock;)Lerg;
    .locals 7

    .prologue
    .line 207
    new-instance v0, Leue;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Leue;-><init>(Landroid/content/Context;Lesj;Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Landroid/telecom/ConnectionRequest;Lerl;Landroid/os/PowerManager$WakeLock;)V

    .line 209
    iget-object v1, p0, Lesc;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {v0}, Leue;->c()Lerg;

    move-result-object v0

    return-object v0
.end method

.method public a(Lesd;)V
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Laal;->w()V

    .line 187
    iget-object v0, p0, Lesc;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public a(Leue;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lesc;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    return-void
.end method

.method public a(Landroid/content/Context;ILcgs;I)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 159
    invoke-static {}, Laal;->w()V

    .line 160
    const-string v3, "Babel_telephony"

    const-string v4, "TeleIncomingWifiCallController.onCancelInvite, hangoutRequest: %s, dismissReason: %s"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p3, v5, v1

    .line 1214
    packed-switch p4, :pswitch_data_0

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x12

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "OTHER: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_0
    aput-object v0, v5, v2

    .line 160
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lesc;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lesd;

    .line 166
    invoke-virtual {v0, p3}, Lesd;->a(Lcgs;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    move v1, v0

    .line 169
    goto :goto_1

    .line 1216
    :pswitch_0
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 1218
    :pswitch_1
    const-string v0, "USER_RESPONDED"

    goto :goto_0

    .line 1220
    :pswitch_2
    const-string v0, "USER_KICKED"

    goto :goto_0

    .line 1222
    :pswitch_3
    const-string v0, "INVITER_CANCELLED"

    goto :goto_0

    .line 1224
    :pswitch_4
    const-string v0, "INVITE_TIMEOUT"

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {p1, p2, p3}, Laal;->a(Landroid/content/Context;ILcgs;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 175
    :cond_1
    iget-object v0, p0, Lesc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leue;

    .line 176
    invoke-virtual {v0, p3, p4}, Leue;->a(Lcgs;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    .line 177
    goto :goto_3

    .line 180
    :cond_3
    return v1

    :cond_4
    move v0, v1

    goto :goto_2

    .line 1214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Lbfd;)Z
    .locals 2

    .prologue
    .line 117
    invoke-static {p1, p2}, Lesc;->b(Landroid/content/Context;Lbfd;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Leaw;Lbfd;Lcgs;Ljava/lang/String;J)Z
    .locals 12

    .prologue
    .line 128
    invoke-static {}, Laal;->w()V

    .line 129
    const-string v0, "Babel_telephony"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static/range {p5 .. p5}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x5c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleIncomingWifiCallController.onInviteToPhoneNumber, hangoutRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", inviterPhoneNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 129
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-static/range {p5 .. p5}, Lezm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 135
    invoke-static {p1}, Leuh;->a(Landroid/content/Context;)Leum;

    move-result-object v2

    .line 133
    invoke-static {p1, v0, v1, v2}, Lero;->a(Landroid/content/Context;Ljava/lang/String;ZLeum;)Lero;

    move-result-object v8

    .line 136
    new-instance v11, Lest;

    .line 137
    invoke-static {p1}, Letj;->a(Landroid/content/Context;)I

    move-result v0

    invoke-direct {v11, p1, v0}, Lest;-><init>(Landroid/content/Context;I)V

    .line 138
    new-instance v1, Lesg;

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 140
    invoke-virtual {p3}, Lbfd;->g()I

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    invoke-direct/range {v1 .. v11}, Lesg;-><init>(Lcgs;Ljava/lang/String;JJLero;IZLest;)V

    .line 142
    new-instance v2, Lesd;

    iget-object v5, p0, Lesc;->a:Landroid/telecom/TelecomManager;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v7}, Lesd;-><init>(Landroid/content/Context;Lesf;Landroid/telecom/TelecomManager;Lesg;Z)V

    .line 144
    invoke-virtual {v2}, Lesd;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lesc;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-virtual {v2, p2}, Lesd;->a(Leaw;)V

    .line 147
    const/4 v0, 0x1

    .line 149
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
