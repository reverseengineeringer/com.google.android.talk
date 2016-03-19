.class public final Lesd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lesf;

.field private final c:Landroid/telecom/TelecomManager;

.field private final d:Z

.field private e:Lesg;

.field private f:Leaw;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lesf;Landroid/telecom/TelecomManager;Lesg;Z)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lesd;->a:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lesd;->b:Lesf;

    .line 59
    iput-object p3, p0, Lesd;->c:Landroid/telecom/TelecomManager;

    .line 60
    iput-object p4, p0, Lesd;->e:Lesg;

    .line 61
    iput-boolean p5, p0, Lesd;->d:Z

    .line 62
    return-void
.end method

.method private a(IZI)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    const-class v1, Lhba;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v1, p0, Lesd;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    .line 357
    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 358
    invoke-interface {v0, p1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->c()Lhax;

    move-result-object v0

    .line 359
    if-eqz p2, :cond_0

    .line 360
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lhax;->a(Ljava/lang/Integer;)Lhax;

    .line 362
    :cond_0
    invoke-interface {v0}, Lhax;->d()V

    .line 363
    return-void
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 394
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallInvite.addNewIncomingCall"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lesd;->c:Landroid/telecom/TelecomManager;

    const-string v1, "tel"

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lesd;->c:Landroid/telecom/TelecomManager;

    iget-object v1, p0, Lesd;->c:Landroid/telecom/TelecomManager;

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Landroid/telecom/TelecomManager;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Lesd;->e:Lesg;

    .line 405
    invoke-virtual {v2}, Lesg;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 404
    invoke-virtual {v0, v1, v2}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, Lesd;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lesd;->h:Z

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lesd;->c:Landroid/telecom/TelecomManager;

    iget-object v1, p0, Lesd;->a:Landroid/content/Context;

    invoke-static {v1}, Laal;->m(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, p0, Lesd;->e:Lesg;

    .line 415
    invoke-virtual {v2}, Lesg;->a()Landroid/os/Bundle;

    move-result-object v2

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    .line 416
    iput-boolean v7, p0, Lesd;->h:Z

    .line 418
    :cond_1
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    const-string v1, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.addNewIncomingCall, adding call with SIM account failed, trying non-SIM account, exception: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b(Less;)Z
    .locals 12

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 184
    iget-object v0, p1, Less;->a:Lerc;

    .line 4198
    const-string v2, "Expected non-null"

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p1, Less;->b:Leum;

    .line 5198
    const-string v2, "Expected non-null"

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p1, Less;->c:Lest;

    .line 6198
    const-string v2, "Expected non-null"

    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v2

    .line 189
    const-string v0, "babel_incoming_wifi_calls_allowed"

    invoke-interface {v2, v0, v10}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, not allowed by gservices"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 280
    :cond_0
    :goto_0
    return v10

    .line 195
    :cond_1
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Leut;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, wifi calling not enabled"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 198
    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 202
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, not connection manager"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 203
    goto :goto_0

    .line 206
    :cond_3
    invoke-static {}, Lezm;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Less;->a:Lerc;

    if-eqz v0, :cond_4

    iget-object v0, p1, Less;->a:Lerc;

    .line 207
    invoke-virtual {v0}, Lerc;->a()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v10

    .line 208
    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v0, v0, Lesg;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    const-string v0, "babel_blocked_incoming_wifi_calls_allowed"

    invoke-interface {v2, v0, v10}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 211
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, incoming wifi calls from blocked numbers not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 213
    goto :goto_0

    :cond_4
    move v0, v1

    .line 207
    goto :goto_1

    .line 217
    :cond_5
    iget-boolean v0, p0, Lesd;->d:Z

    if-eqz v0, :cond_6

    .line 218
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, falling back to Wi-Fi, only checking for Wi-Fi connection"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object v0, p1, Less;->b:Leum;

    iget-boolean v0, v0, Leum;->a:Z

    if-nez v0, :cond_0

    .line 221
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, not connected to wifi"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 222
    goto :goto_0

    .line 228
    :cond_6
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0}, Lcfc;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, hangout already exists, only checking for Wi-Fi connection, answering incoming ring will exit hangout"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p1, Less;->b:Leum;

    iget-boolean v0, v0, Leum;->a:Z

    if-nez v0, :cond_0

    .line 235
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, not connected to wifi"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 236
    goto/16 :goto_0

    .line 242
    :cond_7
    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v0, v0, Lesg;->e:Lero;

    if-eqz v0, :cond_8

    .line 243
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, in Wi-Fi calling experiment"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 247
    :cond_8
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v2, p1, Less;->c:Lest;

    iget-object v3, p1, Less;->a:Lerc;

    iget-object v4, p1, Less;->b:Leum;

    .line 7112
    iget-boolean v4, v4, Leum;->a:Z

    if-eqz v4, :cond_a

    .line 7113
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncomingLteCall, connected to wifi"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 247
    :goto_2
    if-nez v0, :cond_9

    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v2, p1, Less;->c:Lest;

    iget-object v3, p1, Less;->a:Lerc;

    iget-object v4, p1, Less;->b:Leum;

    .line 7154
    iget-boolean v4, v4, Leum;->a:Z

    if-eqz v4, :cond_10

    .line 7155
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncoming3GCall, connected to wifi"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 249
    :goto_3
    if-eqz v0, :cond_14

    .line 251
    :cond_9
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, falling back to cellular data"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    new-instance v1, Lesg;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v2, v0, Lesg;->a:Lcgs;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v3, v0, Lesg;->b:Ljava/lang/String;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-wide v4, v0, Lesg;->c:J

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-wide v6, v0, Lesg;->d:J

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v8, v0, Lesg;->e:Lero;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget v9, v0, Lesg;->f:I

    iget-object v11, p1, Less;->c:Lest;

    invoke-direct/range {v1 .. v11}, Lesg;-><init>(Lcgs;Ljava/lang/String;JJLero;IZLest;)V

    iput-object v1, p0, Lesd;->e:Lesg;

    goto/16 :goto_0

    .line 7117
    :cond_a
    iget v3, v3, Lerc;->e:I

    const/16 v4, 0xd

    if-eq v3, v4, :cond_b

    .line 7118
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncomingLteCall, not connected to LTE"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7119
    goto :goto_2

    .line 7122
    :cond_b
    invoke-static {v0}, Laal;->k(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 7123
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncomingLteCall, not connected to internet"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7124
    goto :goto_2

    .line 7127
    :cond_c
    invoke-static {v0, v2}, Laal;->a(Landroid/content/Context;Lest;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 7128
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncomingLteCall, allowing possible emergency callback over LTE"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 7130
    goto :goto_2

    .line 7133
    :cond_d
    const-string v3, "babel_lte_incoming_call_allowed"

    invoke-static {v0, v3, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 7135
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncomingLteCall, any incoming call over LTE allowed by config"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 7137
    goto/16 :goto_2

    .line 7140
    :cond_e
    invoke-virtual {v2}, Lest;->c()I

    move-result v3

    invoke-static {v0, v3, v10}, Laal;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7141
    const-string v0, "Babel_telephony"

    const-string v3, "TeleWifiCallThreshold.shouldAllowIncomingLteCall,on carrier where we support voip calling over LTE, carrierId: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7143
    invoke-virtual {v2}, Lest;->c()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 7141
    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 7144
    goto/16 :goto_2

    .line 7147
    :cond_f
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncomingLteCall, returning false"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7148
    goto/16 :goto_2

    .line 7159
    :cond_10
    iget v3, v3, Lerc;->e:I

    invoke-static {v3}, Laal;->l(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 7160
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncoming3GCall, not connected to 3G"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7161
    goto/16 :goto_3

    .line 7164
    :cond_11
    invoke-static {v0}, Laal;->k(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 7165
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncoming3GCall, not connected to internet"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7166
    goto/16 :goto_3

    .line 7169
    :cond_12
    invoke-virtual {v2}, Lest;->c()I

    move-result v3

    invoke-static {v0, v3, v10}, Laal;->b(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7170
    const-string v0, "Babel_telephony"

    const-string v3, "TeleWifiCallThreshold.shouldAllowIncoming3GCall,on carrier where we support voip calling over 3G, carrierId: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7172
    invoke-virtual {v2}, Lest;->c()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 7170
    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v10

    .line 7173
    goto/16 :goto_3

    .line 7176
    :cond_13
    const-string v0, "Babel_telephony"

    const-string v2, "TeleWifiCallThreshold.shouldAllowIncoming3GCall, returning false"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7177
    goto/16 :goto_3

    .line 259
    :cond_14
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v2, p1, Less;->c:Lest;

    iget-object v3, p1, Less;->a:Lerc;

    iget-object v4, p1, Less;->b:Leum;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Laal;->a(Landroid/content/Context;Lest;Lerc;Leum;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 7284
    iget-boolean v0, p0, Lesd;->d:Z

    if-eqz v0, :cond_15

    .line 7285
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldCheckExtraNetworkAttributes, not checking, falling back to Wi-Fi"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 262
    :goto_4
    if-nez v0, :cond_18

    .line 263
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, not checking extra network attributes."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7290
    :cond_15
    iget-object v0, p1, Less;->b:Leum;

    iget-boolean v0, v0, Leum;->a:Z

    if-eqz v0, :cond_16

    iget-object v0, p1, Less;->a:Lerc;

    if-eqz v0, :cond_16

    iget-object v0, p1, Less;->a:Lerc;

    .line 7291
    invoke-virtual {v0}, Lerc;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7292
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldCheckExtraNetworkAttributes, not checking, no cell service"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7294
    goto :goto_4

    .line 7297
    :cond_16
    iget-object v0, p1, Less;->b:Leum;

    iget-boolean v0, v0, Leum;->a:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v2, p1, Less;->c:Lest;

    invoke-static {v0, v2}, Laal;->a(Landroid/content/Context;Lest;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 7299
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldCheckExtraNetworkAttributes, not checking, potential emergency callback over LTE"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7301
    goto :goto_4

    :cond_17
    move v0, v10

    .line 7304
    goto :goto_4

    .line 7309
    :cond_18
    iget-object v0, p1, Less;->b:Leum;

    iget-boolean v0, v0, Leum;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "wifi"

    .line 7311
    :goto_5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "_network_type_%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7313
    iget-object v2, p0, Lesd;->a:Landroid/content/Context;

    const-string v3, "babel_stun_ping_latency_millis"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const-wide/16 v4, 0x64

    invoke-static {v2, v0, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 7316
    iget-object v0, p0, Lesd;->e:Lesg;

    iget v0, v0, Lesg;->f:I

    .line 7517
    sget-object v4, Ldvp;->N:Ldml;

    invoke-virtual {v4, v0}, Ldml;->b(I)Z

    move-result v0

    .line 7320
    iget-boolean v4, p1, Less;->g:Z

    if-nez v4, :cond_19

    iget-boolean v4, p1, Less;->e:Z

    if-eqz v4, :cond_19

    iget-wide v4, p1, Less;->f:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_1d

    .line 7322
    :cond_19
    if-eqz v0, :cond_1c

    .line 7323
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.hasAcceptableStunPingLatency, not acceptable, didTimeout: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Less;->g:Z

    iget-boolean v4, p1, Less;->e:Z

    iget-wide v6, p1, Less;->f:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x49

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wasStunPingSuccessful: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", latency millis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7327
    const/16 v0, 0xb51

    iget-boolean v2, p1, Less;->e:Z

    iget-wide v4, p1, Less;->f:J

    long-to-int v3, v4

    invoke-direct {p0, v0, v2, v3}, Lesd;->a(IZI)V

    move v0, v1

    .line 267
    :goto_7
    if-nez v0, :cond_1f

    .line 268
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, poor stun latency on Wi-Fi"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 269
    goto/16 :goto_0

    .line 7310
    :cond_1a
    iget-object v0, p1, Less;->a:Lerc;

    iget v0, v0, Lerc;->e:I

    invoke-static {v0}, Laal;->k(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 7313
    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 7331
    :cond_1c
    const/16 v0, 0xb53

    iget-boolean v2, p1, Less;->e:Z

    iget-wide v4, p1, Less;->f:J

    long-to-int v3, v4

    invoke-direct {p0, v0, v2, v3}, Lesd;->a(IZI)V

    :goto_8
    move v0, v10

    .line 7343
    goto :goto_7

    .line 7335
    :cond_1d
    if-eqz v0, :cond_1e

    .line 7336
    const/16 v0, 0xb52

    iget-boolean v2, p1, Less;->e:Z

    iget-wide v4, p1, Less;->f:J

    long-to-int v3, v4

    invoke-direct {p0, v0, v2, v3}, Lesd;->a(IZI)V

    goto :goto_8

    .line 7339
    :cond_1e
    const/16 v0, 0xb54

    iget-boolean v2, p1, Less;->e:Z

    iget-wide v4, p1, Less;->f:J

    long-to-int v3, v4

    invoke-direct {p0, v0, v2, v3}, Lesd;->a(IZI)V

    goto :goto_8

    .line 8370
    :cond_1f
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v2, p1, Less;->c:Lest;

    iget-object v3, p1, Less;->d:Lcom/google/android/gms/herrevad/PredictedNetworkQuality;

    iget-object v4, p1, Less;->a:Lerc;

    invoke-static {v0, v2, v3, v4}, Laal;->a(Landroid/content/Context;Lest;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;Lerc;)Z

    move-result v2

    .line 9351
    iget-object v0, p0, Lesd;->e:Lesg;

    iget v0, v0, Lesg;->f:I

    if-ne v0, v9, :cond_20

    move v0, v1

    .line 8373
    :goto_9
    if-eqz v0, :cond_22

    .line 8374
    if-eqz v2, :cond_21

    .line 10366
    const/16 v0, 0xb4d

    invoke-direct {p0, v0, v1, v9}, Lesd;->a(IZI)V

    :goto_a
    move v0, v10

    .line 270
    :goto_b
    if-nez v0, :cond_24

    .line 271
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, poor herrevad score for Wi-Fi"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 272
    goto/16 :goto_0

    .line 9352
    :cond_20
    iget-object v0, p0, Lesd;->e:Lesg;

    iget v0, v0, Lesg;->f:I

    .line 9492
    sget-object v3, Ldvp;->K:Ldml;

    invoke-virtual {v3, v0}, Ldml;->b(I)Z

    move-result v0

    goto :goto_9

    .line 11366
    :cond_21
    const/16 v0, 0xb4f

    invoke-direct {p0, v0, v1, v9}, Lesd;->a(IZI)V

    .line 8379
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.hasAcceptableHerrevadScore, using cell due to bad herrevad network quality score for the wifi network"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 8381
    goto :goto_b

    .line 8384
    :cond_22
    if-eqz v2, :cond_23

    .line 12366
    const/16 v0, 0xb4e

    invoke-direct {p0, v0, v1, v9}, Lesd;->a(IZI)V

    goto :goto_a

    .line 13366
    :cond_23
    const/16 v0, 0xb50

    invoke-direct {p0, v0, v1, v9}, Lesd;->a(IZI)V

    goto :goto_a

    .line 274
    :cond_24
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, Wi-Fi signal is good"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 279
    :cond_25
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.shouldAllowRing, returning false"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v10, v1

    .line 280
    goto/16 :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 421
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallInvite.cleanupInvite"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iput-boolean v3, p0, Lesd;->g:Z

    .line 425
    iget-boolean v0, p0, Lesd;->h:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lesd;->i:Z

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v1, p0, Lesd;->e:Lesg;

    iget v1, v1, Lesg;->f:I

    iget-object v2, p0, Lesd;->e:Lesg;

    iget-object v2, v2, Lesg;->b:Ljava/lang/String;

    const/16 v3, 0x921

    invoke-static {v0, v1, v2, v3}, Laal;->a(Landroid/content/Context;ILjava/lang/String;I)V

    .line 429
    :cond_0
    iget-object v0, p0, Lesd;->b:Lesf;

    invoke-interface {v0, p0}, Lesf;->a(Lesd;)V

    .line 430
    iget-object v0, p0, Lesd;->f:Leaw;

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lesd;->f:Leaw;

    invoke-virtual {v0}, Leaw;->d()V

    .line 433
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Leaw;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 93
    const-string v0, "Babel_telephony"

    const-string v2, "TeleIncomingWifiCallInvite.startProcessing"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {p0}, Lesd;->a()Z

    move-result v0

    .line 1134
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 97
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lesd;->d:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    .line 2134
    :goto_0
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 98
    iput-boolean v1, p0, Lesd;->g:Z

    .line 99
    if-eqz p1, :cond_1

    .line 100
    iput-object p1, p0, Lesd;->f:Leaw;

    .line 101
    invoke-virtual {p1}, Leaw;->h()V

    .line 104
    :cond_1
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    invoke-static {v0}, Laal;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallInvite.startProcessing, no permissions."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-direct {p0}, Lesd;->c()V

    .line 124
    :goto_1
    return-void

    :cond_2
    move v0, v5

    .line 97
    goto :goto_0

    .line 107
    :cond_3
    iget-boolean v0, p0, Lesd;->d:Z

    if-eqz v0, :cond_5

    .line 3127
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v5, v1}, Lera;->a(Landroid/content/Context;II)Lerc;

    move-result-object v1

    .line 3129
    new-instance v0, Less;

    iget-object v2, p0, Lesd;->a:Landroid/content/Context;

    invoke-static {v2}, Leuh;->a(Landroid/content/Context;)Leum;

    move-result-object v2

    iget-object v3, p0, Lesd;->e:Lesg;

    iget-object v3, v3, Lesg;->h:Lest;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move v8, v5

    invoke-direct/range {v0 .. v8}, Less;-><init>(Lerc;Leum;Lest;Lcom/google/android/gms/herrevad/PredictedNetworkQuality;ZJZ)V

    .line 108
    invoke-direct {p0, v0}, Lesd;->b(Less;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallInvite.startProcessing, falling back to Wi-Fi"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v1, p0, Lesd;->e:Lesg;

    invoke-static {v0, v1}, Laal;->a(Landroid/content/Context;Lesg;)V

    .line 111
    invoke-direct {p0}, Lesd;->b()V

    .line 115
    :goto_2
    invoke-direct {p0}, Lesd;->c()V

    goto :goto_1

    .line 113
    :cond_4
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallInvite.startProcessing, not falling back to Wi-Fi"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 117
    :cond_5
    new-instance v0, Lesq;

    iget-object v1, p0, Lesd;->a:Landroid/content/Context;

    new-instance v2, Lese;

    invoke-direct {v2, p0}, Lese;-><init>(Lesd;)V

    invoke-direct {v0, v1, v2}, Lesq;-><init>(Landroid/content/Context;Lesr;)V

    .line 122
    invoke-virtual {v0}, Lesq;->a()V

    goto :goto_1
.end method

.method public a(Less;)V
    .locals 12

    .prologue
    .line 147
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallInvite.processInviteWithState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-boolean v0, p0, Lesd;->g:Z

    if-nez v0, :cond_0

    .line 149
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallInvite.processInviteWithState, invite cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v1, Lesg;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v2, v0, Lesg;->a:Lcgs;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v3, v0, Lesg;->b:Ljava/lang/String;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-wide v4, v0, Lesg;->c:J

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-wide v6, v0, Lesg;->d:J

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v8, v0, Lesg;->e:Lero;

    iget-object v0, p0, Lesd;->e:Lesg;

    iget v9, v0, Lesg;->f:I

    iget-object v0, p0, Lesd;->e:Lesg;

    iget-boolean v10, v0, Lesg;->g:Z

    iget-object v11, p1, Less;->c:Lest;

    invoke-direct/range {v1 .. v11}, Lesg;-><init>(Lcgs;Ljava/lang/String;JJLero;IZLest;)V

    iput-object v1, p0, Lesd;->e:Lesg;

    .line 161
    iget-object v0, p0, Lesd;->a:Landroid/content/Context;

    iget-object v1, p0, Lesd;->e:Lesg;

    invoke-static {v0, v1}, Laal;->a(Landroid/content/Context;Lesg;)V

    .line 163
    invoke-direct {p0, p1}, Lesd;->b(Less;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-direct {p0}, Lesd;->b()V

    .line 172
    :cond_1
    :goto_1
    invoke-direct {p0}, Lesd;->c()V

    goto :goto_0

    .line 166
    :cond_2
    iget-boolean v0, p0, Lesd;->d:Z

    if-nez v0, :cond_1

    .line 170
    iget-object v2, p0, Lesd;->a:Landroid/content/Context;

    iget-object v3, p0, Lesd;->e:Lesg;

    .line 4049
    const-string v0, "phone"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 4051
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4052
    const-string v0, "babel_fallback_to_wifi_timeout_cdma_millis"

    const/16 v1, 0x1388

    invoke-static {v2, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 4032
    :goto_2
    if-gez v1, :cond_4

    .line 4033
    const-string v0, "Babel_telephony"

    const-string v1, "TeleIncomingWifiCallFallback.scheduleAlarm, fallback disabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4034
    const/4 v0, 0x0

    .line 170
    :goto_3
    iput-boolean v0, p0, Lesd;->i:Z

    goto :goto_1

    .line 4055
    :cond_3
    const-string v0, "babel_fallback_to_wifi_timeout_gsm_millis"

    const/16 v1, 0x1388

    invoke-static {v2, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    goto :goto_2

    .line 4037
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.google.android.apps.hangouts.telephony.TeleIncomingWifiCallFallback.ALARM"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "invite_info"

    invoke-virtual {v3}, Lesg;->a()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 4038
    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 4040
    const-string v0, "Babel_telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x50

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "TeleIncomingWifiCallFallback.scheduleAlarm, scheduling for (millis): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4042
    const-string v0, "alarm"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 4043
    const/4 v2, 0x2

    .line 4044
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 4043
    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 4045
    const/4 v0, 0x1

    goto :goto_3
.end method

.method a()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    const-string v2, "Babel_telephony"

    const-string v3, "TeleIncomingWifiCallInvite.shouldProcess"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v2, p0, Lesd;->a:Landroid/content/Context;

    invoke-static {v2}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v3

    .line 72
    iget-object v2, p0, Lesd;->e:Lesg;

    iget v2, v2, Lesg;->f:I

    invoke-virtual {v3}, Leut;->f()I

    move-result v4

    if-ne v2, v4, :cond_1

    move v2, v0

    .line 73
    :goto_0
    if-eqz v2, :cond_2

    .line 74
    const-string v2, "Babel_telephony"

    const-string v3, "TeleIncomingWifiCallInvite.shouldProcess, processing invite for Tycho  account"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 72
    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v3}, Leut;->b()I

    move-result v2

    .line 80
    iget-object v3, p0, Lesd;->e:Lesg;

    iget v3, v3, Lesg;->f:I

    if-eq v3, v2, :cond_0

    .line 81
    iget-object v3, p0, Lesd;->a:Landroid/content/Context;

    iget-object v4, p0, Lesd;->e:Lesg;

    iget v4, v4, Lesg;->f:I

    invoke-static {v3, v4}, Ldvd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 82
    const-string v4, "Babel_telephony"

    const-string v5, "TeleIncomingWifiCallInvite.shouldProcess, selected account id: %d doesn\'t match incoming account: %s, id: %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    .line 84
    invoke-static {v3}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lesd;->e:Lesg;

    iget v2, v2, Lesg;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    .line 82
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 85
    goto :goto_1
.end method

.method a(Lcgs;)Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lesd;->e:Lesg;

    iget-object v0, v0, Lesg;->a:Lcgs;

    invoke-virtual {v0, p1}, Lcgs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lesd;->c()V

    .line 137
    const/4 v0, 0x1

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
