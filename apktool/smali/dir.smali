.class public final Ldir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final c:Z


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Limx;

    const-string v1, "debug.chat.crashinfo"

    invoke-direct {v0, v1, v2}, Limx;-><init>(Ljava/lang/String;B)V

    .line 42
    sput-boolean v2, Ldir;->c:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Ldir;->a:Landroid/content/Context;

    .line 76
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Ldir;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 77
    new-instance v0, Limz;

    new-instance v2, Lina;

    .line 1320
    invoke-direct {v2, p0}, Lina;-><init>(Ldir;)V

    .line 77
    invoke-direct {v0, p1, p0, v2}, Limz;-><init>(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;Lina;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 83
    if-eqz p2, :cond_0

    .line 2239
    iget-object v0, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "crashes"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3213
    :cond_0
    iget-object v0, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3214
    if-eqz p2, :cond_b

    move v0, v1

    .line 3262
    :goto_0
    iget-object v2, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3263
    if-nez p2, :cond_c

    const-string v4, "crashed"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v3

    .line 3264
    :goto_1
    if-nez p2, :cond_1

    if-eqz v4, :cond_2

    .line 3267
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "crashed"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    :cond_2
    if-eqz v4, :cond_f

    .line 89
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 90
    const-string v2, "exception_class"

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 91
    const-string v2, "Babel_Crash"

    const-string v7, "Startup - recovered from crash. Launches: %s exception class:  %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v6, v8, v3

    .line 91
    invoke-static {v2, v7, v8}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    new-instance v7, Lklf;

    invoke-direct {v7}, Lklf;-><init>()V

    .line 97
    invoke-direct {p0}, Ldir;->a()I

    move-result v2

    if-ne v2, v3, :cond_d

    move v2, v3

    .line 98
    :goto_2
    if-eqz v2, :cond_3

    .line 99
    const-string v2, "first_launch"

    invoke-interface {v5, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 100
    const-string v2, "last_crash"

    invoke-interface {v5, v2, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 101
    sub-long v8, v10, v8

    .line 102
    const-string v2, "Babel_Crash"

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Startup - first crash since version change: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v10}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    long-to-int v2, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lklf;->c:Ljava/lang/Integer;

    .line 107
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v7, Lklf;->b:Ljava/lang/Integer;

    .line 108
    iput-object v6, v7, Lklf;->a:Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ldir;->c()Lhaw;

    move-result-object v2

    const/16 v5, 0x941

    .line 110
    invoke-interface {v2, v5}, Lhaw;->a(I)Lhax;

    move-result-object v2

    .line 111
    invoke-interface {v2, v7}, Lhax;->a(Lklf;)Lhax;

    move-result-object v2

    .line 112
    invoke-interface {v2}, Lhax;->d()V

    .line 4111
    const-class v2, Lcfx;

    .line 4112
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4113
    const-string v5, "ONGOING_CALL_SESSION"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4114
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    move v2, v1

    .line 113
    :goto_3
    if-eqz v2, :cond_4

    .line 115
    invoke-direct {p0}, Ldir;->c()Lhaw;

    move-result-object v2

    const/16 v5, 0xa9a

    invoke-interface {v2, v5}, Lhaw;->a(I)Lhax;

    move-result-object v2

    invoke-interface {v2}, Lhax;->d()V

    .line 4284
    :cond_4
    iget-object v2, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 4285
    const-string v5, "was_platform_bug"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 4286
    if-eqz v5, :cond_5

    .line 4289
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "was_platform_bug"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    :cond_5
    if-eqz v5, :cond_6

    .line 118
    invoke-direct {p0}, Ldir;->c()Lhaw;

    move-result-object v2

    const/16 v5, 0xb8b

    invoke-interface {v2, v5}, Lhaw;->a(I)Lhax;

    move-result-object v2

    invoke-interface {v2}, Lhax;->d()V

    .line 120
    :cond_6
    sget-boolean v2, Ldir;->c:Z

    if-eqz v2, :cond_7

    .line 121
    invoke-direct {p0}, Ldir;->b()V

    .line 5223
    :cond_7
    :goto_4
    iget-object v2, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5224
    if-eqz v4, :cond_10

    .line 5225
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "launches"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5273
    :goto_5
    iget-object v0, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5274
    const-string v2, "processing_push"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 5275
    if-eqz v2, :cond_8

    .line 5278
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "processing_push"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    :cond_8
    if-eqz v2, :cond_9

    .line 132
    const-string v0, "Babel"

    const-string v2, "wasProcessingPush is set; force sync"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Ldir;->c()Lhaw;

    move-result-object v0

    const/16 v1, 0x942

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 136
    invoke-static {}, Lcom/google/android/apps/hangouts/realtimechat/RealTimeChatService;->e()V

    .line 139
    :cond_9
    invoke-static {p1}, Limz;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    invoke-direct {p0}, Ldir;->c()Lhaw;

    move-result-object v0

    const/16 v1, 0xb8c

    .line 144
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lhax;->d()V

    .line 147
    :cond_a
    return-void

    .line 3217
    :cond_b
    const-string v2, "launches"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    :cond_c
    move v4, v1

    .line 3263
    goto/16 :goto_1

    :cond_d
    move v2, v1

    .line 97
    goto/16 :goto_2

    .line 4117
    :cond_e
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "ONGOING_CALL_SESSION"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v3

    .line 4118
    goto/16 :goto_3

    .line 124
    :cond_f
    const-string v2, "Babel_Crash"

    const-string v5, "Startup - clean"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 5227
    :cond_10
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "launches"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_5
.end method

.method private a()I
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    const-string v1, "crashes"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "processing_push"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v0}, Lbff;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 308
    iget-object v2, p0, Ldir;->a:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    invoke-static {v2, v0}, Laal;->c(Landroid/content/Context;I)Ljava/io/File;

    goto :goto_0

    .line 310
    :cond_0
    return-void
.end method

.method private c()Lhaw;
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v0}, Ldvd;->b(Landroid/content/Context;)I

    move-result v1

    .line 317
    iget-object v0, p0, Ldir;->a:Landroid/content/Context;

    const-class v2, Lhba;

    invoke-static {v0, v2}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;ZZ)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 6244
    iget-object v1, p0, Ldir;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6248
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crashed"

    .line 6249
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "crashes"

    .line 6250
    invoke-direct {p0}, Ldir;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_crash"

    .line 6251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "exception_class"

    .line 6252
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "was_platform_bug"

    .line 6253
    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6254
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    new-instance v1, Ldis;

    invoke-direct {v1, p0, p2, p4, p1}, Ldis;-><init>(Ldir;Ljava/lang/Throwable;ZLjava/lang/Thread;)V

    .line 181
    invoke-static {}, Laal;->v()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    const-string v0, "Babel_Crash"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x28

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Uncaught exception in background thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lezi;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    invoke-static {v1}, Laal;->a(Ljava/lang/Runnable;)V

    .line 188
    :goto_1
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Ldir;->a(Ljava/lang/Thread;Ljava/lang/Throwable;ZZ)V

    .line 152
    return-void
.end method
