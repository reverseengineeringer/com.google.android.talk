.class public final Lihz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lihy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lihg;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lihz;->a:Ljava/lang/String;

    .line 12
    const-class v0, Lihh;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lihz;->b:Ljava/lang/String;

    .line 14
    const-class v0, Lims;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lihz;->c:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lihz;->d:Lihy;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lihy;

    invoke-direct {v0}, Lihy;-><init>()V

    sput-object v0, Lihz;->d:Lihy;

    .line 23
    :cond_0
    const-class v0, Lihg;

    .line 1023
    new-instance v1, Lihd;

    invoke-direct {v1, p0}, Lihd;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 25
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lihz;->d:Lihy;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lihy;

    invoke-direct {v0}, Lihy;-><init>()V

    sput-object v0, Lihz;->d:Lihy;

    .line 39
    :cond_0
    const-class v0, Lims;

    .line 2028
    sget-object v1, Lims;->a:Limw;

    .line 2031
    const/4 v1, 0x0

    new-array v1, v1, [Lims;

    .line 39
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 41
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 28
    sget-object v0, Lihz;->d:Lihy;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lihy;

    invoke-direct {v0}, Lihy;-><init>()V

    sput-object v0, Lihz;->d:Lihy;

    .line 31
    :cond_0
    const-class v1, Lihh;

    .line 1037
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1039
    sget-object v0, Lihe;->a:Limw;

    .line 1043
    const-class v0, Lifh;

    invoke-static {p0, v0}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lifh;

    .line 1044
    if-eqz v0, :cond_1

    .line 1045
    new-instance v3, Lihu;

    invoke-direct {v3, v0}, Lihu;-><init>(Lifh;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1047
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lihh;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lihh;

    .line 31
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 33
    return-void
.end method
