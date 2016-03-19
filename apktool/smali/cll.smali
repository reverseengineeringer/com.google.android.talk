.class public final Lcll;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field private static d:Lclj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lclg;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcll;->a:Ljava/lang/String;

    .line 14
    const-class v0, Lbwl;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcll;->b:Ljava/lang/String;

    .line 16
    const-class v0, Lclh;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcll;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcll;->d:Lclj;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lclj;

    invoke-direct {v0}, Lclj;-><init>()V

    sput-object v0, Lcll;->d:Lclj;

    .line 25
    :cond_0
    const-class v0, Lclg;

    sget-object v1, Lcll;->d:Lclj;

    .line 26
    invoke-virtual {v1, p0}, Lclj;->a(Landroid/content/Context;)Lclg;

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
    sget-object v0, Lcll;->d:Lclj;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lclj;

    invoke-direct {v0}, Lclj;-><init>()V

    sput-object v0, Lcll;->d:Lclj;

    .line 33
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lcll;->d:Lclj;

    .line 34
    invoke-virtual {v1}, Lclj;->a()[Lbwl;

    move-result-object v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 35
    return-void
.end method

.method public static b(Lilh;)V
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcll;->d:Lclj;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lclj;

    invoke-direct {v0}, Lclj;-><init>()V

    sput-object v0, Lcll;->d:Lclj;

    .line 41
    :cond_0
    const-class v0, Lclh;

    sget-object v1, Lcll;->d:Lclj;

    .line 42
    invoke-virtual {v1}, Lclj;->b()Lclh;

    move-result-object v1

    .line 41
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 43
    return-void
.end method
