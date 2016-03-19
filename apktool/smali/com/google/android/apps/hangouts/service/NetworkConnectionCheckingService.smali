.class public Lcom/google/android/apps/hangouts/service/NetworkConnectionCheckingService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lezi;->q:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/hangouts/service/NetworkConnectionCheckingService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/apps/hangouts/service/NetworkConnectionCheckingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    const/4 v3, 0x0

    .line 119
    :try_start_0
    const-class v0, Lbdp;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbdp;

    .line 120
    const-string v4, "babel_captive_portal_detection_host_name"

    const-string v5, "https://clients3.google.com/generate_204"

    invoke-interface {v0, v4, v5}, Lbdp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    const-string v5, "babel_captive_portal_detection_time_out"

    const/16 v6, 0x1388

    invoke-interface {v0, v5, v6}, Lbdp;->a(Ljava/lang/String;I)I

    move-result v5

    .line 128
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :try_start_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 131
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 133
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 134
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 135
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    const/16 v4, 0xcc

    if-eq v3, v4, :cond_1

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v0, v1

    .line 150
    :goto_0
    return v0

    .line 143
    :cond_1
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_1
    move v0, v2

    .line 150
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 139
    :goto_2
    :try_start_2
    const-string v3, "Babel_NetConnCheckSvc"

    const-string v4, "unexpected exception "

    invoke-static {v3, v4, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 143
    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 140
    :catch_1
    move-exception v0

    .line 141
    :goto_3
    :try_start_3
    const-string v1, "Babel_NetConnCheckSvc"

    const-string v4, "IO exceptions, probably not a captive portal "

    invoke-static {v1, v4, v0}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    if-eqz v3, :cond_2

    .line 144
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0

    .line 143
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_4

    .line 140
    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    .line 138
    :catch_3
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 52
    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 58
    const-string v0, "update_type"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/service/NetworkConnectionCheckingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcwo;

    invoke-static {v0, v3}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwo;

    .line 61
    invoke-interface {v0}, Lcwo;->a()Lcwn;

    move-result-object v3

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    const-string v4, "initialize_connection_state"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    sget-object v1, Lcwn;->a:Lcwn;

    if-eq v3, v1, :cond_3

    .line 73
    sget-boolean v0, Lcom/google/android/apps/hangouts/service/NetworkConnectionCheckingService;->a:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "connection state already initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 78
    :cond_2
    const-string v4, "verify_connection_state"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {v3}, Lcwn;->a()Z

    move-result v2

    const-string v3, "expected_connectivity"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eq v2, v1, :cond_0

    .line 1093
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/apps/hangouts/service/NetworkConnectionCheckingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1094
    const-string v1, "connectivity"

    .line 1095
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1096
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1097
    if-nez v1, :cond_4

    .line 1098
    sget-object v1, Lcwn;->b:Lcwn;

    .line 84
    :goto_1
    invoke-interface {v0, v1}, Lcwo;->a(Lcwn;)V

    goto :goto_0

    .line 1100
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1101
    sget-object v1, Lcwn;->b:Lcwn;

    goto :goto_1

    .line 1105
    :cond_5
    invoke-static {v2}, Lcom/google/android/apps/hangouts/service/NetworkConnectionCheckingService;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1106
    sget-object v1, Lcwn;->c:Lcwn;

    goto :goto_1

    .line 1109
    :cond_6
    sget-object v1, Lcwn;->d:Lcwn;

    goto :goto_1
.end method
