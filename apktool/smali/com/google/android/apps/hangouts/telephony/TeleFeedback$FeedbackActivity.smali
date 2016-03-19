.class public Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;
.super Lba;
.source "SourceFile"


# instance fields
.field j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lba;-><init>()V

    return-void
.end method

.method private b(I)V
    .locals 5

    .prologue
    .line 154
    new-instance v2, Lkju;

    invoke-direct {v2}, Lkju;-><init>()V

    .line 155
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lkju;->p:Ljava/lang/Integer;

    .line 156
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "participant_log_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lkju;->c:Ljava/lang/String;

    .line 157
    new-instance v0, Ljur;

    invoke-direct {v0}, Ljur;-><init>()V

    iput-object v0, v2, Lkju;->g:Ljur;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "local_session_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "remote_session_id"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    iput-object v0, v2, Lkju;->d:Ljava/lang/String;

    .line 161
    iget-object v3, v2, Lkju;->g:Ljur;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    :goto_0
    iput-object v0, v3, Ljur;->a:Ljava/lang/String;

    .line 163
    iget-object v0, v2, Lkju;->g:Ljur;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljur;->c:Ljava/lang/Integer;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 166
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    iget-object v1, v2, Lkju;->g:Ljur;

    iget-object v1, v1, Ljur;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lbfd;Ljava/lang/String;Lkju;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->finish()V

    .line 172
    return-void

    :cond_1
    move-object v0, v1

    .line 162
    goto :goto_0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "telephony_rating"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "is_incoming"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 3282
    new-instance v2, Lerp;

    invoke-direct {v2}, Lerp;-><init>()V

    .line 3283
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3284
    const-string v4, "rating"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3285
    const-string v0, "should_show_audio_issues"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3286
    const-string v0, "is_incoming"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3287
    invoke-virtual {v2, v3}, Lerp;->setArguments(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->C_()Lbg;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 214
    const-string v0, "audio_issue_chooser"

    .line 213
    :goto_0
    invoke-virtual {v2, v1, v0}, Lerp;->a(Lbg;Ljava/lang/String;)V

    .line 215
    return-void

    .line 214
    :cond_0
    const-string v0, "call_issue_chooser"

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 204
    const-string v0, "Babel_telephony"

    const-string v1, "TeleFeedback.FeedbackActivity.onAudioIssueSelected, sending feedback"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->j:Ljava/lang/String;

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "handoff_attempted"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const-string v0, "[HANDOFF] "

    .line 1228
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1236
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 2175
    :goto_2
    const-string v2, "Babel_telephony"

    const-string v3, "TeleFeedback.FeedbackActivity.sendFeedback: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2177
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "telephony_call_info"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 2178
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "telephony_rating"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 3046
    sget-object v0, Lerq;->d:Lerq;

    if-eqz v0, :cond_7

    .line 3047
    sget-object v0, Lerq;->d:Lerq;

    move-object v2, v0

    .line 2180
    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "account_id"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Ldvd;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 2182
    const-class v0, Lgyu;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    .line 2183
    invoke-interface {v0, v3}, Lgyu;->a(Landroid/os/Bundle;)Lgyu;

    move-result-object v0

    const-string v3, "rating"

    .line 2184
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lgyu;->a(Ljava/lang/String;Ljava/lang/String;)Lgyu;

    move-result-object v0

    .line 2185
    invoke-interface {v0, v1}, Lgyu;->b(Ljava/lang/String;)Lgyu;

    move-result-object v0

    const-string v1, "com.google.android.talk.telephony"

    .line 2186
    invoke-interface {v0, v1}, Lgyu;->c(Ljava/lang/String;)Lgyu;

    move-result-object v0

    .line 2187
    invoke-interface {v0, v5}, Lgyu;->a(Ljava/lang/String;)Lgyu;

    move-result-object v0

    .line 2188
    invoke-interface {v0}, Lgyu;->b()Lgyt;

    move-result-object v0

    .line 2182
    invoke-virtual {v2, v0}, Lerq;->a(Lgyt;)V

    .line 2189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->b(I)V

    .line 206
    return-void

    .line 1221
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "call_type"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1222
    const-string v0, "[WIFI] "

    goto/16 :goto_0

    .line 1224
    :cond_1
    const-string v0, "[CELL] "

    goto/16 :goto_0

    .line 1230
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object p1, v1

    .line 1231
    goto/16 :goto_1

    .line 1233
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 1239
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_2

    .line 2175
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3049
    :cond_7
    new-instance v0, Lerq;

    invoke-direct {v0, p0}, Lerq;-><init>(Landroid/content/Context;)V

    move-object v2, v0

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    if-eqz p2, :cond_0

    .line 194
    const-string v0, "Babel_telephony"

    const-string v1, "TeleFeedback.FeedbackActivity.onCallIssueSelected, good call, closing"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->b(I)V

    .line 201
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v0, "Babel_telephony"

    const-string v1, "TeleFeedback.FeedbackActivity.onCallIssueSelected, showing audio issues"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    iput-object p1, p0, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->j:Ljava/lang/String;

    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->b(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    const-string v0, "Babel_telephony"

    const-string v1, "TeleFeedback.FeedbackActivity.onCreate"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-super {p0, p1}, Lba;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 142
    const-string v1, "telephony_call_feedback"

    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "telephony_id"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "telephony_rating"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 145
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 146
    const-string v1, "Babel_telephony"

    const-string v2, "TeleFeedback.FeedbackActivity.onCreate, rated good, doing nothing"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-direct {p0, v0}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->b(I)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/apps/hangouts/telephony/TeleFeedback$FeedbackActivity;->b(Z)V

    goto :goto_0
.end method
