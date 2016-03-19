.class public final Lcoq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lcop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Liaw;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcoq;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lcor;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcoq;->b:Ljava/lang/String;

    .line 15
    const-class v0, Lcon;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcoq;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 21
    sget-object v0, Lcoq;->d:Lcop;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcop;

    invoke-direct {v0}, Lcop;-><init>()V

    sput-object v0, Lcoq;->d:Lcop;

    .line 24
    :cond_0
    const-class v1, Liaw;

    .line 1029
    const/4 v0, 0x1

    new-array v2, v0, [Liaw;

    const/4 v3, 0x0

    const-class v0, Lcor;

    .line 1030
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaw;

    aput-object v0, v2, v3

    .line 24
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 26
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcoq;->d:Lcop;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcop;

    invoke-direct {v0}, Lcop;-><init>()V

    sput-object v0, Lcoq;->d:Lcop;

    .line 32
    :cond_0
    const-class v0, Lcor;

    .line 2019
    new-instance v1, Lcor;

    invoke-direct {v1, p0}, Lcor;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 34
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcoq;->d:Lcop;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcop;

    invoke-direct {v0}, Lcop;-><init>()V

    sput-object v0, Lcoq;->d:Lcop;

    .line 40
    :cond_0
    const-class v1, Lcon;

    .line 2024
    const-class v0, Lcor;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcon;

    .line 40
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 42
    return-void
.end method
