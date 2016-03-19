.class public Lorg/chromium/net/ProxyChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private b:J

.field private c:Landroid/content/Context;

.field private d:Lmqt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/net/ProxyChangeListener;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/chromium/net/ProxyChangeListener;->c:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/chromium/net/ProxyChangeListener;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lorg/chromium/net/ProxyChangeListener;

    invoke-direct {v0, p0}, Lorg/chromium/net/ProxyChangeListener;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 77
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native nativeProxySettingsChanged(J)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method

.method private native nativeProxySettingsChangedTo(JLjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .annotation runtime Lorg/chromium/base/annotations/NativeClassQualifiedName;
    .end annotation
.end method


# virtual methods
.method public a(Lmqs;)V
    .locals 8

    .prologue
    .line 179
    sget-boolean v0, Lorg/chromium/net/ProxyChangeListener;->a:Z

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 190
    if-eqz p1, :cond_2

    .line 191
    iget-wide v2, p0, Lorg/chromium/net/ProxyChangeListener;->b:J

    iget-object v4, p1, Lmqs;->a:Ljava/lang/String;

    iget v5, p1, Lmqs;->b:I

    iget-object v6, p1, Lmqs;->c:Ljava/lang/String;

    iget-object v7, p1, Lmqs;->d:[Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/chromium/net/ProxyChangeListener;->nativeProxySettingsChangedTo(JLjava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_2
    iget-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->b:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/ProxyChangeListener;->nativeProxySettingsChanged(J)V

    goto :goto_0
.end method

.method public start(J)V
    .locals 3
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 83
    iput-wide p1, p0, Lorg/chromium/net/ProxyChangeListener;->b:J

    .line 1199
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->d:Lmqt;

    if-nez v0, :cond_0

    .line 1202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1203
    const-string v1, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1204
    new-instance v1, Lmqt;

    .line 2093
    invoke-direct {v1, p0}, Lmqt;-><init>(Lorg/chromium/net/ProxyChangeListener;)V

    .line 1204
    iput-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->d:Lmqt;

    .line 1205
    iget-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/net/ProxyChangeListener;->d:Lmqt;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/net/ProxyChangeListener;->b:J

    .line 2209
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->d:Lmqt;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->c:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/net/ProxyChangeListener;->d:Lmqt;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2213
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/ProxyChangeListener;->d:Lmqt;

    .line 91
    :cond_0
    return-void
.end method
