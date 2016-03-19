.class public final Layv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Layu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Layo;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layv;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lebb;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layv;->b:Ljava/lang/String;

    .line 15
    const-class v0, Layx;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Layv;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 29
    sget-object v0, Layv;->d:Layu;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Layu;

    invoke-direct {v0}, Layu;-><init>()V

    sput-object v0, Layv;->d:Layu;

    .line 32
    :cond_0
    const-class v0, Lebb;

    .line 1027
    const/4 v1, 0x1

    new-array v1, v1, [Lebb;

    const/4 v2, 0x0

    new-instance v3, Layw;

    invoke-direct {v3, p0}, Layw;-><init>(Landroid/content/Context;)V

    aput-object v3, v1, v2

    .line 32
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 34
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Layv;->d:Layu;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Layu;

    invoke-direct {v0}, Layu;-><init>()V

    sput-object v0, Layv;->d:Layu;

    .line 24
    :cond_0
    const-class v0, Layo;

    .line 1017
    new-instance v1, Layp;

    invoke-direct {v1}, Layp;-><init>()V

    .line 24
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 26
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Layv;->d:Layu;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Layu;

    invoke-direct {v0}, Layu;-><init>()V

    sput-object v0, Layv;->d:Layu;

    .line 40
    :cond_0
    const-class v0, Layx;

    .line 2022
    new-instance v1, Layx;

    invoke-direct {v1}, Layx;-><init>()V

    .line 40
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 42
    return-void
.end method
