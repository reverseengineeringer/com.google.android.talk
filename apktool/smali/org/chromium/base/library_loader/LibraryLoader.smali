.class public Lorg/chromium/base/library_loader/LibraryLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static volatile b:Lorg/chromium/base/library_loader/LibraryLoader;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Ljava/lang/Object;

    return-void
.end method

.method public static getLibraryProcessType()I
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Lorg/chromium/base/library_loader/LibraryLoader;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->b:Lorg/chromium/base/library_loader/LibraryLoader;

    iget v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->c:I

    goto :goto_0
.end method

.method private static native nativeForkAndPrefetchNativeLibrary()Z
.end method

.method private native nativeGetVersionNumber()Ljava/lang/String;
.end method

.method private native nativeInitCommandLine([Ljava/lang/String;)V
.end method

.method private native nativeLibraryLoaded()Z
.end method

.method private static native nativePercentageOfResidentNativeLibraryCode()I
.end method

.method private native nativeRecordChromiumAndroidLinkerBrowserHistogram(ZZIJ)V
.end method

.method private native nativeRegisterChromiumAndroidLinkerRendererHistogram(ZZJ)V
.end method
