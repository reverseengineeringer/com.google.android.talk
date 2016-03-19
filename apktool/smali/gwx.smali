.class public final Lgwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgwu;


# static fields
.field public static final a:Lgyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgyh",
            "<",
            "Lavb;",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lfgr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lgwy;

    invoke-direct {v0}, Lgwy;-><init>()V

    sput-object v0, Lgwx;->a:Lgyh;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lfgr;

    invoke-direct {v0, p1, p2, p2, p3}, Lfgr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lgwx;->b:Lfgr;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 1027
    invoke-direct {p0, p1, p2, p3}, Lgwx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    return-void
.end method


# virtual methods
.method public final a([B)Lgwt;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lgxb;

    iget-object v1, p0, Lgwx;->b:Lfgr;

    invoke-direct {v0, v1, p1}, Lgxb;-><init>(Lfgr;[B)V

    return-object v0
.end method

.method public final a(Lgxk;Ljava/util/concurrent/TimeUnit;)Z
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lgwx;->b:Lfgr;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, p2}, Lfgr;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
