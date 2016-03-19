.class public final Ldux;
.super Laxv;
.source "SourceFile"


# static fields
.field private static b:Ldux;


# instance fields
.field private final a:Landroid/content/Context;

.field private c:Z

.field private d:Lhba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Ldux;->b:Ldux;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Laxv;-><init>()V

    .line 41
    iput-object p1, p0, Ldux;->a:Landroid/content/Context;

    .line 42
    const-class v0, Lhba;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iput-object v0, p0, Ldux;->d:Lhba;

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1081
    instance-of v0, p1, Lcom/google/android/apps/hangouts/phone/BabelHomeActivity;

    if-eqz v0, :cond_1

    .line 1082
    iget-boolean v0, p0, Ldux;->c:Z

    if-eqz v0, :cond_0

    .line 1083
    const/16 v0, 0x8da

    .line 53
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Laal;->a(Lbfd;I)V

    .line 2061
    iget-object v0, p0, Ldux;->a:Landroid/content/Context;

    invoke-static {v0}, Ldvd;->a(Landroid/content/Context;)Lbfd;

    move-result-object v0

    .line 2062
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lbfd;->g()I

    move-result v0

    .line 2660
    :goto_1
    sget-object v1, Ldvd;->d:Ldvi;

    invoke-static {}, Ldvi;->a()Z

    move-result v1

    .line 2064
    if-eqz v1, :cond_d

    .line 2065
    const/16 v1, 0xac0

    .line 2069
    :goto_2
    iget-object v2, p0, Ldux;->d:Lhba;

    .line 2070
    invoke-interface {v2, v0}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 2071
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2072
    invoke-interface {v0, v1}, Lhax;->a(Ljava/util/concurrent/TimeUnit;)V

    .line 55
    iput-boolean v3, p0, Ldux;->c:Z

    .line 56
    return-void

    .line 1084
    :cond_0
    const/16 v0, 0x8dd

    goto :goto_0

    .line 1085
    :cond_1
    instance-of v0, p1, Lcom/google/android/apps/hangouts/phone/HangoutUrlHandlerActivity;

    if-eqz v0, :cond_3

    .line 1086
    iget-boolean v0, p0, Ldux;->c:Z

    if-eqz v0, :cond_2

    .line 1087
    const/16 v0, 0x7aa

    goto :goto_0

    .line 1088
    :cond_2
    const/16 v0, 0x7b3

    goto :goto_0

    .line 1089
    :cond_3
    instance-of v0, p1, Lcom/google/android/apps/hangouts/phone/ShareIntentActivity;

    if-eqz v0, :cond_5

    .line 1090
    iget-boolean v0, p0, Ldux;->c:Z

    if-eqz v0, :cond_4

    .line 1091
    const/16 v0, 0x7ae

    goto :goto_0

    .line 1092
    :cond_4
    const/16 v0, 0x7b7

    goto :goto_0

    .line 1093
    :cond_5
    instance-of v0, p1, Lcom/google/android/apps/hangouts/phone/ShowDialerActivity;

    if-eqz v0, :cond_7

    .line 1094
    iget-boolean v0, p0, Ldux;->c:Z

    if-eqz v0, :cond_6

    .line 1095
    const/16 v0, 0x8db

    goto :goto_0

    .line 1096
    :cond_6
    const/16 v0, 0x8de

    goto :goto_0

    .line 1097
    :cond_7
    instance-of v0, p1, Lcom/google/android/apps/hangouts/hangout/HangoutActivity;

    if-eqz v0, :cond_9

    .line 1098
    iget-boolean v0, p0, Ldux;->c:Z

    if-eqz v0, :cond_8

    .line 1099
    const/16 v0, 0x8dc

    goto :goto_0

    .line 1100
    :cond_8
    const/16 v0, 0x8df

    goto :goto_0

    .line 1101
    :cond_9
    instance-of v0, p1, Lcom/google/android/apps/hangouts/phone/ConversationActivity;

    if-eqz v0, :cond_a

    .line 1102
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1103
    if-eqz v0, :cond_a

    const-string v1, "is_chat_notification"

    .line 1104
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ldux;->c:Z

    if-eqz v0, :cond_a

    .line 1106
    iget-object v0, p0, Ldux;->a:Landroid/content/Context;

    const-class v1, Lcqs;

    .line 1107
    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcqs;

    .line 1108
    const/16 v1, 0x11

    .line 1109
    invoke-interface {v0, v1}, Lcqs;->a(I)Lcqr;

    move-result-object v0

    .line 1112
    const-string v1, "hangout_launch_remote_notification"

    invoke-interface {v0, v1}, Lcqr;->a(Ljava/lang/String;)V

    .line 1114
    const/16 v0, 0x7ab

    goto/16 :goto_0

    .line 1118
    :cond_a
    iget-boolean v0, p0, Ldux;->c:Z

    if-eqz v0, :cond_b

    .line 1119
    const/16 v0, 0x7af

    goto/16 :goto_0

    .line 1120
    :cond_b
    const/16 v0, 0x7b8

    goto/16 :goto_0

    .line 2062
    :cond_c
    const/4 v0, -0x1

    goto/16 :goto_1

    .line 2067
    :cond_d
    const/16 v1, 0xac1

    goto/16 :goto_2
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    const/16 v1, 0x8e0

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 78
    return-void
.end method

.method protected j_()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldux;->c:Z

    .line 48
    return-void
.end method
