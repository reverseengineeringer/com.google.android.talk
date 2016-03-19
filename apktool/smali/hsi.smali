.class public final Lhsi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lhsh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lilx;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhsi;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lhtc;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhsi;->b:Ljava/lang/String;

    .line 15
    const-class v0, Limk;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhsi;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lhsi;->d:Lhsh;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lhsh;

    invoke-direct {v0}, Lhsh;-><init>()V

    sput-object v0, Lhsi;->d:Lhsh;

    .line 32
    :cond_0
    const-class v0, Lhtc;

    .line 2024
    new-instance v1, Lhtc;

    invoke-direct {v1, p0}, Lhtc;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 34
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 21
    sget-object v0, Lhsi;->d:Lhsh;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lhsh;

    invoke-direct {v0}, Lhsh;-><init>()V

    sput-object v0, Lhsi;->d:Lhsh;

    .line 24
    :cond_0
    const-class v0, Lilx;

    .line 1029
    const/4 v1, 0x4

    new-array v1, v1, [Lilx;

    const/4 v2, 0x0

    new-instance v3, Lhte;

    invoke-direct {v3}, Lhte;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lhsx;

    invoke-direct {v3}, Lhsx;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lhsl;

    invoke-direct {v3}, Lhsl;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lhsf;

    invoke-direct {v3}, Lhsf;-><init>()V

    aput-object v3, v1, v2

    .line 24
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 26
    return-void
.end method

.method public static b(Lilh;)V
    .locals 4

    .prologue
    .line 37
    sget-object v0, Lhsi;->d:Lhsh;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lhsh;

    invoke-direct {v0}, Lhsh;-><init>()V

    sput-object v0, Lhsi;->d:Lhsh;

    .line 40
    :cond_0
    const-class v0, Limk;

    .line 2039
    const/4 v1, 0x2

    new-array v1, v1, [Limk;

    const/4 v2, 0x0

    new-instance v3, Lhsg;

    invoke-direct {v3}, Lhsg;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lhsy;

    invoke-direct {v3}, Lhsy;-><init>()V

    aput-object v3, v1, v2

    .line 40
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 42
    return-void
.end method
