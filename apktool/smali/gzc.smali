.class public final Lgzc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lgzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lgyu;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzc;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lgyr;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzc;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lgyv;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzc;->c:Ljava/lang/String;

    .line 18
    const-class v0, Lgys;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgzc;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lgzc;->e:Lgzb;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lgzb;

    invoke-direct {v0}, Lgzb;-><init>()V

    sput-object v0, Lgzc;->e:Lgzb;

    .line 27
    :cond_0
    const-class v0, Lgyu;

    .line 1022
    new-instance v1, Lgyz;

    invoke-direct {v1}, Lgyz;-><init>()V

    .line 27
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 29
    return-void
.end method

.method public static b(Lilh;)V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lgzc;->e:Lgzb;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lgzb;

    invoke-direct {v0}, Lgzb;-><init>()V

    sput-object v0, Lgzc;->e:Lgzb;

    .line 35
    :cond_0
    const-class v0, Lgyr;

    .line 2017
    new-instance v1, Lgyw;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgyw;-><init>(B)V

    .line 35
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 37
    return-void
.end method

.method public static c(Lilh;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lgzc;->e:Lgzb;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lgzb;

    invoke-direct {v0}, Lgzb;-><init>()V

    sput-object v0, Lgzc;->e:Lgzb;

    .line 43
    :cond_0
    const-class v0, Lgyv;

    .line 2027
    new-instance v1, Lgza;

    invoke-direct {v1}, Lgza;-><init>()V

    .line 43
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 45
    return-void
.end method

.method public static d(Lilh;)V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lgzc;->e:Lgzb;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lgzb;

    invoke-direct {v0}, Lgzb;-><init>()V

    sput-object v0, Lgzc;->e:Lgzb;

    .line 51
    :cond_0
    const-class v0, Lgys;

    .line 2032
    new-instance v1, Lgyy;

    invoke-direct {v1}, Lgyy;-><init>()V

    .line 51
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 53
    return-void
.end method
