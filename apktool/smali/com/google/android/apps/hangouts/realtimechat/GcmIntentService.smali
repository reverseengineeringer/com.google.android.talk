.class public Lcom/google/android/apps/hangouts/realtimechat/GcmIntentService;
.super Leeb;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/GcmIntentService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "GcmIntentService"

    invoke-direct {p0, v0}, Leeb;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Leeb;-><init>(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "proto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;Lknq;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1071
    if-nez p1, :cond_2

    .line 1072
    :try_start_0
    const-string v0, "Babel_GcmIntentService"

    const-string v1, "GcmIntentService.handleMessage called with null intent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 9327
    :cond_0
    :goto_0
    sget-boolean v0, Lexo;->b:Z

    .line 65
    if-eqz v0, :cond_1

    .line 66
    invoke-static {}, Lexo;->d()V

    .line 68
    :cond_1
    return-void

    .line 1074
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1077
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/GcmIntentService;->a:Z

    if-eqz v0, :cond_3

    .line 1078
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xf

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lctl;

    invoke-static {v0, v3}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lctl;

    .line 1090
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lctl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 1098
    const-string v0, "message_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    const-string v3, "send_event"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1106
    const-string v3, "deleted_messages"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1327
    sget-boolean v0, Lexo;->b:Z

    .line 1108
    if-eqz v0, :cond_5

    .line 1109
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v1, "gcm_dirty_ping"

    invoke-virtual {v0, v1}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v0

    invoke-virtual {v0}, Lexr;->b()V

    .line 1112
    :cond_5
    const-string v0, "Babel_GcmIntentService"

    const-string v1, "got deleted_messages tickle from GCM"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1113
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldir;->a(Landroid/content/Context;)V

    .line 62
    throw v0

    .line 1117
    :cond_6
    :try_start_2
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1119
    const-string v0, "hangout"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 1120
    if-eqz v7, :cond_8

    const-string v0, "call/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v6, v2

    .line 1123
    :goto_1
    if-eqz v7, :cond_7

    const-string v0, "babel:proto"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    move v3, v2

    .line 1124
    :goto_2
    const-string v0, "babel:synctickle"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    .line 1126
    if-eqz v8, :cond_a

    .line 1127
    const-string v0, "focus_account_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 1147
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1148
    const-string v1, "Babel_GcmIntentService"

    const-string v2, "gcm push received for empty recipient in type:"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    const/4 v0, 0x0

    const/16 v1, 0x72d

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 3327
    sget-boolean v0, Lexo;->b:Z

    .line 1152
    if-eqz v0, :cond_0

    .line 1153
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v1, "gcm_error_missing_participant"

    invoke-virtual {v0, v1}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v0

    invoke-virtual {v0}, Lexr;->b()V

    goto/16 :goto_0

    :cond_8
    move v6, v1

    .line 1120
    goto :goto_1

    :cond_9
    move v3, v1

    .line 1123
    goto :goto_2

    .line 1128
    :cond_a
    if-nez v6, :cond_b

    if-nez v3, :cond_b

    if-eqz v9, :cond_c

    .line 1129
    :cond_b
    const-string v0, "recipient"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_3

    .line 1131
    :cond_c
    const-string v1, "Babel_GcmIntentService"

    const-string v0, "gcm push with unknown type = "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    const/4 v0, 0x0

    const/16 v1, 0x85b

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 2327
    sget-boolean v0, Lexo;->b:Z

    .line 1135
    if-eqz v0, :cond_0

    .line 1136
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v1, "gcm_error_unknown"

    .line 1137
    invoke-virtual {v0, v1}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 1138
    invoke-virtual {v0, v7}, Lexr;->b(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 1139
    invoke-virtual {v0}, Lexr;->b()V

    goto/16 :goto_0

    .line 1131
    :cond_d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 1148
    :cond_e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1158
    :cond_f
    invoke-static {v2}, Lczb;->a(Ljava/lang/String;)Lczb;

    move-result-object v7

    .line 1159
    invoke-static {v7}, Ldvd;->a(Lczb;)Lbfd;

    move-result-object v1

    .line 1160
    if-nez v1, :cond_12

    .line 1161
    const-string v1, "Babel_GcmIntentService"

    const-string v3, "gcm push received for invalid account: "

    .line 1162
    invoke-static {v2}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 1161
    invoke-static {v1, v0, v3}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    const/4 v0, 0x0

    const/16 v1, 0x72e

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 4327
    sget-boolean v0, Lexo;->b:Z

    .line 1166
    if-eqz v0, :cond_10

    .line 1167
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v1, "gcm_error_unknown_participant"

    .line 1168
    invoke-virtual {v0, v1}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 1169
    invoke-virtual {v0, v7}, Lexr;->a(Lczb;)Lexr;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Lexr;->b()V

    .line 1172
    :cond_10
    invoke-static {v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1162
    :cond_11
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 1176
    :cond_12
    invoke-static {v1}, Ldvd;->d(Lbfd;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1177
    const-string v0, "Babel_GcmIntentService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1178
    const-string v2, "Babel_GcmIntentService"

    const-string v3, "gcm push received for logged off account: "

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5327
    :cond_13
    sget-boolean v0, Lexo;->b:Z

    .line 1181
    if-eqz v0, :cond_14

    .line 1182
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    const-string v2, "gcm_error_logged_out_participant"

    .line 1183
    invoke-virtual {v0, v2}, Lexr;->a(Ljava/lang/String;)Lexr;

    move-result-object v0

    .line 1184
    invoke-virtual {v0, v1}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Lexr;->b()V

    .line 1189
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/realtimechat/GcmIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lawm;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawm;

    .line 1190
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-interface {v0, v1}, Lawm;->c(I)V

    goto/16 :goto_0

    .line 1178
    :cond_15
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 1194
    :cond_16
    sget-boolean v0, Lcom/google/android/apps/hangouts/realtimechat/GcmIntentService;->a:Z

    if-eqz v0, :cond_17

    .line 1195
    if-eqz v8, :cond_1b

    .line 1196
    const-string v0, "gcm hangout push received for account: "

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1a

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6327
    :cond_17
    :goto_8
    sget-boolean v0, Lexo;->b:Z

    .line 1204
    if-eqz v0, :cond_19

    .line 1206
    new-instance v0, Lexr;

    invoke-direct {v0}, Lexr;-><init>()V

    .line 1207
    if-eqz v8, :cond_1f

    .line 1208
    const-string v2, "gcm_video_ring"

    invoke-virtual {v0, v2}, Lexr;->a(Ljava/lang/String;)Lexr;

    .line 1214
    :cond_18
    :goto_9
    invoke-virtual {v0, v1}, Lexr;->a(Lbfd;)Lexr;

    move-result-object v0

    invoke-virtual {v0}, Lexr;->b()V

    .line 1217
    :cond_19
    if-eqz v3, :cond_22

    .line 1218
    const-string v0, "proto"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    const-string v2, "timestamp"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1220
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v6

    .line 6365
    sget-object v7, Ldvp;->y:Ldml;

    invoke-virtual {v7, v6}, Ldml;->b(I)Z

    move-result v6

    .line 1220
    if-eqz v6, :cond_21

    .line 1223
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    move-object v6, p2

    .line 1222
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/hangouts/serverupdate/ReceiveServerUpdateService;->a(Ljava/lang/String;IJJLknq;)V

    goto/16 :goto_0

    .line 1196
    :cond_1a
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 1197
    :cond_1b
    if-eqz v3, :cond_1d

    .line 1198
    const-string v0, "gcm heavy tickle push received for account: "

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1c

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    :cond_1c
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 1199
    :cond_1d
    if-eqz v9, :cond_17

    .line 1200
    const-string v0, "gcm sync tickle push received for account: "

    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    :cond_1e
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8

    .line 1209
    :cond_1f
    if-eqz v3, :cond_20

    .line 1210
    const-string v2, "gcm_heavy"

    invoke-virtual {v0, v2}, Lexr;->a(Ljava/lang/String;)Lexr;

    goto :goto_9

    .line 1211
    :cond_20
    if-eqz v9, :cond_18

    .line 1212
    const-string v2, "gcm_sync"

    invoke-virtual {v0, v2}, Lexr;->a(Ljava/lang/String;)Lexr;

    goto :goto_9

    :cond_21
    move-object v6, p2

    .line 1226
    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Ljava/lang/String;Lbfd;JJLknq;)V

    goto/16 :goto_0

    .line 1229
    :cond_22
    if-eqz v9, :cond_23

    .line 7252
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v0

    const/4 v1, 0x0

    sget-object v2, Lebq;->a:Lebq;

    .line 7251
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(IZLebq;)V

    goto/16 :goto_0

    .line 1231
    :cond_23
    if-eqz v8, :cond_26

    .line 1232
    invoke-static {v1}, Ldvd;->d(Lbfd;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1233
    const-string v2, "Babel_GcmIntentService"

    const-string v3, "Hangout notification for account that is not setup yet: "

    .line 1236
    invoke-virtual {v1}, Lbfd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lezi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1233
    invoke-static {v2, v0, v1}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1236
    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a

    .line 8072
    :cond_25
    invoke-static {}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->b()Z

    .line 8073
    const-string v0, "Babel_IncomingInviteSvc"

    const-string v1, "acquiring wakelock for startService %s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lezi;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 8077
    invoke-static {v0}, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;->a(Landroid/content/Context;)V

    .line 8078
    const-class v1, Lcom/google/android/apps/hangouts/hangout/IncomingInviteService;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 8079
    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 1242
    :cond_26
    if-eqz v6, :cond_0

    .line 1243
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcfc;->a(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
