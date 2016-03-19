.class public final Lbpy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lbpu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lbjl;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpy;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lbzz;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpy;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lbjk;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbpy;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lbpy;->d:Lbpu;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lbpu;

    invoke-direct {v0}, Lbpu;-><init>()V

    sput-object v0, Lbpy;->d:Lbpu;

    .line 25
    :cond_0
    const-class v0, Lbjl;

    sget-object v1, Lbpy;->d:Lbpu;

    .line 26
    invoke-virtual {v1}, Lbpu;->b()Lbjl;

    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 27
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lbpy;->d:Lbpu;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lbpu;

    invoke-direct {v0}, Lbpu;-><init>()V

    sput-object v0, Lbpy;->d:Lbpu;

    .line 33
    :cond_0
    const-class v0, Lbzz;

    sget-object v1, Lbpy;->d:Lbpu;

    .line 34
    invoke-virtual {v1}, Lbpu;->a()Lbzz;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method

.method public static c(Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lbpy;->d:Lbpu;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lbpu;

    invoke-direct {v0}, Lbpu;-><init>()V

    sput-object v0, Lbpy;->d:Lbpu;

    .line 41
    :cond_0
    const-class v0, Lbjk;

    sget-object v1, Lbpy;->d:Lbpu;

    .line 42
    invoke-virtual {v1}, Lbpu;->c()Lbjk;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method
