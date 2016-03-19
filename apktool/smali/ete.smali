.class final Lete;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leqt;


# static fields
.field private static n:Letf;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Lhcw;

.field private final g:Lhbt;

.field private final h:Letg;

.field private i:Landroid/net/Uri;

.field private j:J

.field private k:J

.field private l:J

.field private m:Lero;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Letf;

    .line 3305
    invoke-direct {v0}, Letf;-><init>()V

    .line 62
    sput-object v0, Lete;->n:Letf;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v0, p0, Lete;->j:J

    .line 50
    iput-wide v0, p0, Lete;->k:J

    .line 51
    iput-wide v0, p0, Lete;->l:J

    .line 70
    iput-object p1, p0, Lete;->a:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lete;->b:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lete;->i:Landroid/net/Uri;

    .line 73
    iput-object p4, p0, Lete;->d:Ljava/lang/String;

    .line 74
    iput-boolean p6, p0, Lete;->e:Z

    .line 78
    new-instance v0, Lhlo;

    invoke-direct {v0}, Lhlo;-><init>()V

    invoke-static {}, Lhlo;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lete;->c:Ljava/lang/String;

    .line 82
    if-nez p5, :cond_0

    .line 83
    new-instance v0, Lhlo;

    invoke-direct {v0}, Lhlo;-><init>()V

    invoke-static {}, Lhlo;->a()Ljava/lang/String;

    move-result-object p5

    .line 86
    :cond_0
    new-instance v0, Letg;

    iget-object v1, p0, Lete;->c:Ljava/lang/String;

    invoke-direct {v0, p5, v1}, Letg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lete;->h:Letg;

    .line 87
    new-instance v0, Lhcw;

    iget-object v1, p0, Lete;->h:Letg;

    invoke-direct {v0, v1}, Lhcw;-><init>(Lhcy;)V

    iput-object v0, p0, Lete;->f:Lhcw;

    .line 88
    new-instance v0, Lhbt;

    invoke-direct {v0, p1}, Lhbt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lete;->g:Lhbt;

    .line 89
    return-void
.end method

