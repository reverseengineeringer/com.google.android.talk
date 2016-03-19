.class public final Lhrk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field private static g:Lhrj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lhqp;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhrk;->a:Ljava/lang/String;

    .line 17
    const-class v0, Lhqk;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhrk;->b:Ljava/lang/String;

    .line 19
    const-class v0, Lhpz;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhrk;->c:Ljava/lang/String;

    .line 21
    const-class v0, Lhql;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhrk;->d:Ljava/lang/String;

    .line 23
    const-class v0, Lhwi;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhrk;->e:Ljava/lang/String;

    .line 25
    const-class v0, Lims;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhrk;->f:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lhrk;->g:Lhrj;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lhrj;

    invoke-direct {v0}, Lhrj;-><init>()V

    sput-object v0, Lhrk;->g:Lhrj;

    .line 43
    :cond_0
    const-class v1, Lhqk;

    const-class v0, Lgwk;

    .line 45
    invoke-virtual {p1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwk;

    .line 44
    invoke-static {p0, v0}, Lhrj;->a(Landroid/content/Context;Lgwk;)[Lhqk;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 46
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lhrk;->g:Lhrj;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lhrj;

    invoke-direct {v0}, Lhrj;-><init>()V

    sput-object v0, Lhrk;->g:Lhrj;

    .line 34
    :cond_0
    const-class v1, Lhqp;

    const-class v0, Lhpz;

    .line 36
    invoke-virtual {p0, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpz;

    .line 35
    invoke-static {v0}, Lhrj;->a(Lhpz;)Lhqp;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 37
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lhrk;->g:Lhrj;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lhrj;

    invoke-direct {v0}, Lhrj;-><init>()V

    sput-object v0, Lhrk;->g:Lhrj;

    .line 52
    :cond_0
    const-class v0, Lhpz;

    .line 53
    invoke-static {p0}, Lhrj;->a(Landroid/content/Context;)Lhpz;

    move-result-object v1

    .line 52
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 54
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lhrk;->g:Lhrj;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lhrj;

    invoke-direct {v0}, Lhrj;-><init>()V

    sput-object v0, Lhrk;->g:Lhrj;

    .line 68
    :cond_0
    const-class v0, Lhwi;

    const-class v1, Lhqp;

    .line 70
    invoke-virtual {p0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lhrj;->b()[Lhwi;

    move-result-object v1

    .line 68
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 71
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lhrk;->g:Lhrj;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lhrj;

    invoke-direct {v0}, Lhrj;-><init>()V

    sput-object v0, Lhrk;->g:Lhrj;

    .line 60
    :cond_0
    const-class v0, Lhql;

    .line 61
    invoke-static {p0}, Lhrj;->b(Landroid/content/Context;)Lhql;

    move-result-object v1

    .line 60
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 62
    return-void
.end method

.method public static c(Lilh;)V
    .locals 2

    .prologue
    .line 74
    sget-object v0, Lhrk;->g:Lhrj;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lhrj;

    invoke-direct {v0}, Lhrj;-><init>()V

    sput-object v0, Lhrk;->g:Lhrj;

    .line 77
    :cond_0
    const-class v0, Lims;

    const-class v1, Lhqp;

    .line 79
    invoke-virtual {p0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    invoke-static {}, Lhrj;->a()[Lims;

    move-result-object v1

    .line 77
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 80
    return-void
.end method
