.class public final Ldub;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Ldua;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Ldyw;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldub;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lebb;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldub;->b:Ljava/lang/String;

    .line 16
    const-class v0, Ldty;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldub;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ldub;->d:Ldua;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ldua;

    invoke-direct {v0}, Ldua;-><init>()V

    sput-object v0, Ldub;->d:Ldua;

    .line 41
    :cond_0
    const-class v0, Ldty;

    .line 2018
    new-instance v1, Ldud;

    invoke-direct {v1, p0}, Ldud;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Ldub;->d:Ldua;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ldua;

    invoke-direct {v0}, Ldua;-><init>()V

    sput-object v0, Ldub;->d:Ldua;

    .line 25
    :cond_0
    const-class v0, Ldyw;

    .line 1023
    const/4 v1, 0x1

    new-array v1, v1, [Ldtz;

    const/4 v2, 0x0

    new-instance v3, Ldtz;

    invoke-direct {v3}, Ldtz;-><init>()V

    aput-object v3, v1, v2

    .line 25
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 27
    return-void
.end method

.method public static b(Lilh;)V
    .locals 4

    .prologue
    .line 30
    sget-object v0, Ldub;->d:Ldua;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ldua;

    invoke-direct {v0}, Ldua;-><init>()V

    sput-object v0, Ldub;->d:Ldua;

    .line 33
    :cond_0
    const-class v0, Lebb;

    .line 1028
    const/4 v1, 0x1

    new-array v1, v1, [Lebb;

    const/4 v2, 0x0

    new-instance v3, Lduc;

    invoke-direct {v3}, Lduc;-><init>()V

    aput-object v3, v1, v2

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method
