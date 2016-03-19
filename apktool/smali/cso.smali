.class public final Lcso;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhaw;


# static fields
.field private static final a:Z


# instance fields
.field private b:Lfgr;

.field private c:J

.field private d:I

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lezi;->c:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Lcso;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lfgr;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "HANGOUT_LOG_REQUEST"

    invoke-direct {v0, v1, v2, p2}, Lfgr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p1}, Lcso;-><init>(Lfgr;ILandroid/content/Context;)V

    .line 40
    return-void
.end method

.method private constructor <init>(Lfgr;ILandroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcso;->b:Lfgr;

    .line 62
    iput p2, p0, Lcso;->d:I

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcso;->c:J

    .line 64
    iput-object p3, p0, Lcso;->e:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public a(I)Lhax;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcsp;

    invoke-direct {v0, p0, p1}, Lcsp;-><init>(Lcso;I)V

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcso;->c:J

    .line 70
    return-void
.end method

.method public a(Lkls;)V
    .locals 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcso;->b:Lfgr;

    invoke-static {p1}, Lkls;->a(Llyi;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lfgr;->a([B)Lfgt;

    move-result-object v0

    invoke-virtual {v0}, Lfgt;->a()Lfij;

    .line 1078
    sget-boolean v0, Lcso;->a:Z

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p1}, Lkls;->toString()Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcso;->d:I

    return v0
.end method

.method c()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcso;->e:Landroid/content/Context;

    return-object v0
.end method

.method d()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcso;->c:J

    return-wide v0
.end method
