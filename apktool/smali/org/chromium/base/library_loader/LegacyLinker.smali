.class public Lorg/chromium/base/library_loader/LegacyLinker;
.super Lorg/chromium/base/library_loader/Linker;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Bundle;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/chromium/base/library_loader/Linker$LibInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;-><init>()V

    .line 41
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->c:Z

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/LegacyLinker;->d:Z

    .line 48
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->e:Z

    .line 52
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->f:Z

    .line 55
    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->g:Landroid/os/Bundle;

    .line 58
    iput-wide v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->h:J

    .line 62
    iput-wide v4, p0, Lorg/chromium/base/library_loader/LegacyLinker;->i:J

    .line 65
    iput-boolean v1, p0, Lorg/chromium/base/library_loader/LegacyLinker;->j:Z

    .line 68
    iput-object v2, p0, Lorg/chromium/base/library_loader/LegacyLinker;->k:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method public static synthetic a(J)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0, p1}, Lorg/chromium/base/library_loader/LegacyLinker;->nativeRunCallbackOnUiThread(J)V

    return-void
.end method

.method private static native nativeCreateSharedRelro(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeLoadLibraryInZipFile(Ljava/lang/String;Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeRunCallbackOnUiThread(J)V
.end method

.method private static native nativeUseSharedRelro(Ljava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method public static postCallbackOnMainThread(J)V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 568
    new-instance v0, Lmnz;

    invoke-direct {v0, p0, p1}, Lmnz;-><init>(J)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 574
    return-void
.end method
