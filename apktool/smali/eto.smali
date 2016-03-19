.class public final Leto;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lesv;


# direct methods
.method constructor <init>(Lesv;)V
    .locals 0

    .prologue
    .line 6366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6367
    iput-object p1, p0, Leto;->a:Lesv;

    .line 6368
    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 4384
    iget-object v0, p0, Leto;->a:Lesv;

    if-eqz v0, :cond_0

    .line 4385
    iget-object v7, p0, Leto;->a:Lesv;

    .line 5210
    iget-object v0, v7, Lesv;->a:Landroid/content/Context;

    const-string v1, "babel_remote_connection_allowed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 5213
    if-nez v0, :cond_1

    .line 5214
    const-string v0, "Babel_telephony"

    const-string v1, "TeleOutgoingCallRequest.startCellularCall, remote connection disallowed by gservices"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5216
    iget-object v0, v7, Lesv;->b:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 5233
    :goto_0
    invoke-virtual {v7}, Lesv;->c()V

    .line 4386
    iput-object v3, p0, Leto;->a:Lesv;

    .line 4388
    :cond_0
    return-void

    .line 5219
    :cond_1
    iget-object v0, v7, Lesv;->b:Lerg;

    invoke-virtual {v0}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v0

    .line 5221
    invoke-static {v0}, Laal;->m(Landroid/content/Context;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    iget-object v2, v7, Lesv;->b:Lerg;

    invoke-virtual {v2}, Lerg;->e()Landroid/telecom/ConnectionRequest;

    move-result-object v2

    .line 5220
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;->createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;

    move-result-object v2

    .line 5222
    if-nez v2, :cond_2

    .line 5223
    const-string v0, "Babel_telephony"

    const-string v1, "TeleOutgoingCallRequest.startCellularCall, unable to create remote connection"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5225
    iget-object v0, v7, Lesv;->b:Lerg;

    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Lerg;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 5228
    :cond_2
    const-string v0, "Babel_telephony"

    const-string v1, "TeleOutgoingCallRequest.startCellularCall, starting remote cellular call"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5229
    iget-object v8, v7, Lesv;->b:Lerg;

    new-instance v0, Letc;

    iget-object v1, v7, Lesv;->a:Landroid/content/Context;

    iget-object v4, v7, Lesv;->b:Lerg;

    .line 5230
    invoke-virtual {v4}, Lerg;->i()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-direct/range {v0 .. v6}, Letc;-><init>(Landroid/content/Context;Landroid/telecom/RemoteConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5229
    invoke-virtual {v8, v0}, Lerg;->a(Leqs;)V

    goto :goto_0
.end method

.method public a(Lbfd;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Leto;->a:Lesv;

    if-eqz v2, :cond_3

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Leto;->a:Lesv;

    move-object/from16 v16, v0

    .line 2115
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual/range {p1 .. p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lerg;->b(Ljava/lang/String;)V

    .line 2116
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual/range {p1 .. p1}, Lbfd;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Lerg;->a(I)V

    .line 2117
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual {v2}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v9

    .line 3101
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual {v2}, Lerg;->f()Lesw;

    move-result-object v2

    invoke-virtual {v2}, Lesw;->f()Ljava/lang/String;

    move-result-object v2

    .line 3105
    move-object/from16 v0, v16

    iget-object v3, v0, Lesv;->b:Lerg;

    .line 3106
    invoke-virtual {v3}, Lerg;->f()Lesw;

    move-result-object v3

    invoke-virtual {v3}, Lesw;->e()Ljava/lang/String;

    move-result-object v3

    .line 3105
    invoke-static {v3}, Lezm;->c(Ljava/lang/String;)Z

    move-result v3

    .line 3107
    if-eqz v3, :cond_0

    .line 3108
    invoke-static {v2}, Lezm;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2121
    :cond_0
    const-string v4, "Babel_telephony"

    const-string v5, "TeleOutgoingCallRequest.startWifiCall, outgoing phone number: "

    .line 2122
    invoke-static {v2}, Laal;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 2121
    invoke-static {v4, v3, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2125
    invoke-static {}, Laal;->p()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    .line 2124
    invoke-static/range {v2 .. v7}, Laal;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Lcyx;

    move-result-object v8

    .line 2126
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2128
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v3

    .line 2129
    invoke-virtual {v3}, Lcfc;->s()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v9}, Leua;->a(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2130
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-static {v9, v2}, Leua;->a(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Lerg;)V

    .line 2131
    const-string v2, "Babel_telephony"

    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->b:Lerg;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x43

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "TeleOutgoingCallRequest.startWifiCall, inviting to existing hangout"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2133
    invoke-virtual {v3, v6}, Lcfc;->b(Ljava/util/List;)V

    .line 2134
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-static {v9, v2}, Leug;->a(Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;Lerg;)V

    .line 2194
    :cond_1
    :goto_1
    new-instance v2, Leua;

    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Leua;-><init>(Landroid/content/Context;Leue;Ljava/lang/String;Z)V

    .line 2195
    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->b:Lerg;

    invoke-virtual {v4, v2}, Lerg;->a(Leqs;)V

    .line 2196
    invoke-virtual {v3}, Lcfc;->r()Lcgw;

    move-result-object v3

    invoke-virtual {v2, v3}, Leua;->a(Lcgw;)V

    .line 2197
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual {v2}, Lerg;->setDialing()V

    .line 2200
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual {v2}, Lerg;->f()Lesw;

    move-result-object v2

    invoke-virtual {v2}, Lesw;->n()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2201
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    move-object/from16 v0, v16

    iget-object v3, v0, Lesv;->b:Lerg;

    invoke-virtual {v3}, Lerg;->f()Lesw;

    move-result-object v3

    invoke-virtual {v3}, Lesw;->i()Landroid/telecom/ConnectionRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lerg;->setAddress(Landroid/net/Uri;I)V

    .line 2205
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lesv;->c()V

    .line 1378
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Leto;->a:Lesv;

    .line 1380
    :cond_3
    return-void

    .line 2122
    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2135
    :cond_5
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v4

    invoke-virtual {v4}, Lcfc;->m()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2136
    const-string v2, "Babel_telephony"

    const-string v4, "TeleOutgoingCallRequest.startWifiCall, hangout in progress, cancelling"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    invoke-virtual/range {v16 .. v16}, Lesv;->b()V

    goto :goto_1

    .line 2139
    :cond_6
    const-string v4, "Babel_telephony"

    move-object/from16 v0, v16

    iget-object v5, v0, Lesv;->b:Lerg;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x3d

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "TeleOutgoingCallRequest.startWifiCall, creating a new hangout"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2140
    new-instance v14, Llbz;

    invoke-direct {v14}, Llbz;-><init>()V

    .line 2141
    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->b:Lerg;

    .line 2142
    invoke-virtual {v4}, Lerg;->d()Lcom/google/android/apps/hangouts/telephony/TeleConnectionService;

    move-result-object v4

    .line 2141
    invoke-static {v4}, Laal;->h(Landroid/content/Context;)Llca;

    move-result-object v4

    .line 2143
    if-eqz v4, :cond_7

    .line 2144
    iput-object v4, v14, Llbz;->d:Llca;

    .line 2148
    :cond_7
    invoke-static {v2}, Lezm;->j(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2149
    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->a:Landroid/content/Context;

    .line 3385
    const-string v5, "location"

    .line 3386
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    .line 3387
    if-eqz v4, :cond_b

    .line 3388
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 3389
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 3390
    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v5

    .line 3391
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 3392
    invoke-virtual {v4, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 3393
    if-eqz v5, :cond_b

    .line 3394
    new-instance v4, Llcb;

    invoke-direct {v4}, Llcb;-><init>()V

    .line 3395
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Llcb;->a:Ljava/lang/Integer;

    .line 3396
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    const-wide v12, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v7, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v4, Llcb;->b:Ljava/lang/Integer;

    .line 3397
    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iput-object v5, v4, Llcb;->c:Ljava/lang/Double;

    .line 2150
    :goto_2
    if-eqz v4, :cond_8

    .line 2151
    iput-object v4, v14, Llbz;->b:Llcb;

    .line 2157
    :cond_8
    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->b:Lerg;

    invoke-virtual {v4}, Lerg;->v()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2158
    const-string v4, "Babel_telephony"

    const-string v5, "TeleOutgoingCallRequest.startWifiCall, setting timestamp for emergency LTE call"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2160
    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->a:Landroid/content/Context;

    invoke-static {v4}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v4

    .line 2161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2160
    invoke-virtual {v4, v10, v11}, Leut;->b(J)V

    .line 2164
    :cond_9
    new-instance v4, Lcgu;

    .line 2165
    invoke-virtual/range {p1 .. p1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-direct {v4, v5, v7}, Lcgu;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x2

    .line 2166
    invoke-virtual {v4, v5}, Lcgu;->a(I)Lcgu;

    move-result-object v4

    .line 2167
    invoke-virtual {v4, v2}, Lcgu;->i(Ljava/lang/String;)Lcgu;

    move-result-object v2

    .line 2168
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcgu;->e(Ljava/lang/String;)Lcgu;

    move-result-object v2

    .line 2169
    invoke-virtual {v2}, Lcgu;->a()Lcgs;

    move-result-object v4

    .line 2170
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x55

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, v16

    iget-wide v12, v0, Lesv;->c:J

    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    .line 2181
    invoke-virtual {v2}, Lerg;->i()Ljava/lang/String;

    move-result-object v15

    .line 2170
    invoke-virtual/range {v3 .. v15}, Lcfc;->a(Lcgs;ZLjava/util/List;ZLcyx;IIZJLlbz;Ljava/lang/String;)V

    .line 2182
    invoke-virtual {v3}, Lcfc;->u()V

    .line 2183
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual {v2}, Lerg;->s()Lero;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2184
    invoke-virtual {v3}, Lcfc;->r()Lcgw;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v4, v0, Lesv;->b:Lerg;

    .line 2185
    invoke-virtual {v4}, Lerg;->s()Lero;

    move-result-object v4

    invoke-virtual {v4}, Lero;->a()Ljava/lang/String;

    move-result-object v4

    .line 2184
    invoke-virtual {v2, v4}, Lcgw;->f(Ljava/lang/String;)V

    .line 2189
    :cond_a
    move-object/from16 v0, v16

    iget-object v2, v0, Lesv;->b:Lerg;

    invoke-virtual {v2}, Lerg;->u()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2190
    invoke-virtual {v3}, Lcfc;->r()Lcgw;

    move-result-object v2

    const-string v4, "tycho_network_auto"

    invoke-virtual {v2, v4}, Lcgw;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3402
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 5392
    iget-object v0, p0, Leto;->a:Lesv;

    if-eqz v0, :cond_0

    .line 5393
    iget-object v0, p0, Leto;->a:Lesv;

    .line 6047
    invoke-virtual {v0}, Lesv;->b()V

    .line 5394
    const/4 v0, 0x0

    iput-object v0, p0, Leto;->a:Lesv;

    .line 5396
    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 6371
    const/4 v0, 0x0

    iput-object v0, p0, Leto;->a:Lesv;

    .line 6372
    return-void
.end method
