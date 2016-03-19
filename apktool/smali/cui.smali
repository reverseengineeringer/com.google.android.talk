.class public final Lcui;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lcug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lctn;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcui;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lctm;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcui;->b:Ljava/lang/String;

    .line 17
    const-class v0, Lctq;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcui;->c:Ljava/lang/String;

    .line 19
    const-class v0, Lbcr;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcui;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcui;->e:Lcug;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcug;

    invoke-direct {v0}, Lcug;-><init>()V

    sput-object v0, Lcui;->e:Lcug;

    .line 28
    :cond_0
    const-class v0, Lctn;

    .line 1027
    new-instance v1, Lcua;

    invoke-direct {v1, p0}, Lcua;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 30
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcui;->e:Lcug;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcug;

    invoke-direct {v0}, Lcug;-><init>()V

    sput-object v0, Lcui;->e:Lcug;

    .line 44
    :cond_0
    const-class v0, Lctq;

    .line 2022
    new-instance v1, Lcub;

    invoke-direct {v1}, Lcub;-><init>()V

    .line 44
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 46
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcui;->e:Lcug;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcug;

    invoke-direct {v0}, Lcug;-><init>()V

    sput-object v0, Lcui;->e:Lcug;

    .line 36
    :cond_0
    const-class v0, Lctm;

    sget-object v1, Lcui;->e:Lcug;

    .line 37
    invoke-virtual {v1, p0}, Lcug;->a(Landroid/content/Context;)Lctm;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 38
    return-void
.end method

.method public static b(Lilh;)V
    .locals 5

    .prologue
    .line 49
    sget-object v0, Lcui;->e:Lcug;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcug;

    invoke-direct {v0}, Lcug;-><init>()V

    sput-object v0, Lcui;->e:Lcug;

    .line 52
    :cond_0
    const-class v0, Lbcr;

    .line 2032
    const/4 v1, 0x1

    new-array v1, v1, [Lbcr;

    const/4 v2, 0x0

    new-instance v3, Lbcr;

    const-class v4, Lcto;

    invoke-direct {v3, v4}, Lbcr;-><init>(Ljava/lang/Class;)V

    aput-object v3, v1, v2

    .line 52
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 54
    return-void
.end method
