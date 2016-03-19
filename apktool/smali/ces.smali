.class public final Lces;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lcer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lceq;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lces;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lbwl;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lces;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lces;->c:Lcer;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcer;

    invoke-direct {v0}, Lcer;-><init>()V

    sput-object v0, Lces;->c:Lcer;

    .line 22
    :cond_0
    const-class v0, Lceq;

    sget-object v1, Lces;->c:Lcer;

    .line 23
    invoke-virtual {v1, p0}, Lcer;->a(Landroid/content/Context;)Lceq;

    move-result-object v1

    .line 22
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method

.method public static a(Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lces;->c:Lcer;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcer;

    invoke-direct {v0}, Lcer;-><init>()V

    sput-object v0, Lces;->c:Lcer;

    .line 30
    :cond_0
    const-class v0, Lbwl;

    sget-object v1, Lces;->c:Lcer;

    .line 31
    invoke-virtual {v1}, Lcer;->a()[Lbwl;

    move-result-object v1

    .line 30
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method
