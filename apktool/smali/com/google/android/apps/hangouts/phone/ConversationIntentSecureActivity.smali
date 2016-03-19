.class public Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;
.super Limi;
.source "SourceFile"

# interfaces
.implements Lhpw;


# instance fields
.field private j:Lhzy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Limi;-><init>()V

    .line 36
    new-instance v0, Lhzy;

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->m:Lipg;

    invoke-direct {v0, p0, v1}, Lhzy;-><init>(Lba;Liog;)V

    const-string v1, "active-hangouts-account"

    .line 38
    invoke-virtual {v0, v1}, Lhzy;->a(Ljava/lang/String;)Lhzy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->l:Lilh;

    .line 39
    invoke-virtual {v0, v1}, Lhzy;->a(Lilh;)Lhzy;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p0}, Lhzy;->b(Lhpw;)Lhzy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->j:Lhzy;

    .line 36
    return-void
.end method

.method private b(I)V
    .locals 18

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 109
    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 110
    const-string v2, "conversation_id"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 111
    const-string v2, "participant_gaia"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    const-string v2, "participant_name"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    const-string v2, "auto_join_call_policy"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 114
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 115
    const-string v2, "watermark"

    const-wide/16 v12, 0x0

    .line 116
    invoke-virtual {v15, v2, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 117
    const-string v2, "requires_mms"

    const/4 v5, 0x0

    invoke-virtual {v15, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 118
    const-string v2, "hangout_uri"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 119
    const-string v2, "opened_from_impression"

    const/4 v6, -0x1

    invoke-virtual {v15, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 120
    const/4 v2, -0x1

    if-eq v6, v2, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->l:Lilh;

    const-class v10, Lhba;

    invoke-virtual {v2, v10}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhba;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lhba;->a(I)Lhaw;

    move-result-object v2

    .line 122
    invoke-interface {v2, v6}, Lhaw;->a(I)Lhax;

    move-result-object v2

    invoke-interface {v2}, Lhax;->d()V

    .line 125
    :cond_0
    const-string v2, "hangout_call_end_intent"

    .line 126
    invoke-virtual {v15, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 1228
    if-eqz v3, :cond_1

    if-eqz v5, :cond_1

    .line 1229
    const-string v2, "Babel_ConvIntSecureAct"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x24

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v17, "Got intent with non-null gaiaId and "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v10, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    const/4 v2, 0x0

    .line 127
    :goto_0
    if-nez v2, :cond_3

    .line 128
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->setResult(I)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->finish()V

    .line 224
    :goto_1
    return-void

    .line 1232
    :cond_1
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1233
    const-string v2, "Babel_ConvIntSecureAct"

    const-string v10, "SENDTO action must include message text"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v2, v10, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1234
    const/4 v2, 0x0

    goto :goto_0

    .line 1236
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 133
    :cond_3
    const-string v2, "end_video"

    const/4 v10, 0x0

    invoke-virtual {v15, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcfc;->r()Lcgw;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 136
    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Lcfc;->a(I)V

    .line 140
    :goto_2
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->setResult(I)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->finish()V

    goto :goto_1

    .line 138
    :cond_4
    const-string v2, "Babel_ConvIntSecureAct"

    const-string v3, "invalid request to end video call"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 146
    :cond_5
    if-nez v5, :cond_6

    const-string v2, "start_video"

    const/4 v10, 0x0

    .line 147
    invoke-virtual {v15, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 148
    :cond_6
    const-string v2, "hangout_start_source"

    const/16 v7, 0x3b

    .line 149
    invoke-virtual {v15, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 151
    const-string v2, "media_type"

    const/4 v8, 0x0

    .line 152
    invoke-virtual {v15, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 153
    const-string v2, "never"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move/from16 v2, p1

    .line 155
    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;II)Landroid/content/Intent;

    move-result-object v2

    .line 177
    :goto_3
    const-string v3, "hangout_video_source"

    const-string v4, "hangout_video_source"

    const/4 v5, 0x0

    .line 179
    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string v3, "hangout_mute_playback"

    const-string v4, "hangout_mute_playback"

    const/4 v5, 0x0

    .line 185
    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 183
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    const-string v3, "hangout_mute_microphone"

    const-string v4, "hangout_mute_microphone"

    const/4 v5, 0x0

    .line 188
    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 186
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    :cond_7
    :goto_4
    const-string v3, "account_id"

    move/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->setResult(I)V

    .line 222
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->finish()V

    goto/16 :goto_1

    :cond_8
    move/from16 v2, p1

    .line 166
    invoke-static/range {v2 .. v8}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->b(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/app/PendingIntent;II)Landroid/content/Intent;

    move-result-object v2

    goto :goto_3

    .line 189
    :cond_9
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object v9, v3

    move-object v10, v4

    .line 191
    invoke-static/range {v6 .. v14}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/Intent;

    move-result-object v2

    .line 200
    const-string v3, "otr_state"

    invoke-virtual {v15, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 201
    const-string v3, "otr_state"

    const-string v4, "otr_state"

    const/4 v5, 0x0

    .line 203
    invoke-virtual {v15, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 201
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_4

    .line 205
    :cond_a
    const-string v2, "com.google.android.apps.babel.realtimechat.update-watermark"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 206
    move/from16 v0, p1

    invoke-static {v0, v8}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_4

    .line 207
    :cond_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 209
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v8, v11}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_4

    .line 211
    :cond_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 212
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v2, p1

    move-object v5, v11

    .line 213
    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_4

    .line 216
    :cond_d
    invoke-static/range {p0 .. p1}, Lcom/google/android/apps/hangouts/phone/BabelGatewayActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    goto :goto_4
.end method


# virtual methods
.method public a(ZLhpv;Lhpv;II)V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lhpv;->c:Lhpv;

    if-ne p3, v0, :cond_0

    .line 50
    invoke-direct {p0, p5}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->b(I)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->finish()V

    goto :goto_0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-super {p0, p1}, Limi;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->finish()V

    .line 105
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    if-nez v0, :cond_1

    .line 68
    const-string v0, "Babel_ConvIntSecureAct"

    const-string v1, "No intent attached"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->setResult(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->finish()V

    goto :goto_0

    .line 74
    :cond_1
    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    const-string v1, "Babel_ConvIntSecureAct"

    const-string v2, "No account name provided"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->l:Lilh;

    const-class v2, Lhpz;

    invoke-virtual {v0, v2}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 92
    invoke-interface {v0, v1}, Lhpz;->b(Ljava/lang/String;)I

    move-result v2

    .line 93
    invoke-interface {v0, v2}, Lhpz;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    invoke-direct {p0, v2}, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->b(I)V

    goto :goto_0

    .line 98
    :cond_3
    new-instance v0, Liaj;

    invoke-direct {v0}, Liaj;-><init>()V

    .line 100
    invoke-virtual {v0}, Liaj;->b()Liaj;

    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Liaj;->a(Ljava/lang/String;)Liaj;

    move-result-object v0

    const-class v1, Liap;

    .line 102
    invoke-virtual {v0, v1}, Liaj;->a(Ljava/lang/Class;)Liaj;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/google/android/apps/hangouts/phone/ConversationIntentSecureActivity;->j:Lhzy;

    invoke-virtual {v1, v0}, Lhzy;->a(Liaj;)V

    goto :goto_0
.end method
