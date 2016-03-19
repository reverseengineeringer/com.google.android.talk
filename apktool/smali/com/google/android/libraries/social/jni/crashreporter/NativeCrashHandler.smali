.class public final Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/content/Intent;

.field private static c:Ljava/lang/Runnable;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:[Ljava/lang/String;

.field private static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.graphics"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->f:[Ljava/lang/String;

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 4

    .prologue
    .line 188
    const-class v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;

    monitor-enter v1

    :try_start_0
    const-string v0, "crashreporterer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :goto_0
    :try_start_1
    sget-boolean v0, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->g:Z

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->setup()V

    .line 206
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    monitor-exit v1

    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 191
    :try_start_2
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "armeabi-v7a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    const-string v0, "crashreporterer-armeabi-v7a"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 193
    :cond_1
    :try_start_3
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "arm64-v8a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    const-string v0, "crashreporterer-arm64-v8a"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "x86"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 196
    const-string v0, "crashreporterer-x86"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_3
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "mips"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    const-string v0, "crashreporterer-mips"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1064
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1065
    invoke-static {}, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->a()V

    .line 1066
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->a:Landroid/content/Context;

    .line 1067
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->a:Landroid/content/Context;

    const-class v2, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashReporterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1068
    sput-object v0, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->b:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1069
    sput-object v3, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->c:Ljava/lang/Runnable;

    .line 1073
    sput-object v3, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->e:Ljava/util/HashMap;

    .line 89
    :cond_0
    return-void
.end method

.method private static a(Lhzo;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Lhzo;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    .line 169
    if-eqz v3, :cond_0

    move v0, v1

    .line 170
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_0

    .line 171
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 172
    if-eqz v4, :cond_2

    move v2, v1

    .line 173
    :goto_1
    sget-object v5, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->f:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 174
    sget-object v5, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->f:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    const/4 v1, 0x1

    .line 181
    :cond_0
    return v1

    .line 173
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static reportCrash(IIJ)V
    .locals 4
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation

    .prologue
    .line 135
    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Native crash signal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Lhzo;

    invoke-direct {v1, v0}, Lhzo;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v2, "NativeCrashHandler"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    invoke-static {v1}, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->a(Lhzo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->b:Landroid/content/Intent;

    const-string v2, "knownCrash"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    :cond_0
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->c:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 145
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->c:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 148
    :cond_1
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 149
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->b:Landroid/content/Intent;

    const-string v2, "runnableName"

    sget-object v3, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_2
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 155
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->b:Landroid/content/Intent;

    const-string v2, "runnableArgs"

    sget-object v3, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 160
    :cond_3
    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->b:Landroid/content/Intent;

    const-string v2, "description"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    sget-object v0, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->a:Landroid/content/Context;

    sget-object v1, Lcom/google/android/libraries/social/jni/crashreporter/NativeCrashHandler;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    return-void
.end method

.method private static native setup()V
.end method
