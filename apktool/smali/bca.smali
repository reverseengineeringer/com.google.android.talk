.class public final Lbca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lbbz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lbbw;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbca;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lbbx;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbca;->b:Ljava/lang/String;

    .line 17
    const-class v0, Lbby;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbca;->c:Ljava/lang/String;

    .line 19
    const-class v0, Lbwl;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbca;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lbca;->e:Lbbz;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lbbz;

    invoke-direct {v0}, Lbbz;-><init>()V

    sput-object v0, Lbca;->e:Lbbz;

    .line 28
    :cond_0
    const-class v0, Lbbw;

    sget-object v1, Lbca;->e:Lbbz;

    .line 29
    invoke-virtual {v1, p0}, Lbbz;->b(Landroid/content/Context;)Lbbw;

    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 30
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lbca;->e:Lbbz;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lbbz;

    invoke-direct {v0}, Lbbz;-><init>()V

    sput-object v0, Lbca;->e:Lbbz;

    .line 52
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lbca;->e:Lbbz;

    .line 53
    invoke-virtual {v1}, Lbbz;->a()[Lbwl;

    move-result-object v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 54
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lbca;->e:Lbbz;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lbbz;

    invoke-direct {v0}, Lbbz;-><init>()V

    sput-object v0, Lbca;->e:Lbbz;

    .line 36
    :cond_0
    const-class v0, Lbbx;

    sget-object v1, Lbca;->e:Lbbz;

    .line 37
    invoke-virtual {v1, p0}, Lbbz;->a(Landroid/content/Context;)Lbbx;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 38
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lbca;->e:Lbbz;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lbbz;

    invoke-direct {v0}, Lbbz;-><init>()V

    sput-object v0, Lbca;->e:Lbbz;

    .line 44
    :cond_0
    const-class v0, Lbby;

    sget-object v1, Lbca;->e:Lbbz;

    .line 45
    invoke-virtual {v1, p0}, Lbbz;->c(Landroid/content/Context;)Lbby;

    move-result-object v1

    .line 44
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 46
    return-void
.end method
