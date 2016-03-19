.class public final Lhcs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field final c:Lhkt;

.field d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:I

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhil;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lhip;

.field private k:J

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private final p:Lhcw;


# direct methods
.method public constructor <init>(Lhkt;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Lhkt;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhcs;->e:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lhcs;->c:Lhkt;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcs;->f:Z

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lhcs;->g:I

    .line 86
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhcs;->k:J

    .line 87
    iput v2, p0, Lhcs;->l:I

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhcs;->i:Ljava/util/Map;

    .line 89
    iput-object v3, p0, Lhcs;->j:Lhip;

    .line 90
    new-instance v0, Lhcw;

    new-instance v1, Lhct;

    .line 1367
    invoke-direct {v1, p0}, Lhct;-><init>(Lhcs;)V

    .line 90
    invoke-direct {v0, v1}, Lhcw;-><init>(Lhcy;)V

    iput-object v0, p0, Lhcs;->p:Lhcw;

    .line 91
    iput v2, p0, Lhcs;->h:I

    .line 92
    iput v2, p0, Lhcs;->m:I

    .line 93
    iput-object v3, p0, Lhcs;->n:Ljava/lang/String;

    .line 94
    iput-boolean v2, p0, Lhcs;->o:Z

    .line 95
    invoke-virtual {p1}, Lhkt;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhcs;->d:Ljava/lang/String;

    .line 96
    return-void
.end method

.method static d(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    packed-switch p0, :pswitch_data_0

    .line 345
    const-string v0, "Unknown type"

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 346
    const-string v0, "Unknown state"

    :goto_0
    return-object v0

    .line 335
    :pswitch_0
    const-string v0, "STATE_INIT"

    goto :goto_0

    .line 337
    :pswitch_1
    const-string v0, "STATE_SENTINITIATE"

    goto :goto_0

    .line 339
    :pswitch_2
    const-string v0, "STATE_INPROGRESS"

    goto :goto_0

    .line 341
    :pswitch_3
    const-string v0, "STATE_DEINIT"

    goto :goto_0

    .line 343
    :pswitch_4
    const-string v0, "STATE_INVALID"

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lhcs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;IILhek;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkju;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 278
    const-string v0, "localState is null - cannot report correct stats"

    invoke-static {v0, p4}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Lhcs;->p:Lhcw;

    iget-wide v4, p0, Lhcs;->k:J

    iget-object v6, p0, Lhcs;->e:Ljava/lang/String;

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 281
    invoke-virtual/range {v0 .. v6}, Lhcw;->a(Landroid/content/Context;IIJLjava/lang/String;)Lhcx;

    move-result-object v0

    iget-object v1, p0, Lhcs;->c:Lhkt;

    .line 283
    invoke-virtual {v0, v1}, Lhcx;->a(Lhkt;)Lhcx;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lhcs;->d()Z

    move-result v1

    iget v2, p0, Lhcs;->m:I

    iget v3, p0, Lhcs;->h:I

    invoke-virtual {v0, v1, v2, v3}, Lhcx;->a(ZII)Lhcx;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p5, v7, v7}, Lhcx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhcx;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lhcs;->c:Lhkt;

    invoke-virtual {v1}, Lhkt;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lhcs;->c:Lhkt;

    invoke-virtual {v1}, Lhkt;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcx;->a(Ljava/lang/String;)Lhcx;

    .line 290
    :cond_0
    iget-object v1, p0, Lhcs;->j:Lhip;

    if-eqz v1, :cond_1

    .line 2301
    iget-object v1, p0, Lhcs;->d:Ljava/lang/String;

    iget-object v2, p0, Lhcs;->j:Lhip;

    invoke-virtual {v2}, Lhip;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@groupchat.google.com/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Lhcx;->b(Ljava/lang/String;)Lhcx;

    .line 294
    :cond_1
    invoke-virtual {v0}, Lhcx;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 154
    iput p1, p0, Lhcs;->g:I

    .line 155
    return-void
.end method

.method a(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x1

    const/16 v1, 0x3fb

    invoke-static {p1, v0, v1}, Lhbs;->a(III)V

    .line 259
    iget v0, p0, Lhcs;->m:I

    if-nez v0, :cond_0

    .line 260
    iput p1, p0, Lhcs;->m:I

    .line 261
    iput-object p2, p0, Lhcs;->n:Ljava/lang/String;

    .line 263
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 352
    iget-object v0, p0, Lhcs;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "call_state_remote_session_id"

    iget-object v1, p0, Lhcs;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    const-string v0, "call_state_local_session_id"

    invoke-virtual {p0}, Lhcs;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "is_pending_sign_in"

    invoke-virtual {p0}, Lhcs;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "media_network_type"

    .line 4197
    iget v0, p0, Lhcs;->l:I

    packed-switch v0, :pswitch_data_0

    .line 4215
    const-string v0, "unk"

    .line 357
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "media_state"

    .line 5149
    iget v1, p0, Lhcs;->g:I

    .line 358
    invoke-static {v1}, Lhcs;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v0, "p2p_mode"

    invoke-virtual {p0}, Lhcs;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v0, "participant_log_id"

    invoke-virtual {p0}, Lhcs;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lhcs;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 362
    const-string v0, "hangout_id"

    iget-object v1, p0, Lhcs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    const-string v0, "start_time_in_millis"

    iget-wide v2, p0, Lhcs;->k:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void

    .line 4199
    :pswitch_0
    const-string v0, "mobile"

    goto :goto_0

    .line 4201
    :pswitch_1
    const-string v0, "mobile_2g"

    goto :goto_0

    .line 4203
    :pswitch_2
    const-string v0, "mobile_3g"

    goto :goto_0

    .line 4205
    :pswitch_3
    const-string v0, "mobile_lte"

    goto :goto_0

    .line 4207
    :pswitch_4
    const-string v0, "wifi"

    goto :goto_0

    .line 4209
    :pswitch_5
    const-string v0, "wimax"

    goto :goto_0

    .line 4211
    :pswitch_6
    const-string v0, "bt"

    goto :goto_0

    .line 4213
    :pswitch_7
    const-string v0, "eth"

    goto :goto_0

    .line 4197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Lhil;)V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p1}, Lhil;->k()Z

    move-result v0

    .line 2144
    const-string v1, "Expected condition to be false"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 228
    iget-object v0, p0, Lhcs;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method a(Lhip;)V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p1}, Lhip;->k()Z

    move-result v0

    .line 2134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 184
    iput-object p1, p0, Lhcs;->j:Lhip;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lhcs;->k:J

    .line 186
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lhcs;->d:Ljava/lang/String;

    .line 100
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 322
    iput-boolean p1, p0, Lhcs;->o:Z

    .line 323
    return-void
