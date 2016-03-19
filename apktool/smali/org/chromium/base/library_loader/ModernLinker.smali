.class Lorg/chromium/base/library_loader/ModernLinker;
.super Lorg/chromium/base/library_loader/Linker;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Z

.field private e:Ljava/util/HashMap;
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

.field private f:Landroid/os/Bundle;

.field private g:Z

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

.field private l:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lorg/chromium/base/library_loader/Linker;-><init>()V

    .line 36
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->c:Z

    .line 39
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->d:Z

    .line 42
    iput-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->e:Ljava/util/HashMap;

    .line 45
    iput-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->f:Landroid/os/Bundle;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/library_loader/ModernLinker;->g:Z

    .line 51
    iput-wide v4, p0, Lorg/chromium/base/library_loader/ModernLinker;->h:J

    .line 56
    iput-wide v4, p0, Lorg/chromium/base/library_loader/ModernLinker;->i:J

    .line 59
    iput-boolean v2, p0, Lorg/chromium/base/library_loader/ModernLinker;->j:Z

    .line 62
    iput-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->k:Ljava/util/HashMap;

    .line 65
    iput-object v1, p0, Lorg/chromium/base/library_loader/ModernLinker;->l:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private static native nativeCreateSharedRelro(Ljava/lang/String;JLjava/lang/String;Lorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method

.method private static native nativeGetCpuAbi()Ljava/lang/String;
.end method

.method private static native nativeLoadLibrary(Ljava/lang/String;JLorg/chromium/base/library_loader/Linker$LibInfo;)Z
.end method
