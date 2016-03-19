.class public final Lmno;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 60
    invoke-static {}, Lorg/chromium/base/MemoryPressureListener;->a()V

    .line 61
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p1}, Lorg/chromium/base/MemoryPressureListener;->a(I)V

    .line 56
    return-void
.end method
