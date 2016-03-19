.class public final Ldkh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Ldkg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Ldkb;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldkh;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lbwl;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldkh;->b:Ljava/lang/String;

    .line 16
    const-class v0, Ldjy;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldkh;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Ldkh;->d:Ldkg;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ldkg;

    invoke-direct {v0}, Ldkg;-><init>()V

    sput-object v0, Ldkh;->d:Ldkg;

    .line 25
    :cond_0
    const-class v0, Ldkb;

    sget-object v1, Ldkh;->d:Ldkg;

    .line 26
    invoke-virtual {v1, p0}, Ldkg;->a(Landroid/content/Context;)Ldkb;

    move-result-object v1

    .line 25
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 27
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Ldkh;->d:Ldkg;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ldkg;

    invoke-direct {v0}, Ldkg;-><init>()V

    sput-object v0, Ldkh;->d:Ldkg;

    .line 33
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Ldkh;->d:Ldkg;

    .line 34
    invoke-virtual {v1}, Ldkg;->a()[Lbwl;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Ldkh;->d:Ldkg;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ldkg;

    invoke-direct {v0}, Ldkg;-><init>()V

    sput-object v0, Ldkh;->d:Ldkg;

    .line 41
    :cond_0
    const-class v0, Ldjy;

    sget-object v1, Ldkh;->d:Ldkg;

    .line 42
    invoke-virtual {v1, p0}, Ldkg;->b(Landroid/content/Context;)Ldjy;

    move-result-object v1

    .line 41
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method
