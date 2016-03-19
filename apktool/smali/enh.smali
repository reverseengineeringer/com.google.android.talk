.class public final Lenh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/util/Timer;

.field public d:Leol;

.field public e:Ladc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput v1, p0, Lenh;->a:I

    .line 197
    iput-boolean v1, p0, Lenh;->b:Z

    .line 198
    iput-object v0, p0, Lenh;->c:Ljava/util/Timer;

    .line 199
    iput-object v0, p0, Lenh;->d:Leol;

    .line 200
    iput-object v0, p0, Lenh;->e:Ladc;

    .line 201
    return-void
.end method

.method public static a(ZLadc;)V
    .locals 6

    .prologue
    .line 1045
    sget-object v0, Lene;->b:Lenh;

    .line 240
    iput-boolean p0, v0, Lenh;->b:Z

    .line 2045
    sget-object v0, Lene;->b:Lenh;

    .line 241
    iput-object p1, v0, Lenh;->e:Ladc;

    .line 3045
    sget-object v0, Lene;->b:Lenh;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 243
    if-eqz p0, :cond_1

    .line 4045
    sget-object v0, Lene;->b:Lenh;

    .line 243
    iget-object v0, v0, Lenh;->c:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 5045
    sget-object v0, Lene;->b:Lenh;

    .line 5207
    iget-object v1, v0, Lenh;->c:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 5208
    iget-object v1, v0, Lenh;->c:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 5211
    :cond_0
    new-instance v1, Ljava/util/Timer;

    const-string v2, "mms_apn_extension_timer"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, v0, Lenh;->c:Ljava/util/Timer;

    .line 5213
    :try_start_0
    iget-object v0, v0, Lenh;->c:Ljava/util/Timer;

    new-instance v1, Lenf;

    .line 5258
    invoke-direct {v1}, Lenf;-><init>()V

    .line 6036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 5214
    const-string v3, "babel_apn_extension_wait_in_millis"

    const-wide/16 v4, 0x7530

    invoke-static {v2, v3, v4, v5}, Laal;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 5213
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5220
    :cond_1
    :goto_0
    return-void

    .line 5217
    :catch_0
    move-exception v0

    .line 5218
    const-string v1, "Babel_SMS"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "MmsSendReceiveManager.SendingStatus.startApnExtensionTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lenh;->c:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lenh;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lenh;->c:Ljava/util/Timer;

    .line 231
    return-void
.end method
