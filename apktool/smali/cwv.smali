.class final Lcwv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 67
    const-string v0, "babel_business_renotification_max_count"

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 71
    if-gtz p3, :cond_0

    if-gt p3, v0, :cond_2

    .line 73
    :cond_0
    invoke-static {p1, p2, v3, v3, v6}, Lcwx;->a(Landroid/content/Context;IZZZ)Lcwx;

    move-result-object v2

    .line 76
    iget v0, v2, Lcwx;->a:I

    if-lez v0, :cond_2

    .line 77
    sget-boolean v0, Lcxt;->b:Z

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Renotify the business. Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    move-object v0, p1

    move v1, p2

    move v4, v3

    move v5, v3

    .line 80
    invoke-static/range {v0 .. v5}, Lcxt;->a(Landroid/content/Context;ILcwx;ZZZ)V

    .line 83
    add-int/lit8 v4, p3, 0x1

    .line 1115
    packed-switch v4, :pswitch_data_0

    .line 1129
    const-wide/16 v0, -0x1

    move-wide v2, v0

    .line 1093
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    .line 1097
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1099
    new-instance v1, Lcwu;

    invoke-direct {v1}, Lcwu;-><init>()V

    invoke-virtual {v1, p1, p2, v4}, Lcwu;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object v1

    .line 1101
    const-string v4, "com.google.android.apps.hangouts.UPDATE_NOTIFICATION"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1103
    const/16 v4, 0x64

    .line 1105
    invoke-static {p2, v6, v4, v7}, Leyr;->a(IIILjava/lang/String;)I

    move-result v4

    const/high16 v5, 0x8000000

    .line 1103
    invoke-static {p1, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1109
    const/4 v4, 0x2

    .line 1110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 1109
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 86
    :cond_2
    return-void

    .line 1117
    :pswitch_0
    const-string v0, "babel_business_1st_renotification_delay_ms"

    sget-wide v2, Leea;->p:J

    invoke-static {p1, v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    .line 1121
    :pswitch_1
    const-string v0, "babel_business_2nd_renotification_delay_ms"

    sget-wide v2, Leea;->q:J

    invoke-static {p1, v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    .line 1125
    :pswitch_2
    const-string v0, "babel_business_3rd_renotification_delay_ms"

    sget-wide v2, Leea;->r:J

    invoke-static {p1, v0, v2, v3}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_0

    .line 1115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
