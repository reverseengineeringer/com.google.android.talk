.class public final Ldun;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lduk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcyj;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldun;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Ldun;->b:Lduk;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lduk;

    invoke-direct {v0}, Lduk;-><init>()V

    sput-object v0, Ldun;->b:Lduk;

    .line 19
    :cond_0
    const-class v0, Lcyj;

    sget-object v1, Ldun;->b:Lduk;

    .line 20
    invoke-virtual {v1, p0}, Lduk;->a(Landroid/content/Context;)[Lcyj;

    move-result-object v1

    .line 19
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
