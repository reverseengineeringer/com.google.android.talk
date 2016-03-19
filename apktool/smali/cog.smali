.class public final Lcog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lcof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcob;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcog;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lcoa;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcog;->b:Ljava/lang/String;

    .line 17
    const-class v0, Ldjo;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcog;->c:Ljava/lang/String;

    .line 19
    const-class v0, Lcve;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcog;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Lcog;->e:Lcof;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcof;

    invoke-direct {v0}, Lcof;-><init>()V

    sput-object v0, Lcog;->e:Lcof;

    .line 44
    :cond_0
    const-class v1, Ldjo;

    .line 2027
    const/4 v0, 0x1

    new-array v2, v0, [Ldjo;

    const/4 v3, 0x0

    const-class v0, Lcob;

    .line 2028
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjo;

    aput-object v0, v2, v3

    .line 44
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 46
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcog;->e:Lcof;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcof;

    invoke-direct {v0}, Lcof;-><init>()V

    sput-object v0, Lcog;->e:Lcof;

    .line 28
    :cond_0
    const-class v0, Lcob;

    .line 1034
    new-instance v1, Lcod;

    invoke-direct {v1}, Lcod;-><init>()V

    .line 28
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 30
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcog;->e:Lcof;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcof;

    invoke-direct {v0}, Lcof;-><init>()V

    sput-object v0, Lcog;->e:Lcof;

    .line 36
    :cond_0
    const-class v0, Lcoa;

    .line 1039
    new-instance v1, Lcoh;

    invoke-direct {v1}, Lcoh;-><init>()V

    .line 36
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 38
    return-void
.end method

.method public static c(Lilh;)V
    .locals 4

    .prologue
    .line 49
    sget-object v0, Lcog;->e:Lcof;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcof;

    invoke-direct {v0}, Lcof;-><init>()V

    sput-object v0, Lcog;->e:Lcof;

    .line 52
    :cond_0
    const-class v0, Lcve;

    .line 3020
    const/4 v1, 0x1

    new-array v1, v1, [Lcve;

    const/4 v2, 0x0

    new-instance v3, Lcoc;

    invoke-direct {v3}, Lcoc;-><init>()V

    aput-object v3, v1, v2

    .line 52
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 54
    return-void
.end method
