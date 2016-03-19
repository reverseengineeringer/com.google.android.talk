.class Leue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lesj;

.field final c:Lerl;

.field final d:Lerg;

.field final e:Lesg;

.field final f:J

.field final g:Landroid/os/Handler;

.field h:Leua;

.field i:Lhku;

.field j:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lesj;Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Landroid/telecom/ConnectionRequest;Lerl;Landroid/os/PowerManager$WakeLock;)V
    .locals 4

    .prologue
    .line 3057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Leue;->f:J

    .line 3042
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leue;->g:Landroid/os/Handler;

    .line 3058
    iput-object p1, p0, Leue;->a:Landroid/content/Context;

    .line 3059
    iput-object p2, p0, Leue;->b:Lesj;

    .line 3060
    iput-object p5, p0, Leue;->c:Lerl;

    .line 3061
    iput-object p6, p0, Leue;->j:Landroid/os/PowerManager$WakeLock;

    .line 3063
    if-eqz p6, :cond_0

    .line 3064
    invoke-virtual {p6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3068
    :cond_0
    invoke-virtual {p4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lesg;->a(Landroid/os/Bundle;)Lesg;

    move-result-object v0

    iput-object v0, p0, Leue;->e:Lesg;

    .line 3069
    new-instance v0, Landroid/telecom/ConnectionRequest;

    invoke-virtual {p4}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Leue;->e:Lesg;

    iget-object v2, v2, Lesg;->b:Ljava/lang/String;

    .line 3070
    invoke-static {v2}, Laal;->r(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3071
    invoke-virtual {p4}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telecom/ConnectionRequest;-><init>(Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 3073
    new-instance v1, Lesw;

    new-instance v2, Lest;

    .line 3077
    invoke-static {p3}, Letj;->a(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v2, p3, v3}, Lest;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x1

    invoke-direct {v1, p3, v0, v2, v3}, Lesw;-><init>(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Landroid/telecom/ConnectionRequest;Lest;Z)V

    .line 3079
    new-instance v0, Lerg;

    invoke-direct {v0, v1}, Lerg;-><init>(Lesw;)V

    iput-object v0, p0, Leue;->d:Lerg;

    .line 3080
    iget-object v0, p0, Leue;->d:Lerg;

    invoke-virtual {v0}, Lerg;->c()V

    .line 3081
    iget-object v0, p0, Leue;->d:Lerg;

    iget-object v1, p0, Leue;->e:Lesg;

    iget-object v1, v1, Lesg;->e:Lero;

    invoke-virtual {v0, v1}, Lerg;->a(Lero;)V

    .line 3082
    iget-object v0, p0, Leue;->d:Lerg;

    iget-object v1, p0, Leue;->e:Lesg;

    iget-boolean v1, v1, Lesg;->g:Z

    invoke-virtual {v0, v1}, Lerg;->b(Z)V

    .line 3083
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1128
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.onAnswer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    iget-object v0, p0, Leue;->h:Leua;

    invoke-virtual {v0}, Leua;->n()Lcgw;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.onAnswer, exiting existing hangout"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    iget-object v0, p0, Leue;->i:Lhku;

    .line 1188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1132
    new-instance v0, Lesh;

    invoke-direct {v0, p0}, Lesh;-><init>(Leue;)V

    iput-object v0, p0, Leue;->i:Lhku;

    .line 1146
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iget-object v1, p0, Leue;->i:Lhku;

    invoke-virtual {v0, v1}, Lcfc;->a(Lhku;)V

    .line 1147
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Lcgw;->b(I)V

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_0
    invoke-virtual {p0}, Leue;->d()V

    goto :goto_0
.end method

.method a(I)V
    .locals 6

    .prologue
    .line 4220
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.sendIncomingHangoutInviteResponse, HangoutInvitationAck.UserAction: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4222
    new-instance v0, Lkkp;

    invoke-direct {v0}, Lkkp;-><init>()V

    .line 4223
    iget-object v1, p0, Leue;->e:Lesg;

    iget-wide v2, v1, Lesg;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkkp;->a:Ljava/lang/Long;

    .line 4224
    iget-object v1, p0, Leue;->e:Lesg;

    iget-object v1, v1, Lesg;->a:Lcgs;

    invoke-virtual {v1}, Lcgs;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkkp;->b:Ljava/lang/String;

    .line 4225
    iget-wide v2, p0, Leue;->f:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkkp;->c:Ljava/lang/Long;

    .line 4226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Leue;->f:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lkkp;->d:Ljava/lang/Long;

    .line 4227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lkkp;->f:Ljava/lang/Integer;

    .line 4229
    iget-object v1, p0, Leue;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Lkkp;)I

    .line 4231
    return-void
.end method

.method a(Lcgs;I)Z
    .locals 1

    .prologue
    .line 4115
    iget-object v0, p0, Leue;->e:Lesg;

    iget-object v0, v0, Lesg;->a:Lcgs;

    invoke-virtual {v0, p1}, Lcgs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4116
    iget-object v0, p0, Leue;->h:Leua;

    if-eqz v0, :cond_0

    .line 4117
    iget-object v0, p0, Leue;->h:Leua;

    invoke-virtual {v0, p2}, Leua;->b(I)V

    .line 4119
    :cond_0
    invoke-virtual {p0}, Leue;->f()V

    .line 4120
    const/4 v0, 0x1

    .line 4122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 2156
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.onReject"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2157
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Leue;->a(I)V

    .line 2160
    iget-object v0, p0, Leue;->h:Leua;

    invoke-virtual {v0}, Leua;->n()Lcgw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2161
    iget-object v0, p0, Leue;->h:Leua;

    invoke-virtual {v0}, Leua;->n()Lcgw;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcgw;->b(I)V

    .line 2164
    :cond_0
    invoke-virtual {p0}, Leue;->f()V

    .line 2165
    return-void
.end method

.method c()Lerg;
    .locals 6

    .prologue
    const/16 v5, 0x920

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3087
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.startRequest"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3088
    iget-object v0, p0, Leue;->a:Landroid/content/Context;

    iget-object v1, p0, Leue;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    iget-object v2, p0, Leue;->e:Lesg;

    iget-object v2, v2, Lesg;->a:Lcgs;

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;ILcgs;)Z

    move-result v0

    .line 3091
    iget-object v1, p0, Leue;->c:Lerl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leue;->c:Lerl;

    iget-object v2, p0, Leue;->d:Lerg;

    .line 3092
    invoke-virtual {v2}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lerl;->a(Landroid/telecom/ConnectionRequest;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3093
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.startRequest, call is duplicate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3094
    iget-object v0, p0, Leue;->d:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 3095
    iget-object v0, p0, Leue;->a:Landroid/content/Context;

    iget-object v1, p0, Leue;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    iget-object v2, p0, Leue;->e:Lesg;

    iget-object v2, v2, Lesg;->b:Ljava/lang/String;

    const/16 v3, 0x921

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;ILjava/lang/String;I)V

    .line 3097
    invoke-virtual {p0}, Leue;->f()V

    .line 3110
    :goto_0
    iget-object v0, p0, Leue;->d:Lerg;

    return-object v0

    .line 3098
    :cond_0
    if-nez v0, :cond_1

    .line 3099
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.startRequest, pending invite was cancelled"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3100
    iget-object v0, p0, Leue;->d:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 3101
    iget-object v0, p0, Leue;->a:Landroid/content/Context;

    iget-object v1, p0, Leue;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    iget-object v2, p0, Leue;->e:Lesg;

    iget-object v2, v2, Lesg;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Laal;->a(Landroid/content/Context;ILjava/lang/String;I)V

    .line 3103
    invoke-virtual {p0}, Leue;->f()V

    goto :goto_0

    .line 3183
    :cond_1
    new-instance v0, Leua;

    iget-object v1, p0, Leue;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v4}, Leua;-><init>(Landroid/content/Context;Leue;Ljava/lang/String;Z)V

    iput-object v0, p0, Leue;->h:Leua;

    .line 3184
    iget-object v0, p0, Leue;->d:Lerg;

    iget-object v1, p0, Leue;->h:Leua;

    invoke-virtual {v0, v1}, Lerg;->a(Leqs;)V

    .line 3185
    iget-object v0, p0, Leue;->d:Lerg;

    invoke-virtual {v0}, Lerg;->setRinging()V

    .line 3186
    iget-object v0, p0, Leue;->d:Lerg;

    iget-object v1, p0, Leue;->e:Lesg;

    iget-object v1, v1, Lesg;->a:Lcgs;

    invoke-virtual {v1}, Lcgs;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lerg;->b(Ljava/lang/String;)V

    .line 3187
    iget-object v0, p0, Leue;->d:Lerg;

    iget-object v1, p0, Leue;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    invoke-virtual {v0, v1}, Lerg;->a(I)V

    .line 3191
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3192
    invoke-virtual {p0}, Leue;->e()V

    .line 3106
    :cond_2
    iget-object v0, p0, Leue;->a:Landroid/content/Context;

    iget-object v1, p0, Leue;->d:Lerg;

    invoke-static {v0, v1}, Laal;->a(Landroid/content/Context;Lerg;)V

    .line 3107
    iget-object v0, p0, Leue;->a:Landroid/content/Context;

    iget-object v1, p0, Leue;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    iget-object v2, p0, Leue;->e:Lesg;

    iget-object v2, v2, Lesg;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v5}, Laal;->a(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    .line 4168
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.performAnswer, answering call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leue;->a(I)V

    .line 4171
    iget-object v0, p0, Leue;->h:Leua;

    invoke-virtual {v0}, Leua;->n()Lcgw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4172
    invoke-virtual {p0}, Leue;->e()V

    .line 4175
    :cond_0
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->u()V

    .line 4176
    iget-object v0, p0, Leue;->d:Lerg;

    invoke-virtual {v0}, Lerg;->setActive()V

    .line 4177
    iget-object v0, p0, Leue;->d:Lerg;

    invoke-virtual {v0}, Lerg;->w()V

    .line 4179
    invoke-virtual {p0}, Leue;->f()V

    .line 4180
    return-void
.end method

.method e()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4197
    iget-object v1, p0, Leue;->d:Lerg;

    .line 4198
    invoke-virtual {v1}, Lerg;->f()Lesw;

    move-result-object v1

    invoke-virtual {v1}, Lesw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Laal;->p()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    move v6, v3

    .line 4197
    invoke-static/range {v1 .. v6}, Laal;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Lcyx;

    move-result-object v6

    .line 4203
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    iget-object v2, p0, Leue;->e:Lesg;

    iget-object v2, v2, Lesg;->a:Lcgs;

    const/16 v7, 0x56

    .line 4212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v5, p0, Leue;->d:Lerg;

    .line 4214
    invoke-virtual {v5}, Lerg;->i()Ljava/lang/String;

    move-result-object v13

    move v5, v9

    move v8, v9

    move v9, v3

    move-object v12, v4

    .line 4203
    invoke-virtual/range {v1 .. v13}, Lcfc;->a(Lcgs;ZLjava/util/List;ZLcyx;IIZJLlbz;Ljava/lang/String;)V

    .line 4215
    iget-object v1, p0, Leue;->h:Leua;

    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v2

    invoke-virtual {v2}, Lcfc;->r()Lcgw;

    move-result-object v2

    invoke-virtual {v1, v2}, Leua;->a(Lcgw;)V

    .line 4216
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4234
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallRequest.cleanupRequest"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4235
    iget-object v0, p0, Leue;->i:Lhku;

    if-eqz v0, :cond_0

    .line 4236
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    iget-object v1, p0, Leue;->i:Lhku;

    invoke-virtual {v0, v1}, Lcfc;->b(Lhku;)V

    .line 4237
    iput-object v3, p0, Leue;->i:Lhku;

    .line 4239
    :cond_0
    iget-object v0, p0, Leue;->g:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4240
    iput-object v3, p0, Leue;->h:Leua;

    .line 4241
    iget-object v0, p0, Leue;->b:Lesj;

    invoke-interface {v0, p0}, Lesj;->a(Leue;)V

    .line 4242
    iget-object v0, p0, Leue;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 4243
    iget-object v0, p0, Leue;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4244
    iput-object v3, p0, Leue;->j:Landroid/os/PowerManager$WakeLock;

    .line 4246
    :cond_1
    return-void
.end method
