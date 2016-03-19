.class public final Lfyn;
.super Ljava/lang/Object;


# static fields
.field private static a:Lfyn;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lgar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/topics/[a-zA-Z0-9-_.~%]{1,900}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lfyn;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lgar;->b(Landroid/content/Context;)Lgar;

    move-result-object v0

    iput-object v0, p0, Lfyn;->b:Lgar;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lfyn;
    .locals 2

    const-class v1, Lfyn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfyn;->a:Lfyn;

    if-nez v0, :cond_0

    new-instance v0, Lfyn;

    invoke-direct {v0, p0}, Lfyn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lfyn;->a:Lfyn;

    :cond_0
    sget-object v0, Lfyn;->a:Lfyn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