.method private b(I)V
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 243
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move v9, v8

    move v10, v8

    move v11, v8

    move v12, v8

    move v13, v8

    invoke-direct/range {v0 .. v13}, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 252
    iget-object v2, p0, Lete;->g:Lhbt;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    :goto_0
    invoke-virtual {v2, v1}, Lhbt;->b(I)I

    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->setMediaNetworkType(I)V

    .line 256
    iget-object v2, p0, Lete;->a:Landroid/content/Context;

    invoke-static {v2}, Laal;->r(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lete;->g:Lhbt;

    invoke-virtual {v2, v1}, Lhbt;->a(I)Ljum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->setSignalStrength(Ljum;)V

    .line 259
    :cond_0
    iget-object v1, p0, Lete;->f:Lhcw;

    invoke-virtual {v1, v0}, Lhcw;->a(Lcom/google/android/libraries/hangouts/video/internal/Stats;)V

    .line 260
    return-void

    :cond_1
    move v1, v8

    .line 253
    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lete;->c:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lete;->f:Lhcw;

    invoke-virtual {v0, p1}, Lhcw;->b(I)V

    .line 97
    return-void
.end method

.method a(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lete;->i:Landroid/net/Uri;

    .line 93
    return-void
.end method

.method public a(Leqs;I)V
    .locals 4

    .prologue
    .line 124
    packed-switch p2, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 127
    :pswitch_0
    iget-wide v0, p0, Lete;->k:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lete;->j:J

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lete;->k:J

    .line 130
    iget-object v0, p0, Lete;->f:Lhcw;

    invoke-virtual {v0}, Lhcw;->a()V

    .line 131
    invoke-interface {p1}, Leqs;->a()Lerg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lete;->f:Lhcw;

    invoke-interface {p1}, Leqs;->a()Lerg;

    move-result-object v1

    invoke-virtual {v1}, Lerg;->h()Lest;

    move-result-object v1

    invoke-virtual {v1}, Lest;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lhcw;->a(I)V

    .line 135
    :cond_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 136
    iget-object v0, p0, Lete;->f:Lhcw;

    invoke-virtual {v0}, Lhcw;->c()V

    .line 138
    :cond_1
    invoke-interface {p1}, Leqs;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lete;->b(I)V

    goto :goto_0

    .line 141
    :pswitch_1
    iget-object v0, p0, Lete;->f:Lhcw;

    invoke-virtual {v0}, Lhcw;->c()V

    .line 142
    invoke-interface {p1}, Leqs;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lete;->b(I)V

    goto :goto_0

    .line 145
    :pswitch_2
    iget-object v0, p0, Lete;->h:Letg;

    invoke-virtual {v0}, Letg;->b()V

    .line 146
    iget-object v0, p0, Lete;->f:Lhcw;

    invoke-virtual {v0}, Lhcw;->b()V

    .line 147
    invoke-interface {p1}, Leqs;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lete;->b(I)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Leqs;Landroid/telecom/DisconnectCause;)V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x1

    .line 157
    iget-wide v0, p0, Lete;->l:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lete;->l:J

    .line 159
    invoke-interface {p1}, Leqs;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lete;->b(I)V

    .line 160
    iget-object v0, p0, Lete;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->b()I

    move-result v0

    .line 161
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v10

    .line 1188
    if-eqz v10, :cond_4

    .line 1192
    iget-object v0, p0, Lete;->a:Landroid/content/Context;

    invoke-static {v0}, Leut;->a(Landroid/content/Context;)Leut;

    move-result-object v0

    invoke-virtual {v0}, Leut;->f()I

    move-result v0

    .line 1193
    invoke-virtual {v10}, Lbfd;->g()I

    move-result v1

    if-ne v1, v0, :cond_3

    move v0, v3

    .line 162
    :goto_0
    if-eqz v0, :cond_2

    .line 163
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v11

    .line 168
    invoke-interface {p1}, Leqs;->a()Lerg;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    invoke-virtual {v0}, Lerg;->f()Lesw;

    move-result-object v0

    invoke-virtual {v0}, Lesw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezm;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1203
    :goto_1
    iget-object v0, p0, Lete;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Lete;->f:Lhcw;

    iget-object v1, p0, Lete;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lhcw;->a(ILjava/lang/String;)V

    .line 1207
    :cond_0
    iget-boolean v0, p0, Lete;->e:Z

    if-eqz v0, :cond_6

    const/16 v2, 0x68

    .line 1209
    :goto_2
    iget-object v0, p0, Lete;->a:Landroid/content/Context;

    const-class v1, Lawm;

    .line 1210
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lawm;

    .line 1211
    iget-object v0, p0, Lete;->f:Lhcw;

    iget-object v1, p0, Lete;->a:Landroid/content/Context;

    iget-wide v4, p0, Lete;->j:J

    iget-object v6, p0, Lete;->c:Ljava/lang/String;

    .line 1213
    invoke-virtual/range {v0 .. v6}, Lhcw;->a(Landroid/content/Context;IIJLjava/lang/String;)Lhcx;

    move-result-object v0

    .line 1220
    invoke-virtual {v10}, Lbfd;->g()I

    move-result v1

    invoke-interface {v7, v1}, Lawm;->e(I)Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-virtual {v0, v1}, Lhcx;->a(Ljava/lang/String;)Lhcx;

    move-result-object v2

    .line 2182
    iget-object v0, p0, Lete;->i:Landroid/net/Uri;

    if-nez v0, :cond_7

    const-string v0, "unknown"

    .line 2183
    :goto_3
    iget-object v1, p0, Lete;->d:Ljava/lang/String;

    if-nez v1, :cond_8

    invoke-static {}, Laal;->p()Ljava/lang/String;

    move-result-object v1

    .line 2184
    :goto_4
    const-string v4, "%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v9

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1221
    invoke-virtual {v2, v0}, Lhcx;->b(Ljava/lang/String;)Lhcx;

    move-result-object v1

    iget-object v0, p0, Lete;->h:Letg;

    .line 1223
    invoke-virtual {v0}, Letg;->a()Z

    move-result v2

    .line 1224
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    .line 2194
    packed-switch v0, :pswitch_data_0

    .line 2218
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x27

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected DisconnectCause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move v0, v3

    .line 1222
    :goto_5
    invoke-virtual {v1, v2, v0, v9}, Lhcx;->a(ZII)Lhcx;

    move-result-object v0

    .line 1226
    invoke-virtual {p2}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v11, v8, v1}, Lhcx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhcx;

    move-result-object v0

    .line 1227
    invoke-virtual {v0}, Lhcx;->a()Ljava/util/List;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1231
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkju;

    .line 1233
    iget-object v1, p0, Lete;->m:Lero;

    if-eqz v1, :cond_1

    .line 1234
    new-array v1, v3, [Ljava/lang/String;

    .line 1235
    iget-object v2, p0, Lete;->m:Lero;

    invoke-virtual {v2}, Lero;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    .line 1236
    iput-object v1, v0, Lkju;->n:[Ljava/lang/String;

    .line 1239
    :cond_1
    iget-object v1, p0, Lete;->c:Ljava/lang/String;

    .line 2308
    invoke-static {v10, v1, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Lkju;)V

    .line 174
    :cond_2
    return-void

    .line 1198
    :cond_3
    iget-object v0, p0, Lete;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    move v0, v3

    goto/16 :goto_0

    :cond_4
    move v0, v9

    goto/16 :goto_0

    .line 170
    :cond_5
    const-string v0, ""

    move-object v8, v0

    goto/16 :goto_1

    .line 1208
    :cond_6
    const/16 v2, 0x67

    goto/16 :goto_2

    .line 2182
    :cond_7
    iget-object v0, p0, Lete;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 2183
    :cond_8
    iget-object v1, p0, Lete;->d:Ljava/lang/String;

    goto/16 :goto_4

    .line 2197
    :pswitch_0
    const/16 v0, 0x3ec

    goto :goto_5

    .line 2200
    :pswitch_1
    const/16 v0, 0x3f3

    goto :goto_5

    .line 2203
    :pswitch_2
    const/16 v0, 0x3f2

    goto :goto_5

    .line 2206
    :pswitch_3
    const/16 v0, 0x3f1

    goto :goto_5

    .line 2209
    :pswitch_4
    const/16 v0, 0x3ef

    goto :goto_5

    .line 2215
    :pswitch_5
    const/16 v0, 0x3f9

    goto :goto_5

    .line 2194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method a(Lero;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lete;->m:Lero;

    .line 101
    return-void
.end method

.method b()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 112
    iget-wide v0, p0, Lete;->k:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move-wide v0, v2

    .line 119
    :goto_0
    return-wide v0

    .line 115
    :cond_0
    iget-wide v0, p0, Lete;->l:J

    .line 116
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 119
    :cond_1
    iget-wide v2, p0, Lete;->k:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method
