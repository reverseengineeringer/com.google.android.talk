.class final Lhmm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhna;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lhmm;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a()Lhnb;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lhnb;->b:Lhnb;

    return-object v0
.end method

.method public b()Lmik;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v2, p0, Lhmm;->a:Landroid/content/Context;

    .line 1123
    invoke-static {}, Laal;->x()V

    .line 2111
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.permission.GET_PACKAGE_SIZE"

    .line 2112
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2111
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.GET_PACKAGE_SIZE"

    .line 2113
    invoke-virtual {v2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 1124
    :goto_0
    if-eqz v1, :cond_3

    .line 1125
    invoke-static {v2}, Laal;->y(Landroid/content/Context;)Landroid/content/pm/PackageStats;

    move-result-object v1

    .line 34
    :goto_1
    if-eqz v1, :cond_1

    .line 35
    new-instance v0, Lmik;

    invoke-direct {v0}, Lmik;-><init>()V

    .line 3046
    new-instance v2, Lmif;

    invoke-direct {v2}, Lmif;-><init>()V

    .line 3047
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmif;->a:Ljava/lang/Long;

    .line 3048
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmif;->b:Ljava/lang/Long;

    .line 3049
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmif;->c:Ljava/lang/Long;

    .line 3050
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmif;->d:Ljava/lang/Long;

    .line 3051
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmif;->e:Ljava/lang/Long;

    .line 3052
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmif;->f:Ljava/lang/Long;

    .line 3053
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lmif;->g:Ljava/lang/Long;

    .line 3054
    iget-wide v4, v1, Landroid/content/pm/PackageStats;->externalObbSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v2, Lmif;->h:Ljava/lang/Long;

    .line 36
    iput-object v2, v0, Lmik;->i:Lmif;

    .line 37
    const-string v1, "pkgMetric: "

    iget-object v2, v0, Lmik;->i:Lmif;

    invoke-virtual {v2}, Lmif;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    :cond_1
    :goto_2
    return-object v0

    .line 2113
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 1129
    goto :goto_1

    .line 37
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method
