.class public final Ldvk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Ldvj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lhpx;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldvk;->a:Ljava/lang/String;

    .line 14
    const-class v0, Liaw;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldvk;->b:Ljava/lang/String;

    .line 16
    const-class v0, Ldvd;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldvk;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ldvk;->d:Ldvj;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ldvj;

    invoke-direct {v0}, Ldvj;-><init>()V

    sput-object v0, Ldvk;->d:Ldvj;

    .line 41
    :cond_0
    const-class v0, Ldvd;

    .line 2018
    new-instance v1, Ldvd;

    invoke-direct {v1, p0}, Ldvd;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Ldvk;->d:Ldvj;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ldvj;

    invoke-direct {v0}, Ldvj;-><init>()V

    sput-object v0, Ldvk;->d:Ldvj;

    .line 25
    :cond_0
    const-class v1, Lhpx;

    .line 1023
    const/4 v0, 0x1

    new-array v2, v0, [Lhpx;

    const/4 v3, 0x0

    const-class v0, Ldvd;

    .line 1024
    invoke-virtual {p0, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpx;

    aput-object v0, v2, v3

    .line 25
    invoke-virtual {p0, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 27
    return-void
.end method

.method public static b(Lilh;)V
    .locals 4

    .prologue
    .line 30
    sget-object v0, Ldvk;->d:Ldvj;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ldvj;

    invoke-direct {v0}, Ldvj;-><init>()V

    sput-object v0, Ldvk;->d:Ldvj;

    .line 33
    :cond_0
    const-class v1, Liaw;

    .line 1030
    const/4 v0, 0x1

    new-array v2, v0, [Liaw;

    const/4 v3, 0x0

    const-class v0, Ldvd;

    invoke-virtual {p0, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaw;

    aput-object v0, v2, v3

    .line 33
    invoke-virtual {p0, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method