.end method

.method public b(Ljava/lang/String;)Lhil;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lhcs;->j:Lhip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhcs;->j:Lhip;

    invoke-virtual {v0}, Lhip;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lhcs;->j:Lhip;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lhcs;->c(Ljava/lang/String;)Lhil;

    move-result-object v0

    goto :goto_0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 221
    iput p1, p0, Lhcs;->l:I

    .line 222
    return-void
.end method

.method b(Lhil;)V
    .locals 2

    .prologue
    .line 2198
    const-string v0, "Expected non-null"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lhcs;->j:Lhip;

    invoke-static {p1, v0}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lhcs;->i:Ljava/util/Map;

    invoke-virtual {p1}, Lhil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lhcs;->f:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Lhil;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lhcs;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhil;

    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhcs;->f:Z

    .line 112
    return-void
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhcs;->a(ILjava/lang/String;)V

    .line 254
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 309
    const-string v0, "vclib"

    const-string v1, "setRemoteSessionId = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 3077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iput-object p1, p0, Lhcs;->a:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lhcs;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lhcs;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhcs;->e(Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lhcs;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 317
    const-string v0, "vclib"

    const-string v1, "setActiveSessionId = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 4077
    const/4 v3, 0x3

    invoke-static {v3, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iput-object p1, p0, Lhcs;->b:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lhcs;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lhcs;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lhcs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lhcs;->a:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lhcs;->c:Lhkt;

    invoke-virtual {v0}, Lhkt;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method j()Lhkt;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lhcs;->c:Lhkt;

    return-object v0
.end method

.method public k()Lhcw;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lhcs;->p:Lhcw;

    return-object v0
.end method

.method public l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lhil;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lhcs;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public m()Lhip;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lhcs;->j:Lhip;

    return-object v0
.end method

.method n()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lhcs;->l:I

    return v0
.end method

.method o()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x3

    iput v0, p0, Lhcs;->h:I

    .line 239
    return-void
.end method

.method public p()I
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lhcs;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 243
    iget v0, p0, Lhcs;->m:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lhcs;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lhcs;->n:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lhcs;->m:I

    .line 2438
    invoke-static {v0}, Lhcw;->d(I)I

    move-result v0

    .line 305
    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lhcs;->o:Z

    return v0
.end method
