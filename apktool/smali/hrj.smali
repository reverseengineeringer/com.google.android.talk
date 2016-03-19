.class public final Lhrj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Limw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Limw;

    const-string v1, ".login.accountsource"

    invoke-direct {v0, v1}, Limw;-><init>(Ljava/lang/String;)V

    sput-object v0, Lhrj;->a:Limw;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lhpz;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lhqq;

    invoke-direct {v0, p0}, Lhqq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static a(Lhpz;)Lhqp;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lhqp;

    invoke-direct {v0, p0}, Lhqp;-><init>(Lhpz;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lgwk;)[Lhqk;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 41
    new-array v0, v3, [Lhqk;

    new-instance v1, Lhro;

    invoke-direct {v1, p1}, Lhro;-><init>(Lgwk;)V

    aput-object v1, v0, v2

    .line 43
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v3, [Lhqk;

    new-instance v1, Lhrp;

    invoke-direct {v1, p0}, Lhrp;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public static a()[Lims;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lims;->a:Limw;

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Lims;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lhql;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lhrl;

    invoke-direct {v0, p0}, Lhrl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b()[Lhwi;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lhwi;->a:Limw;

    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Lhwi;

    return-object v0
.end method
