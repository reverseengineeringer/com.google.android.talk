.class public final Lhab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lhaa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgzu;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhab;->a:Ljava/lang/String;

    .line 12
    const-class v0, Lgzw;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhab;->b:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lhab;->c:Lhaa;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lhaa;

    invoke-direct {v0}, Lhaa;-><init>()V

    sput-object v0, Lhab;->c:Lhaa;

    .line 21
    :cond_0
    const-class v0, Lgzu;

    .line 1016
    new-instance v1, Lgzy;

    invoke-direct {v1}, Lgzy;-><init>()V

    .line 21
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 23
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lhab;->c:Lhaa;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lhaa;

    invoke-direct {v0}, Lhaa;-><init>()V

    sput-object v0, Lhab;->c:Lhaa;

    .line 29
    :cond_0
    const-class v0, Lgzw;

    .line 1021
    new-instance v1, Lgzz;

    invoke-direct {v1}, Lgzz;-><init>()V

    .line 29
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 31
    return-void
.end method
