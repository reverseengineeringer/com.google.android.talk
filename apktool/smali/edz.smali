.class public final Ledz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Ledx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lbwl;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledz;->a:Ljava/lang/String;

    .line 13
    const-class v0, Ledw;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledz;->b:Ljava/lang/String;

    .line 15
    const-class v0, Lbcr;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledz;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Ledz;->d:Ledx;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Ledx;

    invoke-direct {v0}, Ledx;-><init>()V

    sput-object v0, Ledz;->d:Ledx;

    .line 32
    :cond_0
    const-class v0, Ledw;

    sget-object v1, Ledz;->d:Ledx;

    .line 33
    invoke-virtual {v1, p0}, Ledx;->a(Landroid/content/Context;)Ledw;

    move-result-object v1

    .line 32
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 34
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Ledz;->d:Ledx;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ledx;

    invoke-direct {v0}, Ledx;-><init>()V

    sput-object v0, Ledz;->d:Ledx;

    .line 24
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Ledz;->d:Ledx;

    .line 25
    invoke-virtual {v1}, Ledx;->a()[Lbwl;

    move-result-object v1

    .line 24
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 26
    return-void
.end method

.method public static b(Lilh;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 37
    sget-object v0, Ledz;->d:Ledx;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ledx;

    invoke-direct {v0}, Ledx;-><init>()V

    sput-object v0, Ledz;->d:Ledx;

    .line 40
    :cond_0
    const-class v0, Lbcr;

    .line 1092
    new-array v1, v6, [Lbcr;

    new-instance v2, Lbcr;

    const-class v3, Lecp;

    invoke-direct {v2, v3}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v2, v1, v4

    new-instance v2, Lbcr;

    const-class v3, Lecu;

    invoke-direct {v2, v3}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v2, v1, v5

    .line 40
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 42
    sget-object v0, Ledz;->d:Ledx;

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ledx;

    invoke-direct {v0}, Ledx;-><init>()V

    sput-object v0, Ledz;->d:Ledx;

    .line 45
    :cond_1
    const-class v0, Lbcr;

    .line 1101
    new-array v1, v4, [Lbcr;

    .line 45
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 47
    sget-object v0, Ledz;->d:Ledx;

    if-nez v0, :cond_2

    .line 48
    new-instance v0, Ledx;

    invoke-direct {v0}, Ledx;-><init>()V

    sput-object v0, Ledz;->d:Ledx;

    .line 50
    :cond_2
    const-class v0, Lbcr;

    .line 1108
    const/4 v1, 0x7

    new-array v1, v1, [Lbcr;

    new-instance v2, Lbcr;

    const-class v3, Leaz;

    invoke-direct {v2, v3}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v2, v1, v4

    new-instance v2, Lbcr;

    const-class v3, Lebl;

    invoke-direct {v2, v3}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v2, v1, v5

    new-instance v2, Lbcr;

    const-class v3, Leck;

    invoke-direct {v2, v3}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v2, v1, v6

    const/4 v2, 0x3

    new-instance v3, Lbcr;

    const-class v4, Lecz;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lbcr;

    const-class v4, Ledb;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Lbcr;

    const-class v4, Ledq;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Lbcr;

    const-class v4, Lecx;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    .line 50
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 52
    return-void
.end method
