.class public final Lcmd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field private static e:Lcma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lclp;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcmd;->a:Ljava/lang/String;

    .line 15
    const-class v0, Lcjp;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcmd;->b:Ljava/lang/String;

    .line 17
    const-class v0, Lbwl;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcmd;->c:Ljava/lang/String;

    .line 19
    const-class v0, Lcln;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcmd;->d:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcmd;->e:Lcma;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcma;

    invoke-direct {v0}, Lcma;-><init>()V

    sput-object v0, Lcmd;->e:Lcma;

    .line 28
    :cond_0
    const-class v0, Lclp;

    sget-object v1, Lcmd;->e:Lcma;

    .line 29
    invoke-virtual {v1, p0}, Lcma;->a(Landroid/content/Context;)Lclp;

    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 30
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcmd;->e:Lcma;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcma;

    invoke-direct {v0}, Lcma;-><init>()V

    sput-object v0, Lcmd;->e:Lcma;

    .line 44
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lcmd;->e:Lcma;

    .line 45
    invoke-virtual {v1}, Lcma;->a()[Lbwl;

    move-result-object v1

    .line 44
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 46
    return-void
.end method

.method public static b(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcmd;->e:Lcma;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcma;

    invoke-direct {v0}, Lcma;-><init>()V

    sput-object v0, Lcmd;->e:Lcma;

    .line 36
    :cond_0
    const-class v0, Lcjp;

    sget-object v1, Lcmd;->e:Lcma;

    .line 37
    invoke-virtual {v1, p0}, Lcma;->c(Landroid/content/Context;)[Lcjp;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 38
    return-void
.end method

.method public static c(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcmd;->e:Lcma;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcma;

    invoke-direct {v0}, Lcma;-><init>()V

    sput-object v0, Lcmd;->e:Lcma;

    .line 52
    :cond_0
    const-class v0, Lcln;

    sget-object v1, Lcmd;->e:Lcma;

    .line 53
    invoke-virtual {v1, p0}, Lcma;->b(Landroid/content/Context;)Lcln;

    move-result-object v1

    .line 52
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 54
    return-void
.end method
