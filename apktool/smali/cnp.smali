.class public final Lcnp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lcno;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcns;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcnp;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lbwl;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcnp;->b:Ljava/lang/String;

    .line 15
    const-class v0, Lcnn;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcnp;->c:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcnp;->d:Lcno;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcno;

    invoke-direct {v0}, Lcno;-><init>()V

    sput-object v0, Lcnp;->d:Lcno;

    .line 40
    :cond_0
    const-class v0, Lcnn;

    sget-object v1, Lcnp;->d:Lcno;

    .line 41
    invoke-virtual {v1, p0}, Lcno;->a(Landroid/content/Context;)Lcnn;

    move-result-object v1

    .line 40
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 42
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcnp;->d:Lcno;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcno;

    invoke-direct {v0}, Lcno;-><init>()V

    sput-object v0, Lcnp;->d:Lcno;

    .line 24
    :cond_0
    const-class v0, Lcns;

    .line 1034
    new-instance v1, Lcns;

    invoke-direct {v1}, Lcns;-><init>()V

    .line 24
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 26
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcnp;->d:Lcno;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcno;

    invoke-direct {v0}, Lcno;-><init>()V

    sput-object v0, Lcnp;->d:Lcno;

    .line 32
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lcnp;->d:Lcno;

    .line 33
    invoke-virtual {v1}, Lcno;->a()[Lbwl;

    move-result-object v1

    .line 32
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 34
    return-void
.end method
