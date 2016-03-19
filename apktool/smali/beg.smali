.class public final Lbeg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lbef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lbeh;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbeg;->a:Ljava/lang/String;

    .line 14
    const-class v0, Liaw;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbeg;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lbff;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbeg;->c:Ljava/lang/String;

    .line 18
    const-class v0, Lhqf;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbeg;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lbeg;->e:Lbef;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lbef;

    invoke-direct {v0}, Lbef;-><init>()V

    sput-object v0, Lbeg;->e:Lbef;

    .line 43
    :cond_0
    const-class v0, Lbff;

    .line 3019
    new-instance v1, Lbff;

    invoke-direct {v1, p0}, Lbff;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 45
    return-void
.end method

.method public static a(Lilh;)V
    .locals 4

    .prologue
    .line 24
    sget-object v0, Lbeg;->e:Lbef;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lbef;

    invoke-direct {v0}, Lbef;-><init>()V

    sput-object v0, Lbeg;->e:Lbef;

    .line 27
    :cond_0
    const-class v0, Lbeh;

    .line 1034
    const/4 v1, 0x1

    new-array v1, v1, [Lbeh;

    const/4 v2, 0x0

    new-instance v3, Lbie;

    invoke-direct {v3}, Lbie;-><init>()V

    aput-object v3, v1, v2

    .line 27
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 29
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 48
    sget-object v0, Lbeg;->e:Lbef;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lbef;

    invoke-direct {v0}, Lbef;-><init>()V

    sput-object v0, Lbeg;->e:Lbef;

    .line 51
    :cond_0
    const-class v1, Lhqf;

    .line 3024
    const/4 v0, 0x1

    new-array v2, v0, [Lhqf;

    const/4 v3, 0x0

    const-class v0, Lbff;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhqf;

    aput-object v0, v2, v3

    .line 51
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 53
    return-void
.end method

.method public static b(Lilh;)V
    .locals 4

    .prologue
    .line 32
    sget-object v0, Lbeg;->e:Lbef;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lbef;

    invoke-direct {v0}, Lbef;-><init>()V

    sput-object v0, Lbeg;->e:Lbef;

    .line 35
    :cond_0
    const-class v1, Liaw;

    .line 2029
    const/4 v0, 0x1

    new-array v2, v0, [Liaw;

    const/4 v3, 0x0

    const-class v0, Lbff;

    invoke-virtual {p0, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liaw;

    aput-object v0, v2, v3

    .line 35
    invoke-virtual {p0, v1, v2}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 37
    return-void
.end method
