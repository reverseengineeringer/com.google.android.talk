.class public final Lazc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lazb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Layz;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lazc;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lazc;->b:Lazb;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lazb;

    invoke-direct {v0}, Lazb;-><init>()V

    sput-object v0, Lazc;->b:Lazb;

    .line 19
    :cond_0
    const-class v0, Layz;

    .line 1016
    new-instance v1, Laza;

    invoke-direct {v1, p0}, Laza;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
