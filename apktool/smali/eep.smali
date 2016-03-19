.class public final Leep;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Leem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Ldha;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leep;->a:Ljava/lang/String;

    .line 13
    const-class v0, Leec;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leep;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Leep;->c:Leem;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Leem;

    invoke-direct {v0}, Leem;-><init>()V

    sput-object v0, Leep;->c:Leem;

    .line 22
    :cond_0
    const-class v0, Ldha;

    sget-object v1, Leep;->c:Leem;

    .line 23
    invoke-virtual {v1}, Leem;->a()[Ldha;

    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Leep;->c:Leem;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Leem;

    invoke-direct {v0}, Leem;-><init>()V

    sput-object v0, Leep;->c:Leem;

    .line 30
    :cond_0
    const-class v0, Leec;

    .line 1020
    new-instance v1, Leel;

    invoke-direct {v1}, Leel;-><init>()V

    .line 30
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method
