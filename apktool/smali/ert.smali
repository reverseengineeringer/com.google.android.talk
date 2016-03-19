.class final Lert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lerx;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcfc;

.field private c:Leru;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcfc;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lert;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lert;->b:Lcfc;

    .line 43
    return-void
.end method


# virtual methods
.method a()V
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 50
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHandoffCellularToWifi.startHandoff"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v1, p0, Lert;->c:Leru;

    invoke-virtual {v1}, Leru;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    iget-object v1, p0, Lert;->c:Leru;

    const/16 v2, 0xe0

    invoke-virtual {v1, v3, v2}, Leru;->a(ZI)V

    .line 101
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, p0, Lert;->b:Lcfc;

    invoke-virtual {v1}, Lcfc;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHandoffCellularToWifi.startHandoff, wifi call already exists"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lert;->c:Leru;

    const/16 v2, 0xdd

    invoke-virtual {v1, v3, v2}, Leru;->a(ZI)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lert;->c:Leru;

    invoke-virtual {v1}, Leru;->a()Lerg;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lert;->c:Leru;

    invoke-virtual {v2}, Leru;->b()I

    move-result v2

    .line 66
    const/4 v5, 0x4

    if-eq v2, v5, :cond_3

    .line 69
    const-string v4, "Babel_telephony"

    const-string v5, "TeleHandoffCellularToWifi.isHandoffPossible, not possible for call state: "

    .line 70
    invoke-static {v2}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 69
    invoke-static {v4, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lert;->c:Leru;

    const/16 v2, 0xe3

    invoke-virtual {v1, v3, v2}, Leru;->a(ZI)V

    goto :goto_0

    .line 70
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {v1}, Lerg;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 76
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHandoffCellularToWifi.startHandoff, no account name"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lert;->c:Leru;

    const/16 v2, 0xe1

    invoke-virtual {v1, v3, v2}, Leru;->a(ZI)V

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {v1}, Lerg;->p()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 82
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHandoffCellularToWifi.startHandoff, no hangout id"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lert;->c:Leru;

    const/16 v2, 0xe2

    invoke-virtual {v1, v3, v2}, Leru;->a(ZI)V

    goto :goto_0

    .line 87
    :cond_5
    invoke-virtual {v1}, Lerg;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 89
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHandoffCellularToWifi.startHandoff, in conference"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lert;->c:Leru;

    const/16 v2, 0xe4

    invoke-virtual {v1, v3, v2}, Leru;->a(ZI)V

    goto/16 :goto_0

    .line 94
    :cond_6
    iget-object v1, p0, Lert;->a:Landroid/content/Context;

    invoke-static {v1}, Laal;->l(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 95
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHandoffCellularToWifi.startHandoff, not connected to wifi"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lert;->c:Leru;

    const/16 v2, 0xd2

    invoke-virtual {v1, v3, v2}, Leru;->a(ZI)V

    goto/16 :goto_0

    .line 1116
    :cond_7
    const-string v1, "Babel_telephony"

    const-string v2, "TeleHandoffCellularToWifi.createWifiCall"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    iget-object v1, p0, Lert;->c:Leru;

    invoke-virtual {v1}, Leru;->a()Lerg;

    move-result-object v14

    .line 1119
    new-instance v1, Lcgu;

    .line 1120
    invoke-virtual {v14}, Lerg;->n()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lcgu;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x2

    .line 1121
    invoke-virtual {v1, v2}, Lcgu;->a(I)Lcgu;

    move-result-object v1

    .line 1122
    invoke-virtual {v14}, Lerg;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcgu;->e(Ljava/lang/String;)Lcgu;

    move-result-object v1

    .line 1123
    invoke-virtual {v14}, Lerg;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcgu;->h(Ljava/lang/String;)Lcgu;

    move-result-object v1

    .line 1124
    invoke-virtual {v1}, Lcgu;->a()Lcgs;

    move-result-object v8

    .line 1126
    new-instance v12, Llbz;

    invoke-direct {v12}, Llbz;-><init>()V

    .line 1128
    invoke-virtual {v14}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v1

    .line 1127
    invoke-static {v1}, Laal;->h(Landroid/content/Context;)Llca;

    move-result-object v1

    .line 1129
    if-eqz v1, :cond_8

    .line 1130
    iput-object v1, v12, Llbz;->d:Llca;

    .line 1133
    :cond_8
    invoke-virtual {v14}, Lerg;->f()Lesw;

    move-result-object v1

    invoke-virtual {v1}, Lesw;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Laal;->p()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    move v6, v3

    .line 1132
    invoke-static/range {v1 .. v6}, Laal;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Lcyx;

    move-result-object v6

    .line 1135
    iget-object v1, p0, Lert;->b:Lcfc;

    const/16 v7, 0x55

    .line 1144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1146
    invoke-virtual {v14}, Lerg;->i()Ljava/lang/String;

    move-result-object v13

    move-object v2, v8

    move v5, v9

    move v8, v9

    move v9, v3

    .line 1135
    invoke-virtual/range {v1 .. v13}, Lcfc;->a(Lcgs;ZLjava/util/List;ZLcyx;IIZJLlbz;Ljava/lang/String;)V

    .line 1147
    iget-object v1, p0, Lert;->b:Lcfc;

    invoke-virtual {v1}, Lcfc;->u()V

    .line 1149
    new-instance v1, Leua;

    iget-object v2, p0, Lert;->a:Landroid/content/Context;

    invoke-virtual {v14}, Lerg;->j()Leqs;

    move-result-object v3

    invoke-interface {v3}, Leqs;->e()Ljava/lang/String;

    move-result-object v3

    .line 1150
    invoke-virtual {v14}, Lerg;->g()Z

    move-result v5

    invoke-direct {v1, v2, v4, v3, v5}, Leua;-><init>(Landroid/content/Context;Leue;Ljava/lang/String;Z)V

    .line 1151
    iget-object v2, p0, Lert;->b:Lcfc;

    invoke-virtual {v2}, Lcfc;->r()Lcgw;

    move-result-object v2

    invoke-virtual {v1, v2}, Leua;->a(Lcgw;)V

    .line 1152
    iget-object v2, p0, Lert;->c:Leru;

    invoke-virtual {v2, v1}, Leru;->a(Leqs;)V

    goto/16 :goto_0
.end method

.method a(Leru;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lert;->c:Leru;

    .line 47
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lert;->c:Leru;

    invoke-virtual {v0}, Leru;->c()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 106
    iget-object v0, p0, Lert;->c:Leru;

    invoke-virtual {v0, v2, v2}, Leru;->a(ZI)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lert;->c:Leru;

    invoke-virtual {v0}, Leru;->c()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lert;->c:Leru;

    .line 108
    invoke-virtual {v0}, Leru;->b()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 109
    :cond_2
    iget-object v0, p0, Lert;->c:Leru;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Leru;->a(ZI)V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v0, p0, Lert;->c:Leru;

    invoke-virtual {v0}, Leru;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lert;->c:Leru;

    const/16 v1, 0x130

    invoke-virtual {v0, v2, v1}, Leru;->a(ZI)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method
