.class public final Ldih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljrx;


# static fields
.field private static final a:Lezv;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcqr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "HangoutsAppStartupListener"

    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Ldih;->a:Lezv;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcqs;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Ldih;->b:Landroid/content/Context;

    .line 72
    const/16 v0, 0x11

    invoke-interface {p2, v0}, Lcqs;->a(I)Lcqr;

    move-result-object v0

    iput-object v0, p0, Ldih;->c:Lcqr;

    .line 73
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v1, p0, Ldih;->b:Landroid/content/Context;

    .line 1338
    const-string v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1339
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1340
    if-eqz v0, :cond_3

    .line 1341
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1342
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1343
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 1326
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1
    move v0, v3

    .line 81
    :goto_2
    if-nez v0, :cond_6

    .line 242
    :cond_2
    :goto_3
    return-void

    .line 1347
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1326
    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1327
    goto :goto_2

    .line 86
    :cond_6
    sget-object v0, Ldih;->a:Lezv;

    const-string v1, "onApplicationStartup"

    invoke-virtual {v0, v1}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 91
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Laal;->g(Landroid/content/Context;)V

    .line 97
    const-string v0, "Babel_strictmode"

    invoke-static {v0}, Lezi;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    const-string v0, "Babel"

    const-string v1, "Enable strict logging early due to tag"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 100
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 114
    :cond_7
    const-string v0, "Babel_profile"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lezi;->y:Limx;

    .line 132
    :cond_8
    :try_start_0
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :goto_4
    invoke-static {}, Lhbs;->a()V

    .line 140
    invoke-static {}, Lezm;->a()V

    .line 141
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    .line 2277
    new-instance v1, Ljava/lang/Thread;

    new-instance v6, Ldik;

    invoke-direct {v6}, Ldik;-><init>()V

    invoke-direct {v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2286
    const-string v6, "otherBackgroundInitialization"

    invoke-virtual {v1, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2287
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2291
    const-string v1, "babel_server_request_timeout"

    const v6, 0x9c40

    .line 2292
    invoke-static {v0, v1, v6}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 3083
    const-wide/16 v6, 0x2710

    add-long/2addr v0, v6

    sput-wide v0, Lhbw;->d:J

    .line 143
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v6

    .line 145
    const-class v0, Laxx;

    invoke-virtual {v6, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxx;

    .line 146
    iget-object v1, p0, Ldih;->b:Landroid/content/Context;

    .line 3304
    new-instance v7, Ldil;

    invoke-direct {v7, v1}, Ldil;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v7}, Laxx;->a(Ljava/lang/Runnable;)V

    .line 148
    const-class v1, Lddl;

    invoke-virtual {v6, v1}, Lilh;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lddl;

    .line 150
    iget-object v8, p0, Ldih;->b:Landroid/content/Context;

    invoke-interface {v1, v8, v0}, Lddl;->a(Landroid/content/Context;Laxx;)V

    goto :goto_5

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "Babel"

    const-string v6, "Error installing NativeCrashHandler"

    invoke-static {v1, v6, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 135
    :catch_1
    move-exception v0

    .line 136
    const-string v1, "Babel"

    const-string v6, "Failed to load NativeCrashHandler"

    invoke-static {v1, v6, v0}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 153
    :cond_9
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Ldwt;->a(Landroid/content/Context;)V

    .line 155
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Laal;->e(Landroid/content/Context;)Z

    move-result v0

    .line 156
    if-eqz v0, :cond_a

    .line 157
    iget-object v1, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v7, "first_launch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    :cond_a
    iget-object v1, p0, Ldih;->b:Landroid/content/Context;

    .line 4207
    new-instance v7, Lemy;

    invoke-direct {v7}, Lemy;-><init>()V

    .line 5019
    sput-object v7, Laei;->a:Laei;

    .line 4209
    new-instance v7, Lemz;

    invoke-direct {v7, v1}, Lemz;-><init>(Landroid/content/Context;)V

    .line 4219
    invoke-virtual {v7}, Lemz;->start()V

    .line 164
    invoke-static {}, Lemj;->a()V

    .line 169
    iget-object v1, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v1}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v1

    new-instance v7, Ldii;

    invoke-direct {v7, p0}, Ldii;-><init>(Ldih;)V

    .line 170
    invoke-interface {v1, v7}, Lbdp;->a(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {p0}, Ldih;->b()V

    .line 179
    new-instance v1, Ldir;

    iget-object v7, p0, Ldih;->b:Landroid/content/Context;

    invoke-direct {v1, v7, v0}, Ldir;-><init>(Landroid/content/Context;Z)V

    .line 184
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Limz;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    invoke-static {}, Lcom/google/android/apps/hangouts/sms/SmsReceiver;->a()V

    .line 192
    const-class v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v6, v0}, Lilh;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 193
    iget-object v1, p0, Ldih;->b:Landroid/content/Context;

    check-cast v1, Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_6

    .line 197
    :cond_b
    const-class v0, Lfak;

    invoke-virtual {v6, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfak;

    .line 198
    invoke-virtual {v0}, Lfak;->b()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lfak;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 199
    :cond_c
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 200
    new-instance v7, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v7}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 201
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 202
    invoke-virtual {v7}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 203
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 204
    invoke-virtual {v7}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 205
    invoke-virtual {v0}, Lfak;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 206
    const-string v0, "Babel"

    const-string v8, "Enable strict mode dialog."

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDialog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 211
    :goto_7
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 212
    invoke-virtual {v7}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 215
    :cond_d
    const-class v0, Lbwd;

    invoke-virtual {v6, v0}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    new-instance v1, Ldij;

    invoke-direct {v1, p0}, Ldij;-><init>(Ldih;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 235
    iget-object v1, p0, Ldih;->b:Landroid/content/Context;

    .line 5076
    const-string v0, "babel_healthcheck_memory_enabled"

    invoke-static {v1, v0, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 5072
    if-nez v0, :cond_e

    .line 5083
    const-string v0, "babel_healthcheck_timer_enabled"

    invoke-static {v1, v0, v2}, Laal;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 5072
    if-eqz v0, :cond_10

    :cond_e
    move v0, v3

    .line 5036
    :goto_8
    if-nez v0, :cond_11

    .line 5037
    const-string v0, "Babel_Prime"

    const-string v1, "startMemoryMonitor disabled"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 238
    const-class v0, Laxz;

    invoke-virtual {v6, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    invoke-interface {v0, v4, v5, v2, v3}, Laxz;->a(JJ)V

    .line 241
    sget-object v0, Ldih;->a:Lezv;

    const-string v1, "onApplicationStartup"

    invoke-virtual {v0, v1}, Lezv;->c(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 209
    :cond_f
    const-string v0, "Babel"

    const-string v8, "Enable strict logging."

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    move v0, v2

    .line 5072
    goto :goto_8

    .line 5040
    :cond_11
    const-string v0, "Babel_Prime"

    const-string v3, "startMemoryMonitor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5041
    const-class v0, Lhmn;

    invoke-static {v1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    invoke-static {}, Lhmn;->a()V

    goto :goto_9
.end method

.method b()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Laal;->a(Landroid/content/Context;)Lbdp;

    move-result-object v3

    .line 247
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    const-class v4, Lfak;

    invoke-static {v0, v4}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfak;

    .line 248
    invoke-virtual {v0}, Lfak;->a()Z

    move-result v0

    .line 250
    const-string v4, "babel_asserts"

    .line 251
    invoke-interface {v3, v4, v2}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v4

    .line 255
    const-string v5, "babel_expensive_asserts"

    .line 256
    invoke-interface {v3, v5, v1}, Lbdp;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 5129
    :goto_0
    sput-boolean v4, Lhbs;->a:Z

    .line 5130
    sput-boolean v0, Lhbs;->b:Z

    .line 266
    invoke-static {}, Lezi;->a()V

    .line 270
    iget-object v0, p0, Ldih;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/hangouts/realtimechat/DebugService;->a(Landroid/content/Context;)V

    .line 271
    return-void

    :cond_1
    move v0, v1

    .line 256
    goto :goto_0
.end method
