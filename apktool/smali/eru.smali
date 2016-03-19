.class final Leru;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqt;


# instance fields
.field a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lerg;

.field private final d:Lerx;

.field private final e:Leqs;

.field private f:Leqs;

.field private g:Lerg;

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/telecom/DisconnectCause;

.field private l:Z

.field private m:Landroid/os/Handler;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lerg;Lerx;I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Leru;->i:I

    .line 46
    iput v0, p0, Leru;->j:I

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leru;->m:Landroid/os/Handler;

    .line 52
    new-instance v0, Lerv;

    invoke-direct {v0, p0}, Lerv;-><init>(Leru;)V

    iput-object v0, p0, Leru;->n:Ljava/lang/Runnable;

    .line 107
    iput-object p1, p0, Leru;->b:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Leru;->c:Lerg;

    .line 109
    iput-object p3, p0, Leru;->d:Lerx;

    .line 110
    iput p4, p0, Leru;->h:I

    .line 111
    invoke-virtual {p2}, Lerg;->j()Leqs;

    move-result-object v0

    iput-object v0, p0, Leru;->e:Leqs;

    .line 112
    iget-object v0, p0, Leru;->e:Leqs;

    invoke-interface {v0, p0}, Leqs;->a(Leqt;)V

    .line 113
    invoke-virtual {p2}, Lerg;->getState()I

    move-result v0

    iput v0, p0, Leru;->i:I

    .line 114
    invoke-virtual {p2, p0}, Lerg;->a(Leru;)V

    .line 115
    iget-object v0, p0, Leru;->e:Leqs;

    invoke-interface {v0}, Leqs;->b()V

    .line 116
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Leru;->c:Lerg;

    invoke-virtual {v0}, Lerg;->getState()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 380
    packed-switch p1, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 384
    :pswitch_1
    iget-object v0, p0, Leru;->c:Lerg;

    invoke-virtual {v0}, Lerg;->setRinging()V

    goto :goto_0

    .line 387
    :pswitch_2
    iget-object v0, p0, Leru;->c:Lerg;

    invoke-virtual {v0}, Lerg;->setDialing()V

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object v0, p0, Leru;->c:Lerg;

    invoke-virtual {v0}, Lerg;->setActive()V

    goto :goto_0

    .line 393
    :pswitch_4
    iget-object v0, p0, Leru;->c:Lerg;

    invoke-virtual {v0}, Lerg;->setOnHold()V

    goto :goto_0

    .line 396
    :pswitch_5
    iget-object v0, p0, Leru;->k:Landroid/telecom/DisconnectCause;

    .line 3198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object v0, p0, Leru;->c:Lerg;

    iget-object v1, p0, Leru;->k:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 398
    iget-object v0, p0, Leru;->c:Lerg;

    invoke-virtual {v0}, Lerg;->destroy()V

    .line 399
    iget-object v0, p0, Leru;->c:Lerg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lerg;->b(Leqs;)V

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static a(Landroid/content/Context;Lerg;I)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 63
    const-string v0, "Babel_telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TeleHandoffController.handoffWifiToCellular, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Lerg;->k()Leru;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 66
    if-ne p2, v4, :cond_0

    .line 67
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffController.handoffWifiToCellular, notify handoff about network loss"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Lerg;->k()Leru;

    move-result-object v0

    .line 1422
    iget v1, v0, Leru;->h:I

    if-eq v1, v4, :cond_0

    .line 1423
    iput v4, v0, Leru;->h:I

    .line 1424
    iget-object v1, v0, Leru;->f:Leqs;

    if-eqz v1, :cond_0

    .line 1425
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Leru;->a(ZI)V

    .line 72
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffController.handoffWifiToCellular, handoff pending, skipping"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p1}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    const-string v1, "telecom"

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 76
    new-instance v1, Lery;

    invoke-direct {v1, p0, v0}, Lery;-><init>(Landroid/content/Context;Landroid/telecom/TelecomManager;)V

    .line 78
    new-instance v0, Leru;

    invoke-direct {v0, p0, p1, v1, p2}, Leru;-><init>(Landroid/content/Context;Lerg;Lerx;I)V

    .line 80
    invoke-virtual {v1, v0}, Lery;->a(Leru;)V

    .line 81
    invoke-virtual {v1}, Lery;->a()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 101
    invoke-static {p0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    const-string v1, "babel_manual_handoff_allowed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Leqs;ZIZ)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 150
    invoke-static {p0}, Laal;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, no permissions"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 270
    :goto_0
    return v0

    .line 155
    :cond_0
    invoke-interface {p1}, Leqs;->d()I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-static {p0}, Laal;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, can\'t make cell calls"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 157
    goto :goto_0

    .line 160
    :cond_1
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    if-eqz p2, :cond_2

    .line 162
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff is already complete"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 163
    goto :goto_0

    .line 168
    :cond_2
    invoke-interface {p1}, Leqs;->a()Lerg;

    move-result-object v0

    invoke-virtual {v0}, Lerg;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff not allowed for LTE fallback calls"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 171
    goto :goto_0

    .line 174
    :cond_3
    invoke-static {p0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v0

    .line 176
    packed-switch p3, :pswitch_data_0

    .line 245
    :pswitch_0
    const-string v0, "Babel_telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x4c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleHandoffController.isHandoffPossible, unknown handoff reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 247
    goto :goto_0

    .line 178
    :pswitch_1
    invoke-static {p0}, Leru;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 179
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, manual handoff not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 180
    goto :goto_0

    .line 184
    :pswitch_2
    invoke-interface {p1}, Leqs;->d()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 185
    const-string v2, "babel_handoff_on_wifi_loss_allowed"

    invoke-interface {v0, v2, v3}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 187
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff on wifi loss not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 189
    goto/16 :goto_0

    .line 192
    :cond_4
    const-string v2, "babel_handoff_on_cell_loss_allowed"

    invoke-interface {v0, v2, v3}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 194
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff on cell loss not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 196
    goto/16 :goto_0

    .line 207
    :pswitch_3
    invoke-interface {p1}, Leqs;->a()Lerg;

    move-result-object v2

    invoke-virtual {v2}, Lerg;->f()Lesw;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lesw;->c()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v2}, Lezm;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 209
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, emergency call, handoff for network optimization not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 211
    goto/16 :goto_0

    .line 213
    :cond_5
    if-eqz p4, :cond_6

    .line 214
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, network optimizing handoff disabled when calling network was choosen manually"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 216
    goto/16 :goto_0

    .line 218
    :cond_6
    const/16 v2, 0xa

    if-ne p3, v2, :cond_8

    .line 219
    const-string v2, "babel_activity_handoff_allowed"

    invoke-interface {v0, v2, v3}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 222
    if-eqz v2, :cond_7

    const-string v0, "allowed."

    .line 223
    :goto_1
    const-string v4, "Babel_telephony"

    const-string v5, "TeleHandoffController.isHandoffPossible, activity recognition handoff is %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v4, v5, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 225
    goto/16 :goto_0

    .line 222
    :cond_7
    const-string v0, "not allowed."

    goto :goto_1

    .line 226
    :cond_8
    invoke-interface {p1}, Leqs;->d()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 227
    const-string v2, "babel_wifi_network_optimizing_handoff_allowed"

    invoke-interface {v0, v2, v3}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 230
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff for wifi network optimization not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 232
    goto/16 :goto_0

    .line 235
    :cond_9
    const-string v2, "babel_cell_network_optimizing_handoff_allowed"

    invoke-interface {v0, v2, v3}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 238
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff for cell network optimization not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 240
    goto/16 :goto_0

    .line 250
    :cond_a
    invoke-interface {p1}, Leqs;->a()Lerg;

    move-result-object v2

    invoke-virtual {v2}, Lerg;->h()Lest;

    move-result-object v2

    .line 252
    invoke-virtual {v2, p0}, Lest;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "babel_international_handoff_allowed"

    .line 253
    invoke-interface {v0, v4, v1}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_b

    .line 256
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff while international not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 258
    goto/16 :goto_0

    .line 262
    :cond_b
    invoke-virtual {v2}, Lest;->a()I

    move-result v2

    if-eq v2, v3, :cond_c

    const-string v2, "babel_roaming_handoff_allowed"

    .line 263
    invoke-interface {v0, v2, v3}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 266
    const-string v0, "Babel_telephony"

    const-string v2, "TeleHandoffController.isHandoffPossible, handoff while roaming not allowed"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 267
    goto/16 :goto_0

    :cond_c
    move v0, v3

    .line 270
    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static b(Landroid/content/Context;Lerg;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    const-string v0, "Babel_telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "TeleHandoffController.handoffCellularToWifi, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lerg;->k()Leru;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffController.handoffCellularToWifi, handoff pending, skipping"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lert;

    .line 92
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lert;-><init>(Landroid/content/Context;Lcfc;)V

    .line 93
    new-instance v1, Leru;

    invoke-direct {v1, p0, p1, v0, p2}, Leru;-><init>(Landroid/content/Context;Lerg;Lerx;I)V

    .line 95
    invoke-virtual {v0, v1}, Lert;->a(Leru;)V

    .line 96
    invoke-virtual {v0}, Lert;->a()V

    goto :goto_0
.end method


# virtual methods
.method a()Lerg;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Leru;->c:Lerg;

    return-object v0
.end method

.method a(Leqs;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 274
    const-string v0, "Babel_telephony"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x34

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TeleHandoffController.onHandoffStarted, theNewCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Leru;->b:Landroid/content/Context;

    const-string v1, "babel_handoff_timeout_millis"

    const/16 v2, 0x7530

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 278
    iget-object v1, p0, Leru;->m:Landroid/os/Handler;

    iget-object v2, p0, Leru;->n:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    iput-object p1, p0, Leru;->f:Leqs;

    .line 281
    iget-object v0, p0, Leru;->f:Leqs;

    invoke-interface {v0, p0}, Leqs;->a(Leqt;)V

    .line 285
    new-instance v0, Lerg;

    iget-object v1, p0, Leru;->e:Leqs;

    invoke-interface {v1}, Leqs;->a()Lerg;

    move-result-object v1

    invoke-virtual {v1}, Lerg;->f()Lesw;

    move-result-object v1

    iget-object v2, p0, Leru;->e:Leqs;

    .line 286
    invoke-interface {v2}, Leqs;->a()Lerg;

    move-result-object v2

    invoke-virtual {v2}, Lerg;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lerg;-><init>(Lesw;Ljava/lang/String;)V

    iput-object v0, p0, Leru;->g:Lerg;

    .line 287
    iget-object v0, p0, Leru;->g:Lerg;

    invoke-virtual {v0}, Lerg;->setDialing()V

    .line 288
    iget-object v0, p0, Leru;->g:Lerg;

    iget-object v1, p0, Leru;->f:Leqs;

    invoke-virtual {v0, v1}, Lerg;->b(Leqs;)V

    .line 290
    iget v0, p0, Leru;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v6}, Leru;->a(ZI)V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Leru;->g()V

    goto :goto_0
.end method

.method public final a(Leqs;I)V
    .locals 3

    .prologue
    .line 343
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffController.onTeleCallStateChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    .line 345
    iget-object v0, p0, Leru;->e:Leqs;

    if-ne p1, v0, :cond_2

    .line 346
    iput p2, p0, Leru;->i:I

    .line 350
    :cond_0
    :goto_0
    invoke-virtual {p0}, Leru;->g()V

    .line 352
    :cond_1
    return-void

    .line 347
    :cond_2
    iget-object v0, p0, Leru;->f:Leqs;

    if-ne p1, v0, :cond_0

    .line 348
    iput p2, p0, Leru;->j:I

    goto :goto_0
.end method

.method public final a(Leqs;Landroid/telecom/DisconnectCause;)V
    .locals 4

    .prologue
    const/4 v3, 0x6

    .line 357
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffController.onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    iget-object v0, p0, Leru;->e:Leqs;

    if-ne p1, v0, :cond_1

    .line 359
    iput v3, p0, Leru;->i:I

    .line 363
    :cond_0
    :goto_0
    iput-object p2, p0, Leru;->k:Landroid/telecom/DisconnectCause;

    .line 364
    invoke-virtual {p0}, Leru;->g()V

    .line 365
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Leru;->f:Leqs;

    if-ne p1, v0, :cond_0

    .line 361
    iput v3, p0, Leru;->j:I

    goto :goto_0
.end method

.method a(ZI)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 298
    iget-boolean v0, p0, Leru;->l:Z

    if-eqz v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 301
    :cond_0
    iput-boolean v4, p0, Leru;->l:Z

    .line 302
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffController.onHandoffComplete(%b, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 303
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 302
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Leru;->e:Leqs;

    invoke-interface {v0, p0}, Leqs;->b(Leqt;)V

    .line 306
    iget-object v0, p0, Leru;->f:Leqs;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Leru;->f:Leqs;

    invoke-interface {v0, p0}, Leqs;->b(Leqt;)V

    .line 308
    if-nez p1, :cond_1

    .line 309
    iget-object v0, p0, Leru;->f:Leqs;

    iget v1, p0, Leru;->h:I

    invoke-interface {v0, v1, p2}, Leqs;->a(II)V

    .line 312
    :cond_1
    iget-object v0, p0, Leru;->g:Lerg;

    if-eqz v0, :cond_3

    .line 313
    if-eqz p1, :cond_2

    iget-object v0, p0, Leru;->g:Lerg;

    .line 314
    invoke-virtual {v0}, Lerg;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 315
    iget-object v0, p0, Leru;->c:Lerg;

    iget-object v1, p0, Leru;->g:Lerg;

    invoke-virtual {v1}, Lerg;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lerg;->a(Ljava/lang/String;)V

    .line 317
    :cond_2
    iget-object v0, p0, Leru;->g:Lerg;

    invoke-virtual {v0, v5}, Lerg;->b(Leqs;)V

    .line 318
    iput-object v5, p0, Leru;->g:Lerg;

    .line 320
    :cond_3
    iget-object v0, p0, Leru;->c:Lerg;

    invoke-virtual {v0, v5}, Lerg;->a(Leru;)V

    .line 321
    iget-object v0, p0, Leru;->m:Landroid/os/Handler;

    iget-object v1, p0, Leru;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    if-eqz p1, :cond_6

    .line 324
    iget-object v0, p0, Leru;->f:Leqs;

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Leru;->f:Leqs;

    .line 2406
    invoke-interface {v0, v4}, Leqs;->a(Z)V

    .line 2410
    iget-object v1, p0, Leru;->m:Landroid/os/Handler;

    new-instance v2, Lerw;

    invoke-direct {v2, p0, v0}, Lerw;-><init>(Leru;Leqs;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    iget-object v0, p0, Leru;->c:Lerg;

    iget-object v1, p0, Leru;->f:Leqs;

    invoke-virtual {v0, v1}, Lerg;->b(Leqs;)V

    .line 328
    :cond_4
    iget v0, p0, Leru;->j:I

    invoke-direct {p0, v0}, Leru;->a(I)V

    .line 329
    iget-object v0, p0, Leru;->e:Leqs;

    iget v1, p0, Leru;->h:I

    invoke-interface {v0, v1, p2}, Leqs;->a(II)V

    .line 337
    :cond_5
    :goto_1
    iget-object v0, p0, Leru;->d:Lerx;

    invoke-interface {v0}, Lerx;->c()V

    goto/16 :goto_0

    .line 331
    :cond_6
    iget v0, p0, Leru;->i:I

    invoke-direct {p0, v0}, Leru;->a(I)V

    .line 332
    iget-object v0, p0, Leru;->e:Leqs;

    invoke-interface {v0}, Leqs;->b()V

    .line 333
    iget v0, p0, Leru;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 334
    iget-object v0, p0, Leru;->e:Leqs;

    iget v1, p0, Leru;->h:I

    invoke-interface {v0, v1, p2}, Leqs;->a(II)V

    goto :goto_1
.end method

.method b()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Leru;->i:I

    return v0
.end method

.method c()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Leru;->j:I

    return v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Leru;->a:Z

    return v0
.end method

.method e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 135
    const-string v0, "Babel_telephony"

    const-string v1, "TeleHandoffController.cancelHandoffAndEndCall"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Leru;->f:Leqs;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Leru;->f:Leqs;

    invoke-interface {v0}, Leqs;->g()V

    .line 139
    :cond_0
    iget-object v0, p0, Leru;->e:Leqs;

    invoke-interface {v0}, Leqs;->g()V

    .line 140
    const/16 v0, 0xdb

    invoke-virtual {p0, v3, v0}, Leru;->a(ZI)V

    .line 141
    return-void
.end method

.method f()Z
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Leru;->b:Landroid/content/Context;

    iget-object v1, p0, Leru;->e:Leqs;

    iget-boolean v2, p0, Leru;->l:Z

    iget v3, p0, Leru;->h:I

    .line 145
    invoke-virtual {p0}, Leru;->a()Lerg;

    move-result-object v4

    invoke-virtual {v4}, Lerg;->u()Z

    move-result v4

    .line 144
    invoke-static {v0, v1, v2, v3, v4}, Leru;->a(Landroid/content/Context;Leqs;ZIZ)Z

    move-result v0

    return v0
.end method

.method g()V
    .locals 6

    .prologue
    .line 368
    const-string v0, "Babel_telephony"

    iget v1, p0, Leru;->i:I

    .line 369
    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Leru;->j:I

    .line 370
    invoke-static {v2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4a

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "TeleHandoffController.checkHandoffComplete, oldCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", newCallState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 368
    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Leru;->d:Lerx;

    invoke-interface {v0}, Lerx;->b()V

    .line 372
    return-void
.end method
