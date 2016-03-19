.class public final Lfgr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfib",
            "<",
            "Lfgx;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lfhx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhx",
            "<",
            "Lfgx;",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lfhw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfhw",
            "<",
            "Lfhz;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lfgv;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private final l:Z

.field private m:I

.field private final n:Lfgv;

.field private final o:Lfmr;

.field private p:Lfgu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfib;

    invoke-direct {v0}, Lfib;-><init>()V

    sput-object v0, Lfgr;->a:Lfib;

    new-instance v0, Lfgs;

    invoke-direct {v0}, Lfgs;-><init>()V

    sput-object v0, Lfgr;->b:Lfhx;

    new-instance v0, Lfhw;

    const-string v1, "ClearcutLogger.API"

    sget-object v2, Lfgr;->b:Lfhx;

    sget-object v3, Lfgr;->a:Lfib;

    invoke-direct {v0, v1, v2, v3}, Lfhw;-><init>(Ljava/lang/String;Lfhx;Lfib;)V

    sput-object v0, Lfgr;->c:Lfhw;

    new-instance v0, Lfhe;

    invoke-direct {v0}, Lfhe;-><init>()V

    sput-object v0, Lfgr;->d:Lfgv;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    sget-object v5, Lfgr;->d:Lfgv;

    invoke-static {}, Lfmt;->c()Lfmr;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lfgr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfgv;Lfmr;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v5, Lfgr;->d:Lfgv;

    invoke-static {}, Lfmt;->c()Lfmr;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lfgr;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfgv;Lfmr;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lfgv;Lfmr;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lfgr;->i:I

    iput v0, p0, Lfgr;->m:I

    iput-object p1, p0, Lfgr;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfgr;->f:Ljava/lang/String;

    invoke-static {p1}, Lfgr;->a(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lfgr;->g:I

    iput v2, p0, Lfgr;->i:I

    iput-object p2, p0, Lfgr;->h:Ljava/lang/String;

    iput-object p3, p0, Lfgr;->j:Ljava/lang/String;

    iput-object p4, p0, Lfgr;->k:Ljava/lang/String;

    iput-boolean v0, p0, Lfgr;->l:Z

    iput-object p5, p0, Lfgr;->n:Lfgv;

    iput-object p6, p0, Lfgr;->o:Lfmr;

    new-instance v1, Lfgu;

    invoke-direct {v1}, Lfgu;-><init>()V

    iput-object v1, p0, Lfgr;->p:Lfgu;

    iput v0, p0, Lfgr;->m:I

    iget-boolean v1, p0, Lfgr;->l:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfgr;->j:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "can\'t be anonymous with an upload account"

    invoke-static {v0, v1}, Laal;->b(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lfgr;)I
    .locals 1

    iget v0, p0, Lfgr;->i:I

    return v0
.end method

.method static synthetic a(Ljava/util/ArrayList;)[I
    .locals 5

    .prologue
    .line 2000
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 0
    goto :goto_0
.end method

.method static synthetic b(Lfgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfgr;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lfgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfgr;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lfgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfgr;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lfgr;)I
    .locals 1

    iget v0, p0, Lfgr;->m:I

    return v0
.end method

.method static synthetic f(Lfgr;)Lfmr;
    .locals 1

    iget-object v0, p0, Lfgr;->o:Lfmr;

    return-object v0
.end method

.method static synthetic g(Lfgr;)Lfgu;
    .locals 1

    iget-object v0, p0, Lfgr;->p:Lfgu;

    return-object v0
.end method

.method static synthetic h(Lfgr;)Z
    .locals 1

    iget-boolean v0, p0, Lfgr;->l:Z

    return v0
.end method

.method static synthetic i(Lfgr;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfgr;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lfgr;)I
    .locals 1

    iget v0, p0, Lfgr;->g:I

    return v0
.end method

.method static synthetic k(Lfgr;)Lfgv;
    .locals 1

    iget-object v0, p0, Lfgr;->n:Lfgv;

    return-object v0
.end method

.method static synthetic l(Lfgr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lfgr;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a([B)Lfgt;
    .locals 1

    .prologue
    .line 0
    new-instance v0, Lfgt;

    .line 1000
    invoke-direct {v0, p0, p1}, Lfgt;-><init>(Lfgr;[B)V

    .line 0
    return-object v0
.end method

.method public a(Lfic;)V
    .locals 1

    iget-object v0, p0, Lfgr;->n:Lfgv;

    invoke-interface {v0, p1}, Lfgv;->a(Lfic;)V

    return-void
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Z
    .locals 4

    iget-object v0, p0, Lfgr;->n:Lfgv;

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v2, v3, p3}, Lfgv;->a(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
