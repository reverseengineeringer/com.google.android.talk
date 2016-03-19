.class public Leni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Z

.field private static final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final c:Landroid/net/Uri;


# instance fields
.field private final d:Landroid/telephony/SmsManager;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lenj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    sget-object v0, Lezi;->r:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Leni;->a:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Leni;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 44
    const-string v0, "content://hangoutsmmssend"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Leni;->c:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SmsManager;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Leni;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    iput-object p1, p0, Leni;->d:Landroid/telephony/SmsManager;

    .line 50
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ladg;Z)Ladx;
    .locals 14

    .prologue
    .line 132
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v0}, Leni;->a(Landroid/content/Context;Ladg;)Landroid/net/Uri;

    move-result-object v2

    .line 134
    new-instance v6, Lenj;

    move/from16 v0, p4

    invoke-direct {v6, v2, v0}, Lenj;-><init>(Landroid/net/Uri;Z)V

    .line 135
    sget-object v3, Leni;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v8

    .line 136
    sget-boolean v3, Leni;->a:Z

    if-eqz v3, :cond_0

    .line 137
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "MmsSender: sending MMS. locationUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pduContentUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    monitor-enter v6

    .line 141
    :try_start_0
    iget-object v3, p0, Leni;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v3, Leni;->c:Landroid/net/Uri;

    invoke-static {v3, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 145
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.apps.hangouts.sms.SendStatusReceiver.MMS_SENT"

    const-class v7, Lcom/google/android/apps/hangouts/sms/SendStatusReceiver;

    invoke-direct {v4, v5, v3, p1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {p0, p1, v2, v0, v4}, Leni;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V

    .line 150
    const-class v2, Lbdp;

    invoke-static {p1, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbdp;

    .line 151
    const-string v3, "babel_mms_network_acquire_timeout_in_millis"

    const-wide/32 v4, 0x2bf20

    invoke-interface {v2, v3, v4, v5}, Lbdp;->a(Ljava/lang/String;J)J

    move-result-wide v4

    .line 154
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    move-wide v2, v4

    .line 156
    :goto_0
    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-lez v7, :cond_1

    .line 158
    :try_start_1
    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1302
    :goto_1
    :try_start_2
    iget-boolean v2, v6, Lenj;->c:Z

    .line 162
    if-nez v2, :cond_1

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    sub-long v2, v4, v2

    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    const-string v2, "Babel_SMS"

    const-string v3, "MmsSender: sending wait interrupted"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v7}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 172
    :cond_1
    :try_start_3
    iget-object v2, p0, Leni;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-boolean v2, Leni;->a:Z

    if-eqz v2, :cond_2

    .line 174
    const-string v2, "MmsSender: send completed. locationUrl="

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    :cond_2
    :goto_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2302
    iget-boolean v2, v6, Lenj;->c:Z

    .line 2185
    if-nez v2, :cond_4

    .line 2186
    const-string v2, "Babel_SMS"

    const-string v3, "MmsSender: timed out waiting for MMS send"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2187
    new-instance v2, Lenk;

    const-string v3, "Timeout waiting for MMS send"

    invoke-direct {v2, v3}, Lenk;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :cond_3
    :try_start_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 2191
    :cond_4
    invoke-virtual {v6}, Lenj;->a()I

    move-result v2

    .line 2192
    packed-switch v2, :pswitch_data_0

    .line 5302
    :pswitch_0
    iget-object v2, v6, Lenj;->a:Landroid/net/Uri;

    .line 2209
    invoke-static {v2, p1}, Lcom/google/android/apps/hangouts/sms/MmsFileProvider;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 2210
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2211
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2212
    sget-boolean v3, Leni;->a:Z

    if-eqz v3, :cond_5

    .line 2213
    const-string v3, "MmsSender: Deleted temp file with outgoing MMS [pduContentUri="

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6302
    iget-object v4, v6, Lenj;->a:Landroid/net/Uri;

    .line 2214
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2215
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v5, v7

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7302
    :cond_5
    iget-boolean v2, v6, Lenj;->b:Z

    .line 2218
    if-eqz v2, :cond_6

    .line 8302
    iget-object v2, v6, Lenj;->e:[B

    .line 2220
    invoke-virtual {p0, v2}, Leni;->a([B)Ladx;

    move-result-object v2

    :goto_3
    return-object v2

    .line 2196
    :pswitch_1
    const-string v2, "Babel_SMS"

    .line 3302
    iget v3, v6, Lenj;->d:I

    .line 2197
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "MmsSender: temporary failure with status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 2196
    invoke-static {v2, v3, v4}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2198
    new-instance v2, Lenk;

    const-string v3, "Temporary failure sending MMS"

    invoke-direct {v2, v3}, Lenk;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2200
    :pswitch_2
    const-string v2, "Babel_SMS"

    .line 4302
    iget v3, v6, Lenj;->d:I

    .line 2201
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "MmsSender: permanent failure with status code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 2200
    invoke-static {v2, v3, v4}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2202
    new-instance v2, Lend;

    invoke-direct {v2}, Lend;-><init>()V

    throw v2

    .line 2222
    :cond_6
    const/4 v2, 0x0

    .line 178
    goto :goto_3

    .line 2192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/Context;Lady;)Ladx;
    .locals 2

    .prologue
    .line 93
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Leni;->a(Landroid/content/Context;Ljava/lang/String;Ladg;Z)Ladx;

    move-result-object v0

    return-object v0
.end method

.method a([B)Ladx;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    if-eqz p1, :cond_1

    .line 283
    new-instance v0, Ladq;

    invoke-direct {v0, p1}, Ladq;-><init>([B)V

    invoke-virtual {v0}, Ladq;->a()Ladg;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_2

    .line 285
    instance-of v1, v0, Ladx;

    if-eqz v1, :cond_0

    .line 286
    check-cast v0, Ladx;

    .line 296
    :goto_0
    return-object v0

    .line 288
    :cond_0
    const-string v0, "Babel_SMS"

    const-string v1, "MmsSender: send response not SendConf"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 292
    :cond_2
    const-string v0, "Babel_SMS"

    const-string v1, "MmsSender: send invalid response"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method a(Landroid/content/Context;Ladg;)Landroid/net/Uri;
    .locals 6

    .prologue
    .line 241
    invoke-static {p1}, Lcom/google/android/apps/hangouts/sms/MmsFileProvider;->a(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    invoke-static {v0, p1}, Lcom/google/android/apps/hangouts/sms/MmsFileProvider;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 243
    const/4 v2, 0x0

    .line 246
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 249
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    :try_start_1
    new-instance v2, Ladk;

    invoke-direct {v2, p1, p2}, Ladk;-><init>(Landroid/content/Context;Ladg;)V

    invoke-virtual {v2}, Ladk;->a()[B

    move-result-object v2

    .line 251
    if-nez v2, :cond_2

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Empty or zero length PDU data"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    :goto_0
    if-eqz v3, :cond_0

    .line 257
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 259
    :cond_0
    const-string v4, "Babel_SMS"

    const-string v5, "Cannot create temporary file "

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v4, v2, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    new-instance v0, Lenk;

    const-string v2, "Cannot create raw mms file"

    invoke-direct {v0, v2}, Lenk;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    .line 271
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 274
    :cond_1
    :goto_3
    throw v0

    .line 254
    :cond_2
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 277
    :goto_4
    return-object v0

    .line 259
    :cond_3
    :try_start_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 262
    :goto_5
    if-eqz v3, :cond_4

    .line 263
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 265
    :cond_4
    const-string v2, "Babel_SMS"

    const-string v3, "Out of memory in composing PDU"

    invoke-static {v2, v3, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    new-instance v2, Lend;

    invoke-direct {v2, v0}, Lend;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 274
    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    .line 269
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 261
    :catch_4
    move-exception v0

    goto :goto_5

    .line 255
    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(JII[B)V
    .locals 5

    .prologue
    .line 63
    const/4 v0, -0x1

    if-eq p3, v0, :cond_2

    .line 64
    const-string v0, "Babel_SMS"

    const-string v1, "MmsSender: failure in sending mms.  requestId="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " httpStatusCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 75
    iget-object v0, p0, Leni;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lenj;

    .line 76
    if-eqz v0, :cond_1

    .line 77
    monitor-enter v0

    .line 78
    :try_start_0
    invoke-virtual {v0, p3, p4, p5}, Lenj;->a(II[B)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    return-void

    .line 68
    :cond_2
    sget-boolean v0, Leni;->a:Z

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "MmsSender: received result.  requestId="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " httpStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 229
    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p1, v0, p4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 234
    iget-object v0, p0, Leni;->d:Landroid/telephony/SmsManager;

    .line 8436
    sget-object v4, Lemy;->b:Landroid/os/Bundle;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 234
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 236
    return-void
.end method

.method public a(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lemy;->a()Laei;

    move-result-object v0

    invoke-virtual {v0}, Laei;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :goto_0
    sget-boolean v0, Leni;->a:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "MmsSender: sending NotifyResp. locationUrl="

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    :cond_0
    :goto_1
    new-instance v0, Ladg;

    const/16 v1, 0x81

    invoke-direct {v0, p2, v1}, Ladg;-><init>([BI)V

    .line 115
    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Leni;->a(Landroid/content/Context;Ljava/lang/String;Ladg;Z)Ladx;

    .line 116
    return-void

    .line 107
    :cond_1
    const/4 p3, 0x0

    goto :goto_0

    .line 109
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
