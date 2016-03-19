.class public Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lezi;->q:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;->setIntentRedelivery(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "android.intent.action.RESPOND_VIA_MESSAGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 60
    sget-boolean v0, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;->a:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "NoConfirmationSmsSendService onHandleIntent wrong action: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_0

    .line 74
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 77
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 78
    invoke-static {v1}, Lenn;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 80
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1660
    sget-object v1, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v1

    .line 87
    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v1

    .line 97
    const-string v7, "showUI"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 98
    const-string v0, "com.google.android.talk.SigningInActivity"

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 100
    const-string v0, "account_id"

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-virtual {v1}, Lbfd;->I()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2128
    new-instance v0, Lbfz;

    invoke-virtual {v1}, Lbfd;->g()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 2129
    invoke-static {v0, v4, v6}, Lenn;->a(Lbfz;Lczb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2133
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v6, Lefk;

    invoke-static {v0, v6}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lefk;

    move-object v6, v4

    move v7, v5

    move v8, v5

    move-object v9, v4

    move v11, v5

    move-object v12, v4

    move v13, v5

    .line 2134
    invoke-interface/range {v0 .. v13}, Lefk;->a(Lbfd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLgeo;I)Ljava/lang/String;

    goto/16 :goto_0

    .line 115
    :cond_4
    const-string v2, ";"

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v0, :cond_5

    .line 3134
    :goto_1
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 117
    const-string v0, ";"

    .line 118
    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v5

    .line 3155
    invoke-static {v0}, Ldtw;->a(Ljava/lang/String;)Ldtw;

    move-result-object v2

    .line 3156
    invoke-static {v0}, Ldtt;->b(Ljava/lang/String;)Ldtt;

    move-result-object v0

    invoke-virtual {v2, v0}, Ldtw;->a(Ldtt;)V

    .line 3157
    invoke-static {}, Laxt;->newBuilder()Laxu;

    move-result-object v0

    .line 3158
    invoke-virtual {v0, v2}, Laxu;->a(Ldtw;)Laxu;

    move-result-object v0

    .line 3159
    invoke-static {}, Lihb;->newBuilder()Laxm;

    move-result-object v2

    invoke-virtual {v0}, Laxu;->a()Laxt;

    move-result-object v0

    invoke-virtual {v2, v0}, Laxm;->a(Laxt;)Laxm;

    move-result-object v0

    invoke-virtual {v0}, Laxm;->a()Lihb;

    move-result-object v0

    .line 3161
    invoke-static {}, Lebi;->b()Lebi;

    move-result-object v2

    .line 3162
    new-instance v6, Lejg;

    .line 3164
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lebi;->a()I

    move-result v9

    move-object v7, p0

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lejg;-><init>(Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 3162
    invoke-static {v6}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Leap;)V

    .line 3167
    new-instance v3, Ldwb;

    .line 3169
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/service/NoConfirmationSmsSendService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ldwb;-><init>(Landroid/content/Context;)V

    .line 3170
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-virtual {v3, v1}, Ldwb;->a(I)Ldwb;

    move-result-object v1

    .line 3171
    invoke-virtual {v1, v0}, Ldwb;->a(Lihb;)Ldwb;

    move-result-object v0

    sget-object v1, Lbfw;->c:Lbfw;

    .line 3172
    invoke-virtual {v0, v1}, Ldwb;->a(Lbfw;)Ldwb;

    move-result-object v0

    const/4 v1, 0x2

    .line 3173
    invoke-virtual {v0, v1}, Ldwb;->b(I)Ldwb;

    move-result-object v0

    .line 3174
    invoke-virtual {v0}, Ldwb;->a()Landroid/content/Intent;

    move-result-object v0

    .line 3167
    invoke-static {v2, v0}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->a(Lebi;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move v0, v5

    .line 115
    goto :goto_1
.end method
