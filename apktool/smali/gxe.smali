.class public final Lgxe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lgxd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgwv;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgxe;->a:Ljava/lang/String;

    .line 12
    const-class v0, Lgws;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgxe;->b:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lgxe;->c:Lgxd;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lgxd;

    invoke-direct {v0}, Lgxd;-><init>()V

    sput-object v0, Lgxe;->c:Lgxd;

    .line 21
    :cond_0
    const-class v0, Lgwv;

    .line 1015
    new-instance v1, Lgxc;

    invoke-direct {v1}, Lgxc;-><init>()V

    .line 21
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 23
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lgxe;->c:Lgxd;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lgxd;

    invoke-direct {v0}, Lgxd;-><init>()V

    sput-object v0, Lgxe;->c:Lgxd;

    .line 29
    :cond_0
    const-class v0, Lgws;

    .line 1020
    new-instance v1, Lgxa;

    invoke-direct {v1}, Lgxa;-><init>()V

    .line 29
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 31
    return-void
.end method
