.class public final Ldmg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Ldmf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Ldmb;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldmg;->a:Ljava/lang/String;

    .line 14
    const-class v0, Ldlt;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldmg;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lbwl;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldmg;->c:Ljava/lang/String;

    .line 18
    const-class v0, Ldmj;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldmg;->d:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Ldmg;->e:Ldmf;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ldmf;

    invoke-direct {v0}, Ldmf;-><init>()V

    sput-object v0, Ldmg;->e:Ldmf;

    .line 27
    :cond_0
    const-class v0, Ldmb;

    sget-object v1, Ldmg;->e:Ldmf;

    .line 28
    invoke-virtual {v1, p0}, Ldmf;->a(Landroid/content/Context;)Ldmb;

    move-result-object v1

    .line 27
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 29
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Ldmg;->e:Ldmf;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ldmf;

    invoke-direct {v0}, Ldmf;-><init>()V

    sput-object v0, Ldmg;->e:Ldmf;

    .line 43
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Ldmg;->e:Ldmf;

    .line 44
    invoke-virtual {v1}, Ldmf;->a()[Lbwl;

    move-result-object v1

    .line 43
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 45
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Ldmg;->e:Ldmf;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ldmf;

    invoke-direct {v0}, Ldmf;-><init>()V

    sput-object v0, Ldmg;->e:Ldmf;

    .line 35
    :cond_0
    const-class v0, Ldlt;

    sget-object v1, Ldmg;->e:Ldmf;

    .line 36
    invoke-virtual {v1, p0}, Ldmf;->b(Landroid/content/Context;)Ldlt;

    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 37
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 48
    sget-object v0, Ldmg;->e:Ldmf;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ldmf;

    invoke-direct {v0}, Ldmf;-><init>()V

    sput-object v0, Ldmg;->e:Ldmf;

    .line 51
    :cond_0
    const-class v0, Ldmj;

    sget-object v1, Ldmg;->e:Ldmf;

    .line 52
    invoke-virtual {v1}, Ldmf;->b()Ldmj;

    move-result-object v1

    .line 51
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 53
    return-void
.end method
